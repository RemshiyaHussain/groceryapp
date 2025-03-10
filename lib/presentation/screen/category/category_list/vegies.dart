import 'package:flutter/material.dart';

class Vegies extends StatefulWidget {
  const Vegies({super.key});

  @override
  State<Vegies> createState() => _VegiesState();
}

class _VegiesState extends State<Vegies> {
   final List<String> items =[];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
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
                  child: Column(
                    children: [
                      Image.asset("assets/images/amazon-food-.jpg"),
                      Text("name"),
                      Text("price")
                    ],
                  ),

                );
              
              },
            ),
          );
  }
}