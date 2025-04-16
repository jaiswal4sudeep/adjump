import 'dart:developer';

import 'package:adjump/adjump.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Adjump _adjumpPlugin = Adjump.instance;

  Future<void> _initSDK() async {
    try {
      await _adjumpPlugin.initSDK(
        accountId: '<ACCOUNT_ID>',
        appId: '<APP_ID>',
        userId: '<USER_ID>',
      );
      log('SDK Initialized Successfully');
    } catch (e) {
      log('Failed to initialize SDK: $e');
    }
  }

  Future<void> _showOfferwall() async {
    try {
      await _adjumpPlugin.showOfferwall();
      log('Offerwall Shown');
    } catch (e) {
      log('Failed to show Offer Wall: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Adjump'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: _initSDK,
                child: const Text('Initialize SDK'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _showOfferwall,
                child: const Text('Show Offer Wall'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
