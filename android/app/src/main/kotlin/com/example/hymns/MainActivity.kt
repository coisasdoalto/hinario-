package com.example.hymns

import io.flutter.embedding.android.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity: FlutterActivity() {
}

override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
   super.configureFlutterEngine(flutterEngine)
   GeneratedPluginRegistrant.registerWith(flutterEngine);
   configureChannels(flutterEngine)
}