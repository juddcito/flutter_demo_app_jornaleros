

import 'package:flutter/material.dart';
import 'package:path/path.dart';

class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({super.key});

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}



class _CustomDatePickerState extends State<CustomDatePicker> {

  final datePickerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: datePickerController,
        onTap:() {
          _selectDate(context);
        },
        readOnly: true,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.calendar_today),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.all(Radius.circular(25))
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
            borderRadius: const BorderRadius.all(Radius.circular(25))
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          hintText: 'Fecha de nacimiento',
          hintStyle: TextStyle(color: Colors.grey[500]),
        ),
      ),
    );
  }

  Future<void> _selectDate(context) async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1940),
      lastDate: DateTime(2024)
    );

    if (_picked != null){
      setState(() {
        datePickerController.text = _picked.toString().split(" ")[0];
      });
    }
  }

}