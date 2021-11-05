export class Group {
  constructor(data) {
    this.text = data.text;
    this.date = data.date;
    this.isRead = data.isRead;
    this.profile = data.profile;
  }

  static data1() {
    return new Group({
      text: 'How are you?',
      date: new Date(),
      isRead: false,
      profile: {
        name: 'John Doe',
        avatar: 'https://httpbin.org/image/jpeg',
      },
    });
  }

  static data2() {
    return new Group({
      text: 'How are you?',
      date: new Date(),
      isRead: false,
      profile: {
        name: 'John Doe',
        avatar: 'https://httpbin.org/image/jpeg',
      },
    });
  }

  static data3() {
    return new Group({
      text: 'How are you?',
      date: new Date(),
      isRead: false,
      profile: {
        name: 'John Doe',
        avatar: 'https://httpbin.org/image/jpeg',
      },
    });
  }
}
