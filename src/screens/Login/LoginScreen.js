import React from 'react';
import {SafeAreaView, Text, TouchableWithoutFeedback, View} from 'react-native';
import {useRootStore} from '../../stores/root';
import {Box, Button, Center, Input} from 'native-base';

const LoginScreen = ({navigation}) => {
  const {authStore} = useRootStore();
  const [username, setUsername] = React.useState('');
  const [password, setPassword] = React.useState('');
  const [passwordVisible, setPasswordVisible] = React.useState(false);

  const handleChangeUsername = (event: any) => setUsername(event.target.value);
  const handleChangePassword = (event: any) => setPassword(event.target.value);

  return (
    <Center safeArea>
      <View>
        <View>
          <Text category="h1" status="control">
            Login
          </Text>
          <Text category="s1" status="control">
            Sign in to your account
          </Text>
        </View>
        <Box>
          <Input
            placeholder="username"
            value={username}
            onChange={handleChangeUsername}
          />
          <Input
            placeholder="password"
            value={password}
            onChange={handleChangePassword}
          />
        </Box>
        <Button
          onPress={() => {
            //navigation.navigate('Home');
            console.log(username);
            console.log(password);
            authStore.login(username, password);
          }}>
          Login
        </Button>
      </View>
    </Center>
  );
};

export default LoginScreen;
