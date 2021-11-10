import React from 'react';
import {Text} from 'react-native';
import {useRootStore} from '../../stores/root';
import {Button, Center} from 'native-base';

const SettingsScreen = ({navigation, route}) => {
  const {authStore} = useRootStore();

  return (
    <Center safeArea>
      <Text style={{textAlign: 'center', margin: 15}}>This is Settings</Text>
      <Button
        onPress={() => {
          authStore.logout();
        }}>
        Logout
      </Button>
    </Center>
  );
};

export default SettingsScreen;
