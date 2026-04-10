import 'package:flutter_test/flutter_test.dart';
import 'package:glaz/app/glaz_app.dart';

void main() {
  test('GlazApp can be created', () {
    const app = GlazApp();

    expect(app, isNotNull);
    expect(app, isA<GlazApp>());
  });
}
