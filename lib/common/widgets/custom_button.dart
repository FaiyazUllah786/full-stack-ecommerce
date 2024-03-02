import 'package:flutter/material.dart';

import '../../constants/global_var.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String btnText;
  const CustomButton({
    super.key,
    required this.onTap,
    required this.btnText,
  });

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(width, 80),
        shape: const ContinuousRectangleBorder(),
      ),
      onPressed: onTap,
      child: Text(
        btnText,
        style: const TextStyle(color: GlobalVar.white, fontSize: 20),
      ),
    );
  }
}
