import {
  setJSExceptionHandler,
  setNativeExceptionHandler,
} from 'react-native-exception-handler';
import {Client} from 'rollbar-react-native';
import Config from 'react-native-config';

export const initTracking = () => {
  const rollbar = new Client(Config.ROLLBAR_KEY);
  setJSExceptionHandler((error, isFatal) => {
    if (isFatal) {
      rollbar.error(error);
    } else {
      rollbar.critical(error);
    }
  });
  setNativeExceptionHandler(exceptionMsg => {
    rollbar.error(exceptionMsg);
  });
};
