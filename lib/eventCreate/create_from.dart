import 'package:app_jam/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  var _createTitleController = TextEditingController();
  var _createDescriptionController = TextEditingController();
  var _createDateController = TextEditingController();

  DateTime _dateTime = DateTime.now();

  _selectedCreateDate(BuildContext context) async {
    var _pickedDate = await showDatePicker(
        context: context,
        initialDate: _dateTime,
        firstDate: DateTime(2000),
        lastDate: DateTime(2100));
    if (_pickedDate != null) {
      setState(() {
        _dateTime = _pickedDate;
        _createDateController.text =
            DateFormat('dd-MM-yyyy').format(_pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etkinlik oluştur'),
        centerTitle: true,
        backgroundColor: AppColors.blue,
      ),
      body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                controller: _createTitleController,
                decoration: const InputDecoration(
                  labelText: 'Etkinlik Adı',
                  hintText: 'Etkinlik Adı Yazınız',
                ),
              ),
              TextField(
                controller: _createDescriptionController,
                decoration: const InputDecoration(
                  labelText: 'Açıklama',
                  hintText: 'Açıklama Yazınız',
                ),
              ),
              TextField(
                controller: _createDateController,
                decoration: InputDecoration(
                    labelText: 'Tarih',
                    hintText: 'Tarih Giriniz',
                    prefixIcon: InkWell(
                      onTap: () {
                        _selectedCreateDate(context);
                      },
                      child: const Icon(Icons.calendar_today),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.red,
                  ),
                  child: const Text(
                    'Kaydet',
                    style: TextStyle(color: Colors.white),
                  )),
            ],
          )),
    );
  }
}
