import 'package:flutter/material.dart';
import 'package:mystore/components/grid_card.dart';
import 'package:mystore/screens/login.dart';
import 'package:mystore/screens/product.dart';
import 'package:mystore/screens/login.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final data = ["1", "2"];

  @override
  Widget build(BuildContext context) {
    onCardPress() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }

    return Container(
      child: GridView.builder(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
        itemCount: data.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 30,
          crossAxisSpacing: 30,
        ),
        itemBuilder: (BuildContext context, int index) {
          return GridCard(index: index, onPress: onCardPress);
        },
      ),
    );
  }
}
