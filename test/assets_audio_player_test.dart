import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  const MethodChannel channel = MethodChannel('assets_audio_player');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

}