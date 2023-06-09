import 'package:flutter/material.dart';
import 'package:meals_app/data/dummy_data.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.titleLarge,
      ),
    );
  }

  Widget buildSection(Widget childWidget) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10)),
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        height: 150,
        width: 300,
        child: childWidget);
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as String;
    final selectedMeal =
        DUMMY_MEALS.firstWhere((element) => element.id == args);
    return Scaffold(
        appBar: AppBar(
          title: Text(selectedMeal.title),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectedMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            buildSectionTitle(context, 'Ingredients'),
            buildSection(ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: ((context, index) {
                return Card(
                  child: Text(selectedMeal.ingredients[index]),
                );
              }),
            )),
            buildSectionTitle(context, 'Steps'),
            buildSection(ListView.builder(
              itemCount: selectedMeal.steps.length,
              itemBuilder: ((context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        child: Text('# ${(index + 1)}'),
                      ),
                      title: Text(selectedMeal.steps[index]),
                    ),
                    Divider()
                  ],
                );
              }),
            )),
          ],
        )));
  }
}
