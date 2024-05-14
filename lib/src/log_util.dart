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

  static Logger logger = Logger();

  static String _tagValue = _defTag;

  static void init({
    String tag = _defTag,
    bool isDebug = false,
    PrettyPrinter? printer,
  }) {
    _tagValue = tag;
    _debugMode = isDebug;
    if (printer != null) {
      logger = Logger(printer: printer);
    }
  }

  static void d(Object? object, {String? tag}) {
    if (_debugMode) {
      logger.d("${tag != null ? "tag->$tag\n" : ''}${object?.toString()}");
    }
  }

  static void e(Object? object, {String? tag}) {
    if (_debugMode) {
      logger.e("${tag != null ? "tag->$tag\n" : ''}${object?.toString()}");
    }
  }

  static void v(Object? object, {String? tag}) {
    if (_debugMode) {
      logger.i("${tag != null ? "tag->$tag\n" : ''}${object?.toString()}");
    }
  }
}
