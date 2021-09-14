import 'package:get/get.dart';

import '../message_model.dart';

class MessageProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Message.fromJson(map);
      if (map is List)
        return map.map((item) => Message.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Message?> getMessage(int id) async {
    final response = await get('message/$id');
    return response.body;
  }

  Future<Response<Message>> postMessage(Message message) async =>
      await post('message', message);
  Future<Response> deleteMessage(int id) async => await delete('message/$id');
}
