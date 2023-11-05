import 'package:flutter/material.dart';

class MyDateTimePicker extends StatefulWidget {
  const MyDateTimePicker({Key? key}) : super(key: key);

  @override
  _MyDateTimePickerState createState() => _MyDateTimePickerState();
}

class _MyDateTimePickerState extends State<MyDateTimePicker> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text("${selectedDate.toLocal()}".split(' ')[0]),
        const SizedBox(
          height: 20.0,
        ),
        ElevatedButton(
          onPressed: () => {
            _selectDate(context),
            // ignore: avoid_print
            print(
                "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}")
          },
          child: const Text('Pilih Tanggal'),
        ),
      ],
    );
  }
}