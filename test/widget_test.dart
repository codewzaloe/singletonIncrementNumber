import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:singlegslc/main.dart';
import 'package:singlegslc/singleton.dart'; // Pastikan untuk mengimpor Singleton

void main() {
  testWidgets('Increment number on button press', (WidgetTester tester) async {
    // Build aplikasi dan trigger frame tanpa menggunakan 'const'.
    await tester.pumpWidget(MyApp());  // Hapus 'const' di sini

    // Verifikasi bahwa angka dimulai dari 0.
    expect(find.text('Current Number: 0'), findsOneWidget);
    expect(find.text('Current Number: 1'), findsNothing);

    // Tap tombol untuk increment angka.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verifikasi bahwa angka telah bertambah.
    expect(find.text('Current Number: 0'), findsNothing);
    expect(find.text('Current Number: 1'), findsOneWidget);
  });
}
