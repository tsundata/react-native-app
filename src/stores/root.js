import * as React from 'react';
import {MessageStore} from './message';
import {AuthStore} from './auth';
import {UiStore} from './ui';

class RootStore {
  constructor() {
    this.messageStore = new MessageStore(this);
    this.authStore = new AuthStore(this);
    this.uiStore = new UiStore(this);
  }
}

export const rootStore = new RootStore();

export const RootStoreContext = React.createContext(rootStore);
export const useRootStore = () => React.useContext(RootStoreContext);
