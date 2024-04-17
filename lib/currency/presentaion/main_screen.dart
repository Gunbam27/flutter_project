import 'package:flutter/material.dart';
import 'package:flutter_project/currency/data/model/currency.dart';
import 'package:flutter_project/currency/presentaion/exchange_view_model.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('환율앱'),
      ),
      body: SizedBox(
        width: 700,
        height: 700,
        child: FormFields(),
      ),
    );
  }
}

class FormFields extends StatefulWidget {
  const FormFields({super.key});

  @override
  State<FormFields> createState() => _FormFieldsState();
}

class _FormFieldsState extends State<FormFields> {
  final _firstInputController = TextEditingController();
  final _secondInputController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.microtask(() {
      context.read<ExchangeViewModel>().firstArea();
    });
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<ExchangeViewModel>();
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: TextField(
                    controller: _firstInputController,
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      if (!(e == null)) {
                        viewModel.firstExchange(
                          double.parse(e),
                        );
                        _secondInputController.text =
                            ((viewModel.calcPrice * 100).round() / 100)
                                .toString();
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: DropdownButtonFormField<Currency>(
                  value: viewModel.userClickArea,
                  items: Currency.values
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.label)))
                      .toList(),
                  onChanged: (e) {
                    viewModel.firstArea(currency: e);
                    _firstInputController.text = '0';
                    _secondInputController.text = '0';
                  },
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: 100,
                  child: TextField(
                    controller: _secondInputController,
                    keyboardType: TextInputType.number,
                    onChanged: (e) {
                      viewModel.secondExchange(double.parse(e));
                      _firstInputController.text =
                          ((viewModel.userPrice * 100).round() / 100)
                              .toString();
                    },
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                height: 100,
                child: DropdownButtonFormField<Currency>(
                  value: viewModel.calcClickArea,
                  items: Currency.values
                      .map((e) =>
                          DropdownMenuItem(value: e, child: Text(e.label)))
                      .toList(),
                  onChanged: (e) {
                    viewModel.secondArea(e);
                    _firstInputController.text = '0';
                    _secondInputController.text = '0';
                  },
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
