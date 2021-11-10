import * as React from 'react';
import {AppNavigator} from './navigation';
import {ActionSheetProvider} from '@expo/react-native-action-sheet';
import {NativeBaseProvider} from 'native-base';

const App = () => {
  return (
    <React.Fragment>
      <NativeBaseProvider>
        <ActionSheetProvider>
          <AppNavigator />
        </ActionSheetProvider>
      </NativeBaseProvider>
    </React.Fragment>
  );
};

export default App;
