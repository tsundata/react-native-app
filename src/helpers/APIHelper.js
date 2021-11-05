import axios from 'axios';
import * as AxiosLogger from 'axios-logger';
import {getBaseUrl} from './UrlHelper';
import {getHeaders} from './AuthHelper';
import {showToast} from './ToastHelper';

const parseErrorCode = error => {
  if (error.response) {
    if (error.response.status === 401) {
      // todo logOut
    } else if (error.response.status === 404) {
      const {message} = error.response.data;
      showToast({message});
    }
  } else {
    showToast({message: 'error'});
  }
  return Promise.reject(error.response);
};

const API = axios.create();

API.interceptors.request.use(
  async config => {
    const headers = await getHeaders();
    config.baseURL = await getBaseUrl();
    if (headers) {
      config.headers = headers;
    }
    return config;
  },
  error => Promise.reject(error),
);
API.interceptors.request.use(AxiosLogger.requestLogger);

API.interceptors.response.use(
  response => response,
  error => parseErrorCode(error),
);

export default API;
