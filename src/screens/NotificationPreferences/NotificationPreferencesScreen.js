import React from 'react';
import {Box, Button, Checkbox, Divider} from 'native-base';

const NotificationPreferencesScreen = () => {
  const [groupValues, setGroupValues] = React.useState([]);

  return (
    <Box>
      <Checkbox.Group
        margin={5}
        onChange={setGroupValues}
        value={groupValues}
        accessibilityLabel="choose numbers">
        <Checkbox value="one" my={2}>
          Email
        </Checkbox>
        <Checkbox value="two">Push</Checkbox>
      </Checkbox.Group>
      <Divider />
      <Button margin={5}>Submit</Button>
    </Box>
  );
};

export default NotificationPreferencesScreen;
