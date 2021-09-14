class Message {
  String? id;
  String? url;
  String? type;
  String? requestedBy;
  String? description;
  int? createdAt;
  String? pageUrl;
  String? referrerUrl;
  String? entryUrl;
  String? ipAddress;
  String? userAgent;
  String? country;
  String? region;
  String? city;
  double? latitude;
  double? longitude;
  int? chatWaittime;
  int? chatDuration;
  int? surveyScore;
  String? languageCode;
  List<Transcript>? transcript;

  Message(
      {this.id,
      this.url,
      this.type,
      this.requestedBy,
      this.description,
      this.createdAt,
      this.pageUrl,
      this.referrerUrl,
      this.entryUrl,
      this.ipAddress,
      this.userAgent,
      this.country,
      this.region,
      this.city,
      this.latitude,
      this.longitude,
      this.chatWaittime,
      this.chatDuration,
      this.surveyScore,
      this.languageCode,
      this.transcript});

  Message.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    url = json['url'];
    type = json['type'];
    requestedBy = json['requested_by'];
    description = json['description'];
    createdAt = json['created_at'];
    pageUrl = json['page_url'];
    referrerUrl = json['referrer_url'];
    entryUrl = json['entry_url'];
    ipAddress = json['ip_address'];
    userAgent = json['user_agent'];
    country = json['country'];
    region = json['region'];
    city = json['city'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    chatWaittime = json['chat_waittime'];
    chatDuration = json['chat_duration'];
    surveyScore = json['survey_score'];
    languageCode = json['language_code'];
    if (json['transcript'] != null) {
      transcript = <Transcript>[];
      json['transcript'].forEach((v) {
        transcript!.add(Transcript.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['url'] = url;
    data['type'] = type;
    data['requested_by'] = requestedBy;
    data['description'] = description;
    data['created_at'] = createdAt;
    data['page_url'] = pageUrl;
    data['referrer_url'] = referrerUrl;
    data['entry_url'] = entryUrl;
    data['ip_address'] = ipAddress;
    data['user_agent'] = userAgent;
    data['country'] = country;
    data['region'] = region;
    data['city'] = city;
    data['latitude'] = latitude;
    data['longitude'] = longitude;
    data['chat_waittime'] = chatWaittime;
    data['chat_duration'] = chatDuration;
    data['survey_score'] = surveyScore;
    data['language_code'] = languageCode;
    if (transcript != null) {
      data['transcript'] = transcript!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Transcript {
  String? id;
  int? date;
  String? alias;
  String? message;

  Transcript({this.id, this.date, this.alias, this.message});

  Transcript.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    alias = json['alias'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['date'] = date;
    data['alias'] = alias;
    data['message'] = message;
    return data;
  }
}
