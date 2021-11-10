import React from 'react';
import {Text} from 'react-native';
import {Center} from 'native-base';

const NotificationsScreen = ({navigation, route}) => {
  return (
    <Center safeArea>
      <Text style={{textAlign: 'center', margin: 15}}>
        This is Notifications
      </Text>
    </Center>
  );
};

export default NotificationsScreen;
