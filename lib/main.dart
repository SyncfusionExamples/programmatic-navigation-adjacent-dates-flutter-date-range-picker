import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() => runApp(ProgrammaticAdjacentDatePicker());

class ProgrammaticAdjacentDatePicker extends StatefulWidget {
  @override
  AdjacentDateState createState() => AdjacentDateState();
}

class AdjacentDateState extends State<ProgrammaticAdjacentDatePicker> {
  final DateRangePickerController _controller = DateRangePickerController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(30, 20, 0, 20),
                    child: ElevatedButton.icon(
                      icon: Icon(Icons.arrow_back),
                      label: Text('Backward'),
                      onPressed: () {
                        _controller.backward!();
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(70, 20, 0, 20),
                    child: ElevatedButton.icon(
                      label: Text('Forward'),
                      icon: Icon(Icons.arrow_forward),
                      onPressed: () {
                        _controller.forward!();
                      },
                    ),
                  )
                ],
              ),
              Card(
                margin: const EdgeInsets.fromLTRB(50, 50, 40, 110),
                child: SfDateRangePicker(
                  view: DateRangePickerView.month,
                  controller: _controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
