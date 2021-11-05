import React from 'react';
import {SafeAreaView, Text, TouchableWithoutFeedback, View} from 'react-native';
import {Button, Icon, Input, Layout, withStyles} from '@ui-kitten/components';
import {ImageStyle} from 'react-native';
import {IconElement} from '@ui-kitten/components';
import {ReactElement} from 'react';
import styles from './LoginScreen.style';
import {useRootStore} from '../../stores/root';

const PersonIcon = (style: ImageStyle): IconElement => (
  <Icon {...style} name="person-outline" />
);

const LoginScreenComponent = ({eva: {style}, navigation}) => {
  const {authStore} = useRootStore();
  const [username, setUsername] = React.useState('');
  const [password, setPassword] = React.useState('');
  const [passwordVisible, setPasswordVisible] = React.useState(false);

  const onPasswordIconPress = (): void => {
    setPasswordVisible(!passwordVisible);
  };

  const renderPasswordIcon = (props): ReactElement => (
    <TouchableWithoutFeedback onPress={onPasswordIconPress}>
      <Icon {...props} name={passwordVisible ? 'eye-off' : 'eye'} />
    </TouchableWithoutFeedback>
  );

  return (
    <SafeAreaView>
      <View style={style.container}>
        <View style={style.headerContainer}>
          <Text category="h1" status="control">
            Login
          </Text>
          <Text style={style.signInLabel} category="s1" status="control">
            Sign in to your account
          </Text>
        </View>
        <Layout level="1">
          <Input
            placeholder="username"
            accessoryRight={PersonIcon}
            value={username}
            onChangeText={setUsername}
          />
          <Input
            style={style.passwordInput}
            placeholder="password"
            accessoryRight={renderPasswordIcon}
            value={password}
            onChangeText={setPassword}
          />
        </Layout>
        <Button
          style={style.signUpButton}
          onPress={() => {
            //navigation.navigate('Home');
            authStore.login(username, password);
          }}>
          Login
        </Button>
      </View>
    </SafeAreaView>
  );
};

const LoginScreen = withStyles(LoginScreenComponent, styles);
export default LoginScreen;
