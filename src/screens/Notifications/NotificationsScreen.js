import React, {useEffect} from 'react';
import {Text} from 'react-native';
import API from '../../helpers/APIHelper';
import {Layout} from '@ui-kitten/components';

const NotificationsScreen = ({navigation, route}) => {
  useEffect(() => {
    async function fetchData() {
      const response = await API.get('/get');
    }
    fetchData().then();
  });

  return (
    <Layout style={{flex: 1}}>
      <Text style={{textAlign: 'center', margin: 15}}>
        This is Notifications
      </Text>
    </Layout>
  );
};

export default NotificationsScreen;
