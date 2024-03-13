import 'package:flutter/material.dart';

import '../../core/helpers/colors.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({super.key, required this.onPressed});
  final Future<void> Function() onPressed;
  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      style: ElevatedButton.styleFrom(backgroundColor: tertiaryColor),
      onPressed: () async {
        if (_isLoading) return;
        setState(() {
          _isLoading = true;
        });
        await widget.onPressed();
        setState(() {
          _isLoading = false;
        });
      },
      child: SizedBox(
        width: size.width - 64,
        child: Center(
          child: Text(
            _isLoading ? 'Carregando' : 'REGISTRAR-SE',
            style: const TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 16,
              color: primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
