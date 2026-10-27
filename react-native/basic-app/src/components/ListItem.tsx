import { View } from "react-native";
import { Text } from "react-native";

export default function ListItem({ title, description }: { title: string, description: string }) {
    return (
        <View  style={{ backgroundColor: 'black', marginBottom: 10, borderRadius: 10, paddingVertical: 8 }}>

            <Text style={{ color: 'white', paddingHorizontal: 10, fontSize: 18 }}>{title}</Text>
            <Text style={{ color: 'white', paddingHorizontal: 10 }}>{description}</Text>
        </View>
    )
}