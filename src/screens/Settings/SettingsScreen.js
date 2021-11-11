import React from 'react';
import {Text, TouchableOpacity} from 'react-native';
import {useRootStore} from '../../stores/root';
import {
  Avatar,
  Box,
  Center,
  CloseIcon,
  Divider,
  Flex,
  HamburgerIcon,
  HStack,
  InfoOutlineIcon,
  QuestionIcon,
  ThreeDotsIcon,
} from 'native-base';
import styles from './SettingsScreen.style';

const SettingsScreen = ({navigation, route}) => {
  const {authStore} = useRootStore();

  return (
    <Box>
      <HStack alignItems="center">
        <Avatar
          source={{
            uri: 'https://demo.com/demo.jpg',
          }}
          margin={3}>
          a
          <Avatar.Badge bg="green.500" />
        </Avatar>
        <Box>
          <Text style={{fontSize: 13}}>Admin</Text>
          <Text style={{fontSize: 11}}>admin@tsundata.com</Text>
        </Box>
      </HStack>
      <Divider />

      <TouchableOpacity
        onPress={() => {
          navigation.navigate('NotificationPreferences');
        }}>
        <Flex style={styles.settingItem}>
          <Box ml={5}>Notification Preferences</Box>
          <InfoOutlineIcon mr={5} size={5} />
        </Flex>
      </TouchableOpacity>
      <Divider />

      <TouchableOpacity
        onPress={() => {
          navigation.navigate('ChangeLanguage');
        }}>
        <Flex style={styles.settingItem}>
          <Box ml={5}>Change language</Box>
          <HamburgerIcon mr={5} size={5} />
        </Flex>
      </TouchableOpacity>
      <Divider />

      <TouchableOpacity>
        <Flex style={styles.settingItem}>
          <Box ml={5}>Help Docs</Box>
          <QuestionIcon mr={5} size={5} />
        </Flex>
      </TouchableOpacity>
      <Divider />

      <TouchableOpacity>
        <Flex style={styles.settingItem}>
          <Box ml={5}>Chat with Us</Box>
          <ThreeDotsIcon mr={5} size={5} />
        </Flex>
      </TouchableOpacity>
      <Divider />

      <TouchableOpacity
        onPress={() => {
          authStore.logout();
        }}>
        <Flex style={styles.settingItem}>
          <Box ml={5}>Logout</Box>
          <CloseIcon mr={5} size={5} />
        </Flex>
      </TouchableOpacity>
      <Divider />

      <Center mt={10}>
        <Text style={styles.logo}>Flow</Text>
      </Center>
      <Center>v1.0</Center>
    </Box>
  );
};

export default SettingsScreen;
