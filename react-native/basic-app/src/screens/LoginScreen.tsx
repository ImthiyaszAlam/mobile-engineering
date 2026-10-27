import { Button, Text, View } from 'react-native';

export default function LofinScreen({ navigation }: any) {
  return (
    <View style={{ margin: 10 }}>
      <Text
        style={{
          fontSize: 16,
          padding: 10,
          marginTop: 100,
          color: 'white',
          fontWeight: 500,
        }}
      >
        Login Screen
      </Text>
      <Button
        title="Register"
        onPress={() => navigation.navigate('Register')}
      />

      <View style={{ marginBottom: 10, marginTop: 20 }}>
        <Button title="Login" onPress={() => navigation.replace('Home')} />
      </View>
    </View>
  );
}
