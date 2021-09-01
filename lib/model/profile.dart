class Profile {
  String? token;
  int? userId;
  String? userNickname;
  int? deviceId;
  String? deviceToken;
  int? sendSequence;
  int? syncSequence;
  bool? lastLogin;

  Profile.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    userId = json['user_id'];
    userNickname = json['user_nickname'];
    deviceId = json['device_id'];
    deviceToken = json['device_token'];
    sendSequence = json['send_sequence'];
    syncSequence = json['sync_sequence'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['user_id'] = this.userId;
    data['user_nickname'] = this.userNickname;
    data['device_id'] = this.deviceId;
    data['device_token'] = this.deviceToken;
    data['send_sequence'] = this.sendSequence;
    data['sync_sequence'] = this.syncSequence;
    return data;
  }
}
