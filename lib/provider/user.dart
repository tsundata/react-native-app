import 'package:get/get.dart';

class UserProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = 'https://api.covid19api.com';
  }

  // Get request
  Future<Response> getUser(int id) => get('/users/$id');

  // Post request
  Future<Response> postUser(Map data) => post('i/users', data);

  GetSocket userMessages() {
    return socket('https://yourapi/users/socket');
  }
}
