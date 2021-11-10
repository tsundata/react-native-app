import React from 'react';
import {Group} from '../../models/message';
import {Box, Button, Center, FlatList, HStack, Stack, Text} from 'native-base';

const HomeScreen = ({navigation}) => {
  const initialGroups = [
    Group.data1(),
    Group.data2(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
  ];

  const onItemPress = () => {
    navigation.push('Chat');
  };

  return (
    <Center safeArea>
      <FlatList
        data={initialGroups}
        renderItem={({item}) => (
          <Stack space={3} mb={5} alignItems="center">
            <HStack alignItems="center">
              <Text mr={10}>{item.text}</Text>
              <Button onPress={onItemPress}>chat</Button>
            </HStack>
          </Stack>
        )}
      />
    </Center>
  );
};

export default HomeScreen;
