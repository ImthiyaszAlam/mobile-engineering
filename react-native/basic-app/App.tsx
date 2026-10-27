import { NewAppScreen } from '@react-native/new-app-screen';
import { useState } from 'react';
import {
  Button,
  StatusBar,
  StyleSheet,
  Text,
  TextInput,
  useColorScheme,
  View,
} from 'react-native';
import {
  SafeAreaProvider,
  useSafeAreaInsets,
} from 'react-native-safe-area-context';
import LoginScreen from './src/screens/LoginScreen';
import { NavigationContainer } from '@react-navigation/native';
import { createNativeStackNavigator } from '@react-navigation/native-stack';
import RegisterScreen from './src/screens/RegisterScreen';
import HomeScreen from './src/screens/HomeScreen';
import DashboardScreen from './src/screens/DashboardScreen';

const Stack = createNativeStackNavigator();
function App() {
  const isDarkMode = useColorScheme() === 'dark';

return (
    <NavigationContainer>
      <Stack.Navigator screenOptions={{ headerShown: false }}>
        <Stack.Screen name="Dashboard" component={DashboardScreen} />
      </Stack.Navigator>
    </NavigationContainer>
  );
}

function AppContent() {
  const safeAreaInsets = useSafeAreaInsets();

  return (
    <View>
      <NewAppScreen
        templateFileName="App.tsx"
        safeAreaInsets={safeAreaInsets}
      />
    </View>
  );
}

function FirstApp() {
  const [count, setCount] = useState(0);

  return (
    <View style={{ padding: 40 }}>
      <Text style={{ padding: 16 }}>Count: {count}</Text>
      <Button title="Increase" onPress={() => setCount(count + 1)} />
    </View>
  );
}

function CountSum() {}

function SumCalculator() {
  const [a, setA] = useState('');
  const [b, setB] = useState('');
  const [c, setC] = useState(0);

  const calculateSum = () => {
    const numA = Number(a);
    const numB = Number(b);
    setC(numA + numB);
  };

  return (
    <View style={{ padding: 10 }}>
      <Text>Enter A</Text>
      <TextInput
        value={a}
        onChangeText={setA}
        keyboardType="numeric"
        style={{ borderWidth: 1, marginBottom: 10, padding: 8 }}
      />

      <Text
        style={{
          color: 'white',
          padding: 20,
          fontSize: 24,
          borderBlockColor: 'green',
        }}
      >
        Enter B
      </Text>
      <TextInput
        value={b}
        onChangeText={setB}
        keyboardType="numeric"
        style={{ borderWidth: 1, marginBottom: 10, paddingBottom: 8 }}
      />

      <Button title="Calculate" onPress={calculateSum} />

      <Text style={{ marginTop: 20, fontSize: 18, color: 'white' }}>
        Sum(C):{c}
      </Text>
    </View>
  );
}

export default App;
