import {makeAutoObservable, reaction} from 'mobx';

export class MessageStore {
  messages = [];

  constructor(rootStore) {
    makeAutoObservable(this, {rootStore: false});
    this.rootStore = rootStore;
  }

  loadMessages() {}
}

export class Message {
  id = null;
  content = '';
  user = null;
  store = null;

  constructor(store) {
    makeAutoObservable(this, {
      id: false,
      store: false,
      autoSave: false,
      saveHandler: false,
      dispose: false,
    });
    this.store = store;

    this.saveHandler = reaction(
      () => this.asJson,
      json => {
        if (this.autoSave) {
          //this.store.transportLayer.saveTodo(json)
        }
      },
    );
  }

  delete() {
    // this.store.transportLayer.deleteTodo(this.id)
    // this.store.removeTodo(this)
  }

  get asJson() {
    return {
      id: this.id,
      content: this.content,
      userId: this.user ? this.user.id : null,
    };
  }

  updateFromJson(json) {
    this.autoSave = false;
    this.content = json.content;
    // this.author = this.store.authorStore.resolveAuthor(json.authorId);
    this.autoSave = true;
  }

  dispose() {
    this.saveHandler();
  }
}
