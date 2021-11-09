import React from 'react';
import {Text} from 'react-native';
import {Layout} from '@ui-kitten/components';

const NotificationsScreen = ({navigation, route}) => {
  return (
    <Layout style={{flex: 1}}>
      <Text style={{textAlign: 'center', margin: 15}}>
        This is Notifications
      </Text>
    </Layout>
  );
};

export default NotificationsScreen;
