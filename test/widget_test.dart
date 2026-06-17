import 'package:flutter_test/flutter_test.dart';
import 'package:voluntariado_idmji/app/app.dart';

void main() {
  testWidgets('VolunteerApp se crea correctamente', (tester) async {
    await tester.pumpWidget(const VolunteerApp());

    expect(find.text('Voluntariado IDMJI'), findsOneWidget);
  });
}