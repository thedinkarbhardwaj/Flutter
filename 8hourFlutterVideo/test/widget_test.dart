import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_video/app/app.dart';

void main(){
  testWidgets("Hello World test", (WidgetTester tester) async {

    await tester.pumpWidget(MyApp());

    expect(find.byType(Container), findsOneWidget);
    expect(find.text("Hello World"), findsOneWidget);

  });
}