import 'package:flutter/material.dart';





class CustomDropdown extends StatefulWidget {

  final String hintText;
  final IconData icon;
  
  const CustomDropdown({
    super.key,
    required this.hintText,
    required this.icon
  });

  

  @override
  _CustomDropdownState createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.symmetric(horizontal: 25),
      child: DropdownButtonFormField(
        hint: Text(widget.hintText, style: TextStyle(color: Colors.grey[500])),
        isExpanded: true,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: Colors.grey.shade200),
          fillColor: Colors.grey.shade200,
          filled: true,
          prefixIcon: Icon(widget.icon),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white)
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400)
          )
        ),
        icon: const Icon(Icons.arrow_drop_down),
        onChanged:(value) {
  
        }, items: [],     
      ),
    );
  }
}