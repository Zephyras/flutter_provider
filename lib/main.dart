import 'package:flutter/material.dart';
import 'package:flutter_provider/auto_dispose/auto_dispose_page.dart';
import 'package:flutter_provider/auto_dispose_family/auto_dispose_family_page.dart';
import 'package:flutter_provider/basic/basic_page.dart';
import 'package:flutter_provider/family/family_page.dart';
import 'package:flutter_provider/widgets/custom_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Provider',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.all(20),
          children: [
            CustomButton(title: 'Provider', child: BasicPage()),
            CustomButton(
                title: 'AutoDisposeProvider', child: AutoDisposePage()),
            CustomButton(title: 'FamilyProvider', child: FamilyPage()),
            CustomButton(
                title: 'AutoDisposeFamilyProvider',
                child: AutoDisposeFamilyPage()),
          ],
        ),
      ),
    );
  }
}
