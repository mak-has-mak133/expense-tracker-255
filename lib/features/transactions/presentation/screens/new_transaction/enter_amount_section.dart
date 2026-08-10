import 'package:flutter/material.dart';

class EnterAmountSection extends StatefulWidget {
  const EnterAmountSection({super.key});

  @override
  State<EnterAmountSection> createState() => _EnterAmountSectionState();
}

class _EnterAmountSectionState extends State<EnterAmountSection> {
  final TextEditingController _controller = TextEditingController();
  double _textFieldWidth = 60.0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _updateWidth() {
    final text = _controller.text.isEmpty ? '0.00' : _controller.text;
    final style = Theme.of(context).textTheme.headlineLarge!;

    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();

    setState(() {
      // Add a buffer for the cursor and a minimum width
      _textFieldWidth = textPainter.width + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.2,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 28.0),
              child: Text(
                'Enter Amount',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$',
                  style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: _textFieldWidth.clamp(60.0, MediaQuery.of(context).size.width * 0.7),
                  child: TextField(
                    controller: _controller,
                    onChanged: (_) => _updateWidth(),
                    autofocus: true,
                    keyboardType: const TextInputType.numberWithOptions(decimal: true),
                    style: Theme.of(context).textTheme.headlineLarge,
                    decoration: InputDecoration(
                      hintText: '0.00',
                      border: InputBorder.none,
                      hintStyle: Theme.of(context).textTheme.headlineLarge!.copyWith(
                        color: Theme.of(
                          context,
                        ).colorScheme.secondary.withValues(alpha: 0.5),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
