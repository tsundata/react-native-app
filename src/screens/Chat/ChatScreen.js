import React, {useState} from 'react';
import {MessageType, Chat, defaultTheme} from '@flyerhq/react-native-chat-ui';
import {launchImageLibrary} from 'react-native-image-picker';
import DocumentPicker from 'react-native-document-picker';
import {open} from 'react-native-file-viewer';
import {useActionSheet} from '@expo/react-native-action-sheet';
import {PreviewData} from '@flyerhq/react-native-link-preview';
import {SafeAreaView, View} from 'react-native';
import {ReactNode} from 'react';

const uuidv4 = () => {
  return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, c => {
    const r = Math.floor(Math.random() * 16);
    const v = c === 'x' ? r : (r % 4) + 8;
    return v.toString(16);
  });
};

const ChatScreen = () => {
  const {showActionSheetWithOptions} = useActionSheet();
  const [messages, setMessages] = useState([]);
  const user = {id: '06c33e8b-e835-4736-80f4-63f44b66666c'};

  const addMessage = (message: MessageType.Any) => {
    setMessages([message, ...messages]);
  };

  const handleAttachmentPress = () => {
    console.log('handleAttachmentPress');
    showActionSheetWithOptions(
      {
        options: ['Photo', 'File', 'Cancel'],
        cancelButtonIndex: 2,
      },
      buttonIndex => {
        switch (buttonIndex) {
          case 0:
            handleImageSelection();
            break;
          case 1:
            handleFileSelection().then();
            break;
        }
      },
    );
  };

  const handleSendPress = (message: MessageType.PartialText) => {
    const textMessage: MessageType.Text = {
      author: user,
      createdAt: Date.now(),
      id: uuidv4(),
      text: message.text,
      type: 'text',
      status: 'delivered',
    };
    addMessage(textMessage);

    const textMessage2: MessageType.Text = {
      author: {
        id: '06c33e8b-e835-4736-80f4-63f44b666661',
        imageUrl: 'https://httpbin.org/image/png',
        firstName: 'John',
        lastName: 'Doe',
        role: 'admin',
      },
      createdAt: Date.now(),
      id: uuidv4(),
      text: message.text,
      type: 'text',
      status: 'delivered',
    };
    addMessage(textMessage2);
  };

  const handleFileSelection = async () => {
    try {
      const response = await DocumentPicker.pickSingle({
        type: [DocumentPicker.types.allFiles],
      });
      const fileMessage: MessageType.File = {
        author: user,
        createdAt: Date.now(),
        id: uuidv4(),
        mimeType: response.type ?? undefined,
        name: response.name,
        size: response.size ?? 0,
        type: 'file',
        uri: response.uri,
      };
      addMessage(fileMessage);
    } catch {}
  };

  const handleImageSelection = () => {
    launchImageLibrary(
      {
        includeBase64: true,
        maxWidth: 1440,
        mediaType: 'photo',
        quality: 0.7,
      },
      ({assets}) => {
        const response = assets?.[0];

        if (response?.base64) {
          const imageMessage: MessageType.Image = {
            author: user,
            createdAt: Date.now(),
            height: response.height,
            id: uuidv4(),
            name: response.fileName ?? response.uri?.split('/').pop() ?? '🖼',
            size: response.fileSize ?? 0,
            type: 'image',
            uri: `data:image/*;base64,${response.base64}`,
            width: response.width,
          };
          addMessage(imageMessage);
        }
      },
    );
  };

  const handleFilePress = async (message: MessageType.File) => {
    try {
      await open(message.uri, {showOpenWithDialog: true});
    } catch {}
  };

  const handlePreviewDataFetched = ({
    message,
    previewData,
  }: {
    message: MessageType.Text,
    previewData: PreviewData,
  }) => {
    setMessages(
      messages.map(m => (m.id === message.id ? {...m, previewData} : m)),
    );
  };

  const renderBubble = ({
    child,
    message,
    nextMessageInGroup,
  }: {
    child: ReactNode,
    message: MessageType.Any,
    nextMessageInGroup: boolean,
  }) => {
    return (
      <View
        style={{
          backgroundColor:
            user.id !== message.author.id ? '#ffffff' : '#1d1c21',
          borderBottomLeftRadius:
            !nextMessageInGroup && user.id !== message.author.id ? 20 : 0,
          borderBottomRightRadius:
            !nextMessageInGroup && user.id === message.author.id ? 20 : 0,
          borderColor: '#1d1c21',
          borderWidth: 1,
          overflow: 'hidden',
        }}>
        {child}
      </View>
    );
  };

  return (
    <SafeAreaView style={{flex: 1}} edges={['top', 'left', 'right']}>
      <Chat
        messages={messages}
        onAttachmentPress={handleAttachmentPress}
        onFilePress={handleFilePress}
        onPreviewDataFetched={handlePreviewDataFetched}
        onSendPress={handleSendPress}
        user={user}
        renderBubble={renderBubble}
        theme={{
          ...defaultTheme,
          colors: {...defaultTheme.colors, primary: '#1d1c21'},
        }}
        showUserAvatars={true}
        showUserNames={true}
        l10nOverride={{inputPlaceholder: 'Here'}}
        locale="en"
      />
    </SafeAreaView>
  );
};

export default ChatScreen;
