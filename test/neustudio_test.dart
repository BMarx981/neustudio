import 'package:flutter_test/flutter_test.dart';

import 'package:neustudio/neustudio.dart';

void main() {
  testWidgets('Press the neumorphic button', (tester) async {
    final button = NeuStudioButton(
      onTap: () {
        print("Hello button");
      },
    );
    await tester.pumpWidget(button);
    expect(button, findsOneWidget);
  });
}
