import 'package:flutter/material.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({
    Key? key,
    required this.colors,
  }) : super(key: key);

  final Map<int, Color> colors;

  @override
  Widget build(BuildContext context) {
    // Map<int, Color> colors;
    // double lum;
    // if (THEMEMODE == ThemeMode.light) {
    //   colors = colorsLight;
    //   lum = materialColorLight.computeLuminance();
    // } else {
    //   colors = colorsDark;
    //   lum = materialColorDark.computeLuminance();
    // }
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 28.0,
          vertical: 10,
        ),
        child: Column(
          children: [
            // Container(
            //   color: Theme.of(context).colorScheme.background,
            //   child: Consumer(
            //     builder: (context, ref, child) {
            //       final responseAsyncValue = ref.watch(responseProvider);
            //       return responseAsyncValue.when(
            //         data: (data) => Center(child: Text(data)),
            //         loading: () => const CircularProgressIndicator(),
            //         error: (error, __) => Text(
            //           error.toString(),
            //           style: TextStyle(
            //             color: Theme.of(context).colorScheme.onPrimary,
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/tela2');
                  },
                  icon: const Icon(Icons.next_plan_rounded, size: 28),
                  label: const Text("label")),
            ),
            Expanded(
                child: ListView(
              children: colors.entries.map((entry) {
                return Container(
                  height: 50,
                  color: entry.value,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("${entry.key} : ${entry.value}"),
                  ),
                );
              }).toList(),
            )),
          ],
        ),
      ),
    );
  }
}
