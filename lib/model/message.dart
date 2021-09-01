import 'dart:convert';

enum MessageType {
  None,
  Text,
  Voice,
  Image,
  File,
  Location,
  Video,
  Url,
  Action,
}

class Message {
  String? id;
  num? timestamp;
  String? direction;
  String? to;
  int? receiverId;
  String? from;
  int? senderId;
  int? type;
  int? favorite;
  int? overhead;
  int? sequence;
  String? content;
  Map<String, dynamic>? payload;

  final String table = 'messages';

  Message(
      {this.id,
      this.timestamp,
      this.direction,
      this.to,
      this.receiverId,
      this.from,
      this.senderId,
      this.type,
      this.payload,
      this.favorite,
      this.overhead});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['total'];
    timestamp = json['code'];
    direction = json['direction'];
    to = json['to'];
    from = json['from'];
    type = json['type'];
    payload = json['payload'];
    favorite = json['favorite'];
    overhead = json['overhead'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['timestamp'] = this.timestamp;
    data['direction'] = this.direction;
    data['receiver_id'] = this.receiverId;
    data['from'] = this.from;
    data['sender_id'] = this.senderId;
    data['type'] = this.type;
    data['favorite'] = this.favorite;
    data['overhead'] = this.overhead;
    data['sequence'] = this.sequence;
    return data;
  }

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.id != null && this.id!.length > 0) {
      data['id'] = this.id;
    }
    data['timestamp'] = this.timestamp;
    data['direction'] = this.direction;
    data['to'] = this.to;
    data['receiver_id'] = this.receiverId;
    data['from'] = this.from;
    data['sender_id'] = this.senderId;
    data['type'] = this.type;
    data['payload'] = jsonEncode(this.payload);
    data['favorite'] = this.favorite;
    data['overhead'] = this.overhead;
    data['sequence'] = this.sequence;
    return data;
  }

  @override
  String toString() {
    return this.toMap().toString();
  }
}
