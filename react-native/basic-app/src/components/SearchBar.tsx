import { View } from "react-native";
import { TextInput } from "react-native";

export default function SearchBar() {
    return (
        <View style={{ borderWidth: 1, marginTop: 20, marginBottom: 20 }}>
            <TextInput style={{ color: 'black', textDecorationColor: 'green' }} placeholder="Search....">

            </TextInput>
        </View>
    )
}