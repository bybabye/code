
import 'package:flutter/material.dart';
import 'package:flutter_ui/themes/app_color.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Files",
          style: Theme.of(context).textTheme.subtitle1,
        ),
        ElevatedButton.icon(
            style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding)),
            onPressed: () {},
            icon: const Icon(Icons.add),
            label: const Text("Add new",overflow: TextOverflow.ellipsis,))
      ],
    );
  }
}
