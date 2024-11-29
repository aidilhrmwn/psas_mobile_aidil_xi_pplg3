// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:psas_mobile_aidil_xi_pplg3/psas.dart';
 // Pastikan jalur ini sesuai dengan folder Anda

void main() {
  testWidgets('Login page has email, password fields, and login button', (WidgetTester tester) async {
    // Jalankan halaman PSAS
    await tester.pumpWidget(MaterialApp(home: Psas()));

    // Periksa apakah ada kolom email
    expect(find.byType(TextField), findsNWidgets(2)); // Ada dua TextField (email dan password)

    // Periksa label email
    expect(find.text('Email'), findsOneWidget);

    // Periksa label password
    expect(find.text('Password'), findsOneWidget);

    // Periksa apakah tombol login ada
    expect(find.text('Login'), findsOneWidget);

    // Masukkan teks ke kolom email dan password
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    await tester.enterText(find.byType(TextField).last, 'password123');

    // Tekan tombol login
    await tester.tap(find.text('Login'));

    // Tunggu animasi selesai
    await tester.pump();

    // Periksa apakah SnackBar muncul dengan pesan berhasil
    expect(find.text('Login Berhasil untuk test@example.com!'), findsOneWidget);
  });

  testWidgets('Shows error when email or password is empty', (WidgetTester tester) async {
    // Jalankan halaman PSAS
    await tester.pumpWidget(MaterialApp(home: Psas()));

    // Tekan tombol login tanpa memasukkan apa pun
    await tester.tap(find.text('Login'));

    // Tunggu animasi selesai
    await tester.pump();

    // Periksa apakah SnackBar muncul dengan pesan error
    expect(find.text('Email atau Password tidak boleh kosong!'), findsOneWidget);
  });
}