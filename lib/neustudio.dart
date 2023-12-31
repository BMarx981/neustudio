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
        Expanded(
          child: GestureDetector(
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
              child: const Text("Title goes here."),
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.lerp(Colors.grey, Colors.white, .1) as Color,
                  Color.lerp(Colors.white, Colors.green[100], .2) as Color,
                ]),
            boxShadow: [
              // Shadow for top-left corner
              BoxShadow(
                color: Colors.green.shade300,
                offset: const Offset(5, 5),
                blurRadius: 3,
                spreadRadius: 1,
              ),
              // Shadow for bottom-right corner
              const BoxShadow(
                color: Colors.white54,
                offset: Offset(-4, -4),
                blurRadius: 3,
                spreadRadius: 1,
              ),
            ],
            border: Border.all(
              width: 0.6,
              color: Colors.white.withOpacity(.5),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
