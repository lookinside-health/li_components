library sisgocomponents;

import 'package:sisgocomponents/src/app_color_styles.dart';

export 'src/custom_button_widget.dart';
export 'src/custom_dropdown_widget.dart';
export 'src/custom_input_widget.dart';
export 'src/custom_text_widget.dart';

AppColorStyles colorStyles = AppColorStyles.instance;

class SisgoComponents {
  static bool _isInitialized = false;

  static void init({
    required primary,
    required secondary,
    required warning,
    required danger,
    required neutral,
  }) {
    if (!_isInitialized) {
      AppColorStyles.instance.initAppColorStyles(
        primary: primary,
        secondary: secondary,
        warning: warning,
        danger: danger,
        neutral: neutral,
      );
      _isInitialized = true;
    }
  }
}
