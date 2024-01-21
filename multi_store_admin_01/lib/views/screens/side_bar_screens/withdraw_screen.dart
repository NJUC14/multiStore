import 'package:flutter/material.dart';

class WithdrawScreen extends StatelessWidget {
  WithdrawScreen({super.key});

  static const String routeName = '\WithdrawScreen';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        padding: const EdgeInsets.all(10),
        child: const Text(
          'WithDrawal',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ),
    );
  }
}
