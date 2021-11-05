import {makeAutoObservable, observable} from 'mobx';

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
  }
}
