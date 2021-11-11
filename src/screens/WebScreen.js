import React from 'react';
import {WebView} from 'react-native-webview';

const WebScreen = ({navigation, route}) => {
  let {url} = route.params;

  return (
    <WebView
      source={{uri: url}}
      onLoadEnd={syntheticEvent => {
        const {nativeEvent} = syntheticEvent;
        navigation.setOptions({
          title: nativeEvent.title,
        });
      }}
    />
  );
};

export default WebScreen;
