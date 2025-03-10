import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> items = List.generate(50, (index) => 'Item $index');
  final List<String> listitem =
      List.generate(10, (indexs) => "listitem$indexs");
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Product Details",
          style: TextStyle(
              fontSize: 30, fontStyle: FontStyle.italic, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 71, 194, 147),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          SearchBar(
              controller: searchController,
              hintText: "search",
              trailing: [
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
              ]),
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 32, 126, 117),
                    ),
                    height: 5,
                    width: 150,
                    child: Column(
                      children: [
                        Image.asset("assets/images/background.jpg"),
                       
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(width: 0.0); // Fix separator
              },
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            "List of view",
            style: TextStyle(fontSize: 20, fontStyle: FontStyle.normal),
          ),
          SizedBox(
            height: 8,
          ),
          Flexible(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true, // ✅ Fixes the issue
              //
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: items.length,
              padding: EdgeInsets.all(10),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 234, 240, 239),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  height: 100,
                  width: 100,
                  child:Column(children: [
                    Image.asset("assets/images/amazon-food-.jpg"),
                    Text("data")
                  ],) 
                
                );
              },
            ),
          ),
        ]),
      ),
    );
  }
}
