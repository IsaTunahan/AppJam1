import 'package:flutter/material.dart';

class CreateFrom extends StatefulWidget {
  const CreateFrom({super.key});

  @override
  State<CreateFrom> createState() => _CreateFromState();
}

class _CreateFromState extends State<CreateFrom> {
  final Map<String, dynamic> giris = {};
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Etkinlik Oluştur'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Etkinlik Adi'),
                    ),
                    validator: (value) {
                      if (value?.isNotEmpty != true) {
                        return 'Etkinlik adını boş bırakmayınız';
                      }
                      return null;
                    },
                    onSaved: (newValue) {
                      giris['etkinlik adi'] = newValue;
                    },
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
