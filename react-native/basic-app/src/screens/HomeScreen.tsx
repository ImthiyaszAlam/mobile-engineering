import { View, Text, Button } from 'react-native';

export default function HomeScreen({ navigation }: any) {
  return <View style={{ margin: 10 }}>

    <Text style={{padding:10,fontSize:20,color:'white'}}>Home Screen</Text>
    <Button  title='Logout' onPress={()=> navigation.replace('Login')}/>
  </View>;
}
