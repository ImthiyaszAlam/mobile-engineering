import { FlatList, ScrollView, View } from "react-native";
import Header from "../components/Header";
import SearchBar from "../components/SearchBar";
import CategoryItem from "../components/CategoryItem";
import ListItem from "../components/ListItem";

export default function DashBoardScreen() {

    const categories = ['Tech   ', 'Sport     ', 'Music    ', 'Movies  ', '  Books']
    const items = [
        { title: 'title1', description: 'description' },
        { title: 'title1', description: 'description' },
        { title: 'title1', description: 'description' },
        { title: 'title1', description: 'description' },
        { title: 'title1', description: 'description' },
        { title: 'title1', description: 'description' },
    ]
    return (

        <View style={{ margin: 10 }}>

            <Header />
            <SearchBar />

            <FlatList
                data={categories}
                horizontal
                showsHorizontalScrollIndicator={true}
                keyExtractor={(item) => item}
                contentContainerStyle={{ paddingHorizontal: 16, paddingVertical: 8 }}
                renderItem={({ item }) => <CategoryItem title={item} />}
            />

            {/* Vertical list */}
            <ScrollView>
                {items.map((item, index) => (
                    <ListItem key={index} title={item.title} description={item.description} />
                ))}
            </ScrollView>


        </View>
    )
}