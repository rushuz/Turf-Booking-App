import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:turf_booking_app/main.dart'; // Ensure correct import

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TurfBookingApp());

    // Verify that the home screen loads correctly
    expect(find.text('Turf Booking'), findsOneWidget);
  });
}
