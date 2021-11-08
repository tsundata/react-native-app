import React from 'react';
import {Text} from 'react-native';
import {useRootStore} from '../../stores/root';
import {Button} from '@ui-kitten/components';

const SettingsScreen = ({navigation, route}) => {
  const {authStore} = useRootStore();

  return (
    <>
      <Text style={{textAlign: 'center', margin: 15}}>This is Settings</Text>
      <Button
        onPress={() => {
          authStore.logout();
        }}>
        Logout
      </Button>
    </>
  );
};

export default SettingsScreen;
