import * as React from 'react';
import * as eva from '@eva-design/eva';
import {ApplicationProvider, IconRegistry} from '@ui-kitten/components';
import {EvaIconsPack} from '@ui-kitten/eva-icons';
import {AppNavigator} from './navigation';
import {theme} from './theme';
import {ActionSheetProvider} from '@expo/react-native-action-sheet';

const App = () => {
  return (
    <React.Fragment>
      <IconRegistry icons={EvaIconsPack} />
      <ApplicationProvider {...eva} theme={theme}>
        <ActionSheetProvider>
          <AppNavigator />
        </ActionSheetProvider>
      </ApplicationProvider>
    </React.Fragment>
  );
};

export default App;
