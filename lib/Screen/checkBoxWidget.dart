import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({Key? key}) : super(key: key);

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool? _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CheckboxListTile(
                value: _isChecked,
                title: Text('체크하세요'),
                onChanged: (value) {
                  setState(() {
                    _isChecked = value;

                    if(_isChecked == true){
                      print(_isChecked);

                      Navigator.pop(context,'데이터전달완료');
                    }
                  });
                }),
          ],
        ),
      ),
    );
  }
}
