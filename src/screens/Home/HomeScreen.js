import React from 'react';
import {
  Layout,
  Icon,
  withStyles,
  List,
  Input,
  Divider,
} from '@ui-kitten/components';
import styles from './HomeScreen.style';
import {observer} from 'mobx-react';
import {useRootStore} from '../../stores/root';
import {Group} from '../../models/message';
import {ImageStyle} from 'react-native';
import {SafeAreaLayout} from '../../components/SafeAreaLayout';
import {GroupItem} from '../../components/GroupItem';

const SearchIcon = (style: ImageStyle) => <Icon {...style} name="search" />;

const HomeScreenComponent = observer(({eva: {style}, navigation}) => {
  const {authStore} = useRootStore();

  const initialGroups = [
    Group.data1(),
    Group.data2(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
    Group.data3(),
  ];

  const onItemPress = () => {
    navigation.push('Chat');
  };

  const renderHeader = () => (
    <Layout style={style.header} level="1">
      <Input placeholder="search" accessoryRight={SearchIcon} />
    </Layout>
  );

  const renderItem = info => (
    <GroupItem style={style.item} group={info.item} onPress={onItemPress} />
  );

  return (
    <SafeAreaLayout style={{container: {flex: 1}}}>
      <Divider />
      <List
        data={initialGroups}
        renderItem={renderItem}
        ListHeaderComponent={renderHeader}
      />
    </SafeAreaLayout>
  );
});

const HomeScreen = withStyles(HomeScreenComponent, styles);
export default HomeScreen;
