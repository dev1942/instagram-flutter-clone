import 'package:mixpanel_flutter/mixpanel_flutter.dart';

class MixpanelManager {
  static Mixpanel? _instance;
  static String projectToken = "6e50e4e7e4734f80f0404051f1574ab0";
  static Future<Mixpanel> initMixpanel() async {
    _instance ??= await Mixpanel.init(projectToken, trackAutomaticEvents: true);
    return _instance!;
  }

  static Mixpanel get instance {
    assert(_instance != null, "Mixpanel must be initialized first");
    return _instance!;
  }
}
