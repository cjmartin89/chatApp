import 'package:chat_app/themes/theme_provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings'),
      foregroundColor: Colors.grey,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(8),
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // dark mode
            const Text('Dark Mode'),
            // switch toggle
            CupertinoSwitch(
              value: Provider.of<ThemeProvider>(context, listen: false).isDarkMode, 
              onChanged: (value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme()),
          ],
        ),
      ),
    );
  }
}