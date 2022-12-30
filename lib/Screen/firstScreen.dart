import 'package:checkbox_widget/Screen/checkBoxWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {

  FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  Text textresult =Text('데이터가 없음');
  @override
  Widget build(BuildContext context) {

    print('build 실행');
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  final result = await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CheckBoxWidget(),
                    ),
                  );
                },
                child: Text('CheckBoxWidget'),
              ),
              textresult,
            ],
          ),
        ),
      ),
    );
  }
}
