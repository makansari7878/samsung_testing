// lib/core/config/flavor_config.dart
import 'package:flutter/material.dart';

import 'app_config.dart';

class FlavorConfig {
  static AppConfig get config {
    const bool isPaid = bool.fromEnvironment('IS_PAID', defaultValue: false);

    return isPaid
        ? AppConfig(
      appName: "Premium App",
      isPaid: true,
      primaryColor: Colors.deepPurple,
    )
        : AppConfig(
      appName: "Free App",
      isPaid: false,
      primaryColor: Colors.green,
    );
  }
}