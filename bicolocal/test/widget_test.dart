import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:bicolocal/main.dart';

void main() {
  testWidgets('Filtro por categoria mostra só os bicos dela', (tester) async {
    await tester.pumpWidget(const BicoLocalApp());

    expect(find.text('Cortar grama do quintal'), findsOneWidget);
    expect(find.text('Trocar chuveiro'), findsOneWidget);

    final chipReparos = find.widgetWithText(ChoiceChip, 'Reparos');
    await tester.ensureVisible(chipReparos);
    await tester.tap(chipReparos);
    await tester.pump();

    expect(find.text('Trocar chuveiro'), findsOneWidget);
    expect(find.text('Limpar calhas'), findsOneWidget);
    expect(find.text('Cortar grama do quintal'), findsNothing);
  });
}