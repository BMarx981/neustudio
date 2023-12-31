import 'package:flutter_test/flutter_test.dart';

import 'package:neustudio/neustudio.dart';

void main() {
  testWidgets('Press the neumorphic button', (tester) async {
    const button = NeuStudioButton();
    await tester.pumpWidget(button);
  });
}
