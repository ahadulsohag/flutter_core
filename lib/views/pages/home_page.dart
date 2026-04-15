import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controller = TextEditingController();
  bool? isChecked = false;
  bool isSwitched = false;
  double sliderValue = 0.0;
  String? menuItem;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsetsGeometry.all(20.0),
        child: Column(
          children: [
            DropdownButton(
              value: menuItem,
              hint: Text('Elements'),
              items: [
                DropdownMenuItem(value: 'e1', child: Text('Element 1')),
                DropdownMenuItem(value: 'e2', child: Text('Element 2')),
                DropdownMenuItem(value: 'e3', child: Text('Element 3')),
              ],
              onChanged: (String? value) {
                setState(() {
                  menuItem = value;
                });
              },
            ),
            TextField(
              controller: controller,
              decoration: InputDecoration(border: OutlineInputBorder()),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            Text(controller.text),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
              title: Text('Click me'),
              tristate: true,
            ),
            Switch(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SwitchListTile.adaptive(
              value: isSwitched,
              title: Text('Switch me'),
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider(
              value: sliderValue,
              max: 100.0,
              divisions: 10,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            InkWell(
              splashColor: Colors.amber,
              child: Container(
                height: 200.0,
                width: double.infinity,
                color: Colors.white12,
              ),
              onTap: () {
                print('Selected the image!');
              },
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.black,
              ),
              child: Text('Click me'),
            ),
            FilledButton(onPressed: () {}, child: Text('Click me')),
            TextButton(onPressed: () {}, child: Text('Click me')),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    );
  }
}
