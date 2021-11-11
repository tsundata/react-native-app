import React from 'react';
import {Group} from '../../models/message';
import {
  Avatar,
  Box,
  Button,
  Center,
  Divider,
  FlatList,
  HStack,
  Stack,
  Text,
  VStack,
} from 'native-base';
import {TabView, SceneMap} from 'react-native-tab-view';
import {useWindowDimensions} from 'react-native';
import TabViewBar from '../../components/TabViewBar';
import styles from './HomeScreen.style';
import {TouchableOpacity} from 'react-native-gesture-handler';

const HomeScreen = ({navigation}) => {
  const initialGroups = [Group.data1(), Group.data2(), Group.data3()];

  const GroupListItem = props => {
    return (
      <TouchableOpacity onPress={onItemPress}>
        <Box>
          <HStack
            width={layout.width}
            height={100}
            flex={1}
            alignItems="center"
            justifyContent="space-between">
            <Avatar
              bg="green.500"
              source={{
                uri: props.item.profile.avatar,
              }}
              ml={5}
            />
            <VStack width="50%">
              <Text>{props.item.profile.name}</Text>
              <Text>{props.item.text}</Text>
              <HStack>
                <Text style={styles.tag}>#{props.index + 1}</Text>
                <Text style={styles.tag}>flow_bot</Text>
              </HStack>
            </VStack>
            <Center mr={5}>
              <Text style={{fontSize: 11, color: 'grey'}}>11.02</Text>
              <Center style={styles.number}>
                <Text style={{color: '#fff', fontSize: 11}}>3</Text>
              </Center>
            </Center>
          </HStack>
          <Divider />
        </Box>
      </TouchableOpacity>
    );
  };

  const firstRoute = () => (
    <Center>
      <FlatList
        data={initialGroups}
        renderItem={props => <GroupListItem {...props} />}
      />
      <Divider />
      <Text mt={5}>All conversations loaded</Text>
    </Center>
  );

  const secondRoute = () => (
    <Center safeArea>
      <Text>There are no active conversations in this group.</Text>
    </Center>
  );

  const thirdRoute = () => (
    <Center safeArea>
      <Text>There are no active conversations in this group.</Text>
    </Center>
  );

  const onItemPress = () => {
    navigation.push('Chat');
  };

  const renderScene = SceneMap({
    first: firstRoute,
    second: secondRoute,
    third: thirdRoute,
  });

  const layout = useWindowDimensions();
  const [index, setIndex] = React.useState(0);
  const [routes] = React.useState([
    {key: 'first', title: 'Mine (1)'},
    {key: 'second', title: 'Unassigned (0)'},
    {key: 'third', title: 'All (1)'},
  ]);

  return (
    <TabView
      style={styles.tabView}
      onIndexChange={setIndex}
      navigationState={{index, routes}}
      renderScene={renderScene}
      renderTabBar={props => (
        <TabViewBar {...props} index={index} setIndex={i => setIndex(i)} />
      )}
      initialLayout={{width: layout.width}}
    />
  );
};

export default HomeScreen;
