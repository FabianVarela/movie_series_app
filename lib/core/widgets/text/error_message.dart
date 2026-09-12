import 'package:material_ui/material_ui.dart';

class ErrorMessage extends StatelessWidget {
  const new({required this.message, this.fontSize = 30, super.key});

  final String message;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        message,
        textAlign: .center,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: .w500,
          color: Theme.of(context).colorScheme.error,
        ),
      ),
    );
  }
}
