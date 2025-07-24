import 'package:flutter/material.dart';
import 'package:task/task4/foodmodel.dart';
import 'package:task/task2/app_colors.dart';

class FoodListPage extends StatelessWidget {
  final List<Foodmodel> foodList = [
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
      Foodmodel(image:'images/burger.jpg' , name: 'Burger'),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food Menu")),

      body: ListView.builder(
        itemCount: foodList.length,
        itemBuilder: (context, index) {
          final food = foodList[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                foodList[index].image,
                width: 60,
                height: 70,
                fit: BoxFit.cover,
              ),
              title: Text(  foodList[index].name),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                
              },
            ),
          );
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: AppColors.mainfood,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
