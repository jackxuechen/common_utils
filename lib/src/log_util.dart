import 'package:logger/logger.dart';

/**
 * @Author: Sky24n
 * @GitHub: https://github.com/Sky24n
 * @Description: Log Util.
 * @Date: 2018/9/29
 */

/// Log Util.
class LogUtil {
  static const String _defTag = 'common_utils';
  static bool _debugMode = false; //是否是debug模式,true: log v 不输出.

  static var logger = Logger();

  static String _tagValue = _defTag;

  static void init({
    String tag = _defTag,
    bool isDebug = false,
    int maxLen = 128,
  }) {
    _tagValue = tag;
    _debugMode = isDebug;
  }

  static void d(Object? object, {String? tag}) {
    if (_debugMode) {
      if (tag?.isNotEmpty == true) {
        logger.d("tag->$tag");
      }
      logger.d(object);
    }
  }

  static void e(Object? object, {String? tag}) {
    if (_debugMode) {
      if (tag?.isNotEmpty == true) {
        logger.e("tag->$tag");
      }
      logger.e(object);
    }
  }

  static void v(Object? object, {String? tag}) {
    if (_debugMode) {
      if (tag?.isNotEmpty == true) {
        logger.i("tag->$tag");
      }
      logger.i(object);
    }
  }
}
