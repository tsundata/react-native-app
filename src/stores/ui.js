import {makeAutoObservable, observable} from 'mobx';
import {Platform, ToastAndroid} from 'react-native';
import AlertIOS from 'react-native/Libraries/Alert/Alert';

export class UiStore {
  language = 'en_US';
  pendingRequestCount = 0;
  toast = '';

  windowDimensions = {
    width: window.innerWidth,
    height: window.innerHeight,
  };

  constructor() {
    makeAutoObservable(this, {windowDimensions: observable.struct});
    window.onresize = () => {
      this.windowDimensions = this.getWindowDimensions();
    };
  }

  getWindowDimensions() {
    return {height: undefined, width: undefined};
  }

  get appIsInSync() {
    return this.pendingRequestCount === 0;
  }

  showToast(text) {
    console.log(text);
    this.toast = text;
    if (Platform.OS === 'android') {
      ToastAndroid.show(text, ToastAndroid.SHORT);
    } else {
      AlertIOS.alert(text);
    }
  }
}
