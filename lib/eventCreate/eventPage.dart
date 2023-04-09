import 'package:app_jam/colors.dart';
import 'package:app_jam/eventCreate/category_Selection.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class EventPage extends StatefulWidget {
  const EventPage({super.key});

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  List<String> _selectedEvents = [];
  void _addEvent(String event) {
    setState(() {
      _selectedEvents.add(event);
    });
  }

  var _createTitleController = TextEditingController();
  var _createDescriptionController = TextEditingController();
  var _createDateController = TextEditingController();
  var _creatTimeController = TextEditingController();

  TimeOfDay _timeOfDay = const TimeOfDay(hour: 8, minute: 30);

  void _showTimePicker(BuildContext context) async {
    var _pickedTime =
        await showTimePicker(context: context, initialTime: TimeOfDay.now());
    if (_pickedTime != null) {
      setState(() {
        _timeOfDay = _pickedTime;
        _creatTimeController.text = _pickedTime.format(context).toString();
      });
    }
  }

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
                    hintText: 'Tarih Seçiniz',
                    prefixIcon: InkWell(
                      onTap: () {
                        _selectedCreateDate(context);
                      },
                      child: const Icon(Icons.calendar_today),
                    )),
              ),
              TextField(
                controller: _creatTimeController,
                decoration: InputDecoration(
                    labelText: 'Saat',
                    hintText: 'Saat Seçiniz',
                    prefixIcon: InkWell(
                      onTap: () {
                        _showTimePicker(context);
                      },
                      child: const Icon(Icons.timer),
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ButtonTheme(
                    minWidth: 100.0,
                    height: 40.0,
                    child: IconButton(
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) =>
                                  EventSelectionPage(onEventAdded: _addEvent)),
                        );
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Kategori:',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              ..._selectedEvents.map((event) => Text(event)),
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
