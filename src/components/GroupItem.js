import React from 'react';
import {StyleSheet, View} from 'react-native';
import {
  Avatar,
  Icon,
  ListItem,
  ListItemProps,
  Text,
} from '@ui-kitten/components';

const DoneAllIcon = style => {
  return <Icon {...style} width={16} height={16} name="done-all" />;
};

export const GroupItem = (props: ListItemProps) => {
  const {group, onPress, ...listItemProps} = props;

  const renderGroupDate = () => {
    return (
      <View style={styles.dateContainer}>
        {group.isRead && <DoneAllIcon />}
        <Text style={styles.dateText} appearance="hint" category="c1">
          {group.text}
        </Text>
      </View>
    );
  };

  const renderProfileAvatar = () => <Avatar style={styles.avatar} />;

  return (
    <ListItem
      {...listItemProps}
      onPress={onPress}
      title={group.profile.name}
      description={group.text}
      accessoryLeft={renderProfileAvatar}
      accessoryRight={renderGroupDate}
    />
  );
};

const styles = StyleSheet.create({
  avatar: {
    width: 40,
    height: 40,
    tintColor: null,
    marginRight: 10,
  },
  dateContainer: {
    flexDirection: 'row',
    alignItems: 'center',
  },
  dateText: {
    textAlign: 'right',
    minWidth: 64,
  },
});
