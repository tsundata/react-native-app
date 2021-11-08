/**
 * @format
 */

import {AppRegistry} from 'react-native';
import App from './src/App';
import {name as appName} from './app.json';
import {initTracking} from './src/helpers/Tracking';
import {initDatabase} from './src/helpers/Database';

AppRegistry.registerComponent(appName, () => App);
initTracking();
initDatabase();
