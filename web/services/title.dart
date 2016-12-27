import 'dart:html';
import 'package:angular2/angular2.dart';

@Injectable()
class TitleService {
  String _title = 'The Angel Framework';

  bool get isHome => _title == null;

  String get title => _title ?? 'The Angel Framework';

  void set title(String value) {
    if (value == null) {
      _title = null;
      document.title = title;
    } else
      document.title = '${_title = value} - Angel';
  }
}
