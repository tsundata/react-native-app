import {makeAutoObservable, runInAction} from 'mobx';
import AsyncStorage from '@react-native-community/async-storage';
import {login} from '../api/api';

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
    login(username, password).then(res => {
      if (res.status === 200 || res.status === 201) {
        runInAction(() => {
          this.token = res.data.token;
          this.isLogin = true;
        });
        AsyncStorage.setItem('@token', res.data.token);
        AsyncStorage.setItem('@isLogin', 'true');
        this.rootStore.uiStore.showToast('Login success');
      } else {
        this.rootStore.uiStore.showToast('Login failed');
      }
    });
  }

  logout() {
    this.isLogin = false;
    this.token = '';
    AsyncStorage.removeItem('@token');
  }
}
