import {makeAutoObservable, runInAction} from 'mobx';
import AsyncStorage from '@react-native-community/async-storage';

export class AuthStore {
  token = '';
  isLogin = false;

  constructor(rootStore) {
    this.rootStore = rootStore;
    makeAutoObservable(this);
    this.checkToken();
  }

  checkToken() {
    AsyncStorage.getItem('@token').then(token => {
      runInAction(() => {
        this.token = token;
      });
    });
    AsyncStorage.getItem('@isLogin').then(isLogin => {
      runInAction(() => {
        this.isLogin = !!isLogin;
      });
    });
  }

  login(username, password) {
    if (username === '') {
      this.rootStore.uiStore.showToast('username is required');
      return;
    }
    if (password === '') {
      this.rootStore.uiStore.showToast('Password is required');
      return;
    }
    this.isLogin = true;
    this.token = 'qwerty';
    AsyncStorage.setItem('@token', this.token);
    AsyncStorage.setItem('@isLogin', this.isLogin.toString());
  }

  logout() {
    this.isLogin = false;
    this.token = '';
    AsyncStorage.removeItem('@token');
  }
}
