import Config from 'react-native-config';
import SafariView from 'react-native-safari-view';

import {Platform, Linking} from 'react-native';

import {URL_REGEX} from '../constants';

export const getBaseUrl = async () => {
  try {
    return Config.API_URL;
  } catch (e) {}
};

export const checkUrlIsConversation = async ({url}) => {
  const installationUrl = '';

  const conversationsUrlRegex = new RegExp(
    `^${installationUrl}${URL_REGEX.CONVERSATION}`,
  );
  return conversationsUrlRegex.test(url);
};

export const openURL = ({URL}) => {
  if (Platform.OS === 'ios') {
    SafariView.show({
      url: URL,
    });
  } else {
    Linking.openURL(URL);
  }
};
