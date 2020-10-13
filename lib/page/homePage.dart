import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_example/controller/controller.dart';

import 'navigatePage.dart';

class Home extends StatelessWidget {
  final controller = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Validação de CPF:',
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                onChanged: controller.validCpf,
                keyboardType: TextInputType.number,
              ),
              GetX<MyController>(
                builder: (_) => MaterialButton(
                  minWidth: double.infinity,
                  child: Text(
                    "Prosseguir",
                    style: TextStyle(fontSize: 14),
                  ),
                  color: Colors.grey,
                  textColor: Colors.white,
                  onPressed: controller.isValid
                      ? () {
                          Get.to(NavigatePage());
                        }
                      : null,
                ),
              ),
            ],
          )),
    ));
  }
}
