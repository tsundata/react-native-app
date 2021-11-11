import React from 'react';
import {Box, Button, Divider, Radio} from 'native-base';

const ChangeLanguageScreen = () => {
  const [value, setValue] = React.useState(0);
  return (
    <Box>
      <Radio.Group
        margin={5}
        name="myRadioGroup"
        accessibilityLabel="favorite number"
        value={value}
        onChange={nextValue => {
          setValue(nextValue);
        }}>
        <Radio value="one" my={1}>
          English
        </Radio>
        <Radio value="two" my={1}>
          中文
        </Radio>
      </Radio.Group>
      <Divider />
      <Button margin={5}>Submit</Button>
    </Box>
  );
};

export default ChangeLanguageScreen;
