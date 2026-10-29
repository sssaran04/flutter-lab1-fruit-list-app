import 'package:flutter_test/flutter_test.dart';

import 'package:fruit_list_app/main.dart';

void main() {
  testWidgets('Shows app title and fruit items', (WidgetTester tester) async {
    await tester.pumpWidget(const FruitListApp());

    expect(find.text('Fruit List App'), findsOneWidget);
    expect(find.text('Apple'), findsOneWidget);
    expect(find.text('10 items'), findsOneWidget);

    // Tapping a card shows a SnackBar with the fruit name.
    await tester.tap(find.text('Apple'));
    await tester.pump();
    expect(find.text('You tapped Apple'), findsOneWidget);
  });
}
