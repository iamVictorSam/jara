
import 'package:flutter/material.dart';

class QualityDropDOwnButton extends StatefulWidget {

  const QualityDropDOwnButton({Key? key}) : super(key: key);

  @override
  State<QualityDropDOwnButton> createState() => _QualityDropDOwnButtonState();
}

class _QualityDropDOwnButtonState extends State<QualityDropDOwnButton> {
  String? selectedValue = '1';
  List<String> items = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
            height: 80,
            width: 60,
            alignment: Alignment.center,
            child: DropdownButtonFormField<String>(
              decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(width: 2, color: Colors.green)
                  )
              ),
              value: selectedValue,
              items: items.map((item) =>
                  DropdownMenuItem<String>(
                      value: item,
                      child: Text(item, style: const TextStyle(fontSize: 12))
                  ),).toList(),
              onChanged: (item) =>
                  setState(() {
                    selectedValue = item;
                  }),
            ),
          )
      ),
    );
  }
}
