import { View } from "react-native";
import { Text } from "react-native";

export default function CategoryItem({ title }: { title: string }) {
    return (
        <View>
            <Text>{title}</Text>
        </View>
    )

}