import API from '../helpers/APIHelper';

const LoginUrl = 'auth';
export async function login(username, password) {
  return await API.post(LoginUrl, {username, password});
}

const MessageUrl = 'messages';
export async function getMessages() {
  return await API.get(MessageUrl);
}
