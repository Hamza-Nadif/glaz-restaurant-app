import 'package:flutter_test/flutter_test.dart';
import 'package:glaz/app/glaz_app.dart';

void main() {
  testWidgets('Glaz app renders', (WidgetTester tester) async {
    await tester.pumpWidget(const GlazApp());

    expect(find.byType(GlazApp), findsOneWidget);
  });
}
