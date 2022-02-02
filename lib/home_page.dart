import 'package:flutter/material.dart';
// import 'package:riverpod_1_0/themes/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${Theme.of(context).primaryColor}'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColorLight,
                child: const Text('primary Color Light'),
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColor,
                child: const Text('primaryColor'),
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).primaryColorDark,
                child: const Text('primary Color Dark'),
              ),
            ),
            Expanded(
              child: Container(
                color: Theme.of(context).colorScheme.secondary,
                child: const Text('secondary Color'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
