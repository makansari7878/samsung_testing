import 'package:flutter/material.dart';

import 'package:samsung_testing/flavour_config.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final config = FlavorConfig.config;

    return Scaffold(
      appBar: AppBar(
        title: Text(config.appName),
        backgroundColor: config.primaryColor,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 20),
            if (!config.isPaid) _buildUpgradeButton(),
            if (config.isPaid) _buildPremiumFeature(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: config.primaryColor,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildUpgradeButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      onPressed: _showUpgradeDialog,
      child: const Text('UPGRADE TO PREMIUM'),
    );
  }

  Widget _buildPremiumFeature() {
    return const Column(
      children: [
        Icon(Icons.star, size: 50, color: Colors.amber),
        Text('Premium Feature Unlocked!'),
      ],
    );
  }

  void _showUpgradeDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Go Premium'),
        content: const Text('Unlock all features with our premium version!'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Maybe Later'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              // Add your purchase logic here
            },
            child: const Text('Upgrade Now'),
          ),
        ],
      ),
    );
  }
}