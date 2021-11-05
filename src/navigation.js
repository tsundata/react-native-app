import React, {Fragment} from 'react';
import {NavigationContainer} from '@react-navigation/native';
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import {
  BottomNavigation,
  BottomNavigationTab,
  Icon,
} from '@ui-kitten/components';
import HomeScreen from './screens/Home/HomeScreen';
import SettingsScreen from './screens/Settings/SettingsScreen';
import NotificationsScreen from './screens/Notifications/NotificationsScreen';
import {MyWeb} from './screens/web';
import {createStackNavigator} from '@react-navigation/stack';
import ChatScreen from './screens/Chat/ChatScreen';
import {navigationRef} from './helpers/NavigationHelper';
import {observer} from 'mobx-react';
import {useRootStore} from './stores/root';
import LoginScreen from './screens/Login/LoginScreen';

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();

const GroupIcon = style => <Icon {...style} name="message-circle" />;
const NotificationIcon = style => <Icon {...style} name="bell" />;
const SettingsIcon = style => <Icon {...style} name="settings" />;

const BottomTabBar = ({navigation, state}) => (
  <BottomNavigation
    appearance="noIndicator"
    selectedIndex={state.index}
    onSelect={index => navigation.navigate(state.routeNames[index])}>
    <BottomNavigationTab title="Home" icon={GroupIcon} />
    <BottomNavigationTab title="Notifications" icon={NotificationIcon} />
    <BottomNavigationTab title="Settings" icon={SettingsIcon} />
  </BottomNavigation>
);

const HomeStack = () => (
  <Stack.Navigator initialRouteName="Home" screenOptions={{headerShown: false}}>
    <Stack.Screen name="Index" component={HomeScreen} />
  </Stack.Navigator>
);
const NotificationsStack = () => (
  <Stack.Navigator
    initialRouteName="Notifications"
    screenOptions={{headerShown: false}}>
    <Stack.Screen name="Notifications" component={NotificationsScreen} />
  </Stack.Navigator>
);
const SettingsStack = () => (
  <Stack.Navigator
    initialRouteName="Settings"
    screenOptions={{headerShown: false}}>
    <Stack.Screen name="Settings" component={SettingsScreen} />
  </Stack.Navigator>
);

const TabNavigator = () => (
  <Tab.Navigator tabBar={props => <BottomTabBar {...props} />}>
    <Tab.Screen name="Home" component={HomeStack} />
    <Tab.Screen name="Notifications" component={NotificationsStack} />
    <Tab.Screen name="Settings" component={SettingsStack} />
  </Tab.Navigator>
);

export const AppNavigator = observer(() => {
  const {authStore} = useRootStore();
  return (
    <NavigationContainer
      ref={navigationRef}
      onReady={() => console.log(navigationRef.current.getCurrentRoute().name)}
      onStateChange={async () => {
        // Save the current route name for later comparison
        console.log(navigationRef.current.getCurrentRoute().name);
      }}>
      <Stack.Navigator screenOptions={{headerShown: false}}>
        {authStore.isLogin ? (
          <Fragment>
            <Stack.Screen name="Tab" component={TabNavigator} />
            <Stack.Screen name="Web" component={MyWeb} />
            <Stack.Screen name="Chat" component={ChatScreen} />
          </Fragment>
        ) : (
          <Fragment>
            <Stack.Screen name="Login" component={LoginScreen} />
          </Fragment>
        )}
      </Stack.Navigator>
    </NavigationContainer>
  );
});
