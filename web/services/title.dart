import 'dart:html';
import 'package:angular2/angular2.dart';

@Injectable()
class TitleService {
  String _title = 'The Angel Framework';

  String get title => _title;

  void set title(String value) {
    if (value == null) {
      document.title = _title = 'The Angel Framework';
    } else
      document.title = '${_title = value} - Angel';
  }
}
