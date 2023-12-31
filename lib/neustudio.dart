library neustudio;

import 'package:flutter/material.dart';

class NeuStudioButton extends StatefulWidget {
  const NeuStudioButton({
    super.key,
    this.onTap,
  });
  final Function? onTap;

  @override
  State<NeuStudioButton> createState() => _NeuStudioButtonState();
}

class _NeuStudioButtonState extends State<NeuStudioButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            widget.onTap;
          },
          child: Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.white,
                offset: Offset(2, 2),
                blurRadius: 2,
              ),
              BoxShadow(
                color: Colors.grey,
                offset: Offset(-2, -2),
                blurRadius: 2,
              ),
            ]),
          ),
        )
      ],
    );
  }
}
