import React from 'react';
import {Group} from '../../models/message';
import {Box, Center, FlatList} from 'native-base';

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
        renderItem={({item}) => <Box>{item.text}</Box>}
      />
    </Center>
  );
};

export default HomeScreen;
