import React from 'react';
import {Text, useWindowDimensions} from 'react-native';
import {
  Avatar,
  Box,
  Center,
  Divider,
  FlatList,
  HStack,
  VStack,
} from 'native-base';
import {Group} from '../../models/message';
import {TouchableOpacity} from 'react-native-gesture-handler';

const NotificationsScreen = ({navigation, route}) => {
  const layout = useWindowDimensions();
  const initialGroups = [Group.data1(), Group.data2(), Group.data3()];

  const onItemPress = () => {};

  const ListItem = props => (
    <TouchableOpacity onPress={onItemPress}>
      <Box>
        <HStack
          width={layout.width}
          height={75}
          flex={1}
          alignItems="center"
          justifyContent="space-between">
          <Avatar
            bg="green.500"
            source={{
              uri: props.item.profile.avatar,
            }}
            ml={5}
          />
          <VStack flex={1} ml={5} mr={5}>
            <Text style={{fontSize: 13}}>
              [Assigned to you] - #1 has been assigned to you
            </Text>
            <Text style={{color: 'grey', fontSize: 11}}>23 days ago</Text>
          </VStack>
        </HStack>
        <Divider />
      </Box>
    </TouchableOpacity>
  );

  return (
    <Center>
      <FlatList
        data={initialGroups}
        renderItem={props => <ListItem {...props} />}
      />
      <Divider mb={5} />
      <Text>All notifications loaded</Text>
    </Center>
  );
};

export default NotificationsScreen;
