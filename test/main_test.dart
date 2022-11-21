import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rfa_skill_selection/main.dart';

void main() {
  group('Initial display', () {
    testWidgets('Is it displayed two skills each for arm,abs,leg,yoga,heal',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      expect(
          find.byWidgetPredicate((widget) =>
              widget is CheckboxListTile && widget.tileColor == Colors.red),
          findsNWidgets(2));
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CheckboxListTile && widget.tileColor == Colors.amber),
          findsNWidgets(2));
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CheckboxListTile &&
              widget.tileColor == Colors.deepPurple),
          findsNWidgets(2));
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CheckboxListTile && widget.tileColor == Colors.teal),
          findsNWidgets(2));
      expect(
          find.byWidgetPredicate((widget) =>
              widget is CheckboxListTile && widget.tileColor == Colors.pink),
          findsNWidgets(2));
    });

    testWidgets('Is the selected skill set to `[5,5,5,3,3,1,1,1,0,0]`',
        (WidgetTester tester) async {
      await tester.pumpWidget(const App());

      expect(find.text('攻撃範囲5'), findsNWidgets(3));
      expect(find.text('攻撃範囲3'), findsNWidgets(2));
      expect(find.text('攻撃範囲1'), findsNWidgets(3));
      expect(find.text('回復'), findsNWidgets(2));
    });
  });
}
