import 'package:flutter/material.dart';
import 'package:optomatica_flutter_task/core/utils/app_styles.dart';
import 'package:optomatica_flutter_task/core/utils/colors_pallet.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late final TextEditingController _myController;
  @override
  void initState() {
    _myController = TextEditingController();
    _myController.text = DateTime.now().toString().split(" ")[0];
    super.initState();
  }

  @override
  void dispose() {
    _myController.dispose();
    super.dispose();
  }

  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _myController.text = picked.toString().split(" ")[0];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      readOnly: true,
      onTap: () {
        _selectDate(context);
      },
      controller: _myController,
      style: TextStyle(height: 1.0, color: ColorPallet.orangeColor),
      decoration: InputDecoration(
        hintText: _myController.text,
        prefixIconColor: ColorPallet.primaryColor,
        hintStyle: AppStyles.styleSubTitle14,
        prefixIcon: const Icon(Icons.calendar_month),
        enabledBorder: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: ColorPallet.secondBlueColor,
      ),
      borderRadius: BorderRadius.circular(
        8,
      ),
    );
  }
}
