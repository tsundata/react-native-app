import React, {useRef, Fragment} from 'react';
import {
  NavigationContainer,
  useNavigationContainerRef,
} from '@react-navigation/native';
import {createBottomTabNavigator} from '@react-navigation/bottom-tabs';
import HomeScreen from './screens/Home/HomeScreen';
import {createStackNavigator} from '@react-navigation/stack';
import {observer} from 'mobx-react';
import {useRootStore} from './stores/root';
import LoginScreen from './screens/Login/LoginScreen';
import ChatScreen from './screens/Chat/ChatScreen';
import NotificationsScreen from './screens/Notifications/NotificationsScreen';
import SettingsScreen from './screens/Settings/SettingsScreen';
import {CheckIcon, QuestionIcon, SearchIcon} from 'native-base';
import ChangeLanguageScreen from './screens/ChangeLanguage/ChangeLanguageScreen';
import NotificationPreferencesScreen from './screens/NotificationPreferences/NotificationPreferencesScreen';
import WebScreen from './screens/WebScreen';
import i18n from './i18n';

const Tab = createBottomTabNavigator();
const Stack = createStackNavigator();

const HomeStack = () => (
  <Stack.Navigator initialRouteName="Index">
    <Stack.Screen
      name="Index"
      component={HomeScreen}
      options={{
        title: 'All (open)',
        headerRight: () => <SearchIcon size={5} mr={5} />,
      }}
    />
  </Stack.Navigator>
);
const NotificationsStack = () => (
  <Stack.Navigator initialRouteName="Notifications">
    <Stack.Screen name="Notifications" component={NotificationsScreen} />
  </Stack.Navigator>
);
const SettingsStack = () => (
  <Stack.Navigator initialRouteName="Settings">
    <Stack.Screen name="Settings" component={SettingsScreen} />
    <Stack.Screen name="ChangeLanguage" component={ChangeLanguageScreen} />
    <Stack.Screen
      name="NotificationPreferences"
      component={NotificationPreferencesScreen}
    />
  </Stack.Navigator>
);

const TabStack = () => (
  <Tab.Navigator screenOptions={{headerShown: false}}>
    <Tab.Screen
      name="HomeTab"
      component={HomeStack}
      options={{
        title: i18n.t('TAB.HOME'),
        tabBarIcon: ({color, size}) => <CheckIcon color={color} size={size} />,
      }}
    />
    <Tab.Screen
      name="NotificationsTab"
      component={NotificationsStack}
      options={{
        title: i18n.t('TAB.NOTIFICATIONS'),
        tabBarIcon: ({color, size}) => <SearchIcon color={color} size={size} />,
      }}
    />
    <Tab.Screen
      name="SettingsTab"
      component={SettingsStack}
      options={{
        title: i18n.t('TAB.SETTINGS'),
        tabBarIcon: ({color, size}) => (
          <QuestionIcon color={color} size={size} />
        ),
      }}
    />
  </Tab.Navigator>
);

export const AppNavigator = observer(() => {
  const navigationRef = useNavigationContainerRef();
  const routeNameRef = useRef();
  const {authStore} = useRootStore();
  return (
    <NavigationContainer
      ref={navigationRef}
      onReady={() => {
        routeNameRef.current = navigationRef.getCurrentRoute().name;
      }}
      onStateChange={() => {
        const previousRouteName = routeNameRef.current;
        const currentRouteName = navigationRef.getCurrentRoute().name;

        if (previousRouteName !== currentRouteName) {
          // await Analytics.setCurrentScreen(currentRouteName);
          console.log(currentRouteName);
        }

        // Save the current route name for later comparison
        routeNameRef.current = currentRouteName;
      }}>
      <Stack.Navigator screenOptions={{headerShown: false}}>
        {authStore.isLogin ? (
          <Fragment>
            <Stack.Screen name="Tab" component={TabStack} />
            <Stack.Screen
              name="Web"
              component={WebScreen}
              options={{headerShown: true}}
            />
            <Stack.Screen
              name="Chat"
              component={ChatScreen}
              options={{title: 'Chat', headerShown: true}}
            />
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
