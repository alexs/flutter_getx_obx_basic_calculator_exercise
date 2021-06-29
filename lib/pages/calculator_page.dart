import 'package:flutter/material.dart';
import 'package:flutter_getx_obx_basic_calculator_exercise/controllers/calculator_controller.dart';
import 'package:get/get.dart';

class CalculatorPage extends StatelessWidget {
  const CalculatorPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double number1 = 0.0;
    double number2 = 0.0;

    return GetBuilder<CalculatorController>(
        init: CalculatorController(),
        builder: (_) {
          return Scaffold(
            body: SafeArea(
              child: Container(
                margin: EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Número 1'),
                      onChanged: (number) {
                        _.number1.value = double.parse(number);
                      },
                    ),
                    Obx(() {
                      return Text(_.operatorSymb.value,
                          style: TextStyle(fontSize: 30));
                    }),
                    TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Número 2'),
                      onChanged: (number) {
                        _.number2.value = double.parse(number);
                      },
                    ),
                    Text("Resultado: ", style: TextStyle(fontSize: 30)),
                    Obx(() => Text(_.result.value.toString(),
                        style: TextStyle(fontSize: 30))),
                    Wrap(
                      direction: Axis.horizontal,
                      children: [
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            _.suma();
                          },
                          child: const Text('Sumar'),
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            _.resta();
                          },
                          child: const Text('Restar'),
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            _.multiplica();
                          },
                          child: const Text('Multiplicar'),
                        ),
                        ElevatedButton(
                          style: TextButton.styleFrom(
                            textStyle: const TextStyle(fontSize: 20),
                          ),
                          onPressed: () {
                            _.divide();
                          },
                          child: const Text('Dividir'),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
