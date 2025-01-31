// Autogenerated from Pigeon (v17.1.2), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import, no_leading_underscores_for_local_identifiers
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:help_scout_beacon/help_scout_beacon_api.g.dart';

class _TestHelpScoutBeaconApiCodec extends StandardMessageCodec {
  const _TestHelpScoutBeaconApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is HSBeaconSettings) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is HSBeaconUser) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128: 
        return HSBeaconSettings.decode(readValue(buffer)!);
      case 129: 
        return HSBeaconUser.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

/// Help Scout Beacon API
abstract class TestHelpScoutBeaconApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding => TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> pigeonChannelCodec = _TestHelpScoutBeaconApiCodec();

  /// Initialize the beacon with a beaconId and optional settings
  void setup({required HSBeaconSettings settings});

  /// Signs in with a Beacon user. This gives Beacon access to the user’s name, email address, and signature.
  void identify({required HSBeaconUser beaconUser});

  /// Opens the Beacon SDK from a specific view controller. The Beacon view controller will be presented as a modal.
  void open({required HSBeaconSettings settings, HSBeaconRoute route = HSBeaconRoute.ask, String? parameter,});

  /// Logs the current Beacon user out and clears out their information from local storage.
  void clear();

  static void setup(TestHelpScoutBeaconApi? api, {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.setup', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.setup was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HSBeaconSettings? arg_settings = (args[0] as HSBeaconSettings?);
          assert(arg_settings != null,
              'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.setup was null, expected non-null HSBeaconSettings.');
          try {
            api.setup(settings: arg_settings!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.identify', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.identify was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HSBeaconUser? arg_beaconUser = (args[0] as HSBeaconUser?);
          assert(arg_beaconUser != null,
              'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.identify was null, expected non-null HSBeaconUser.');
          try {
            api.identify(beaconUser: arg_beaconUser!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.open', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, (Object? message) async {
          assert(message != null,
          'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.open was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HSBeaconSettings? arg_settings = (args[0] as HSBeaconSettings?);
          assert(arg_settings != null,
              'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.open was null, expected non-null HSBeaconSettings.');
          final HSBeaconRoute? arg_route = args[1] == null ? null : HSBeaconRoute.values[args[1]! as int];
          assert(arg_route != null,
              'Argument for dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.open was null, expected non-null HSBeaconRoute.');
          final String? arg_parameter = (args[2] as String?);
          try {
            api.open(settings: arg_settings!, route: arg_route!, parameter: arg_parameter);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<Object?>(
          'dev.flutter.pigeon.help_scout_beacon.HelpScoutBeaconApi.clear', pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger.setMockDecodedMessageHandler<Object?>(__pigeon_channel, (Object? message) async {
          try {
            api.clear();
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          }          catch (e) {
            return wrapResponse(error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
