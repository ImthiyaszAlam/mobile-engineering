import { View, Text, Button } from 'react-native';

export default function RegisterScreen({ navigation }: any) {
  return (
    <View style={{ margin: 10 }}>
      <Text>Register Screen</Text>
      <Button title="Back to Login" onPress={()=>navigation.goBack()}></Button>
    </View>
  );
}
