import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import '../../services/title.dart';

@Component(
    selector: 'project-about',
    templateUrl: 'about.html',
    directives: const [ROUTER_DIRECTIVES])
class AboutComponent implements OnActivate {
  final TitleService _titleService;

  AboutComponent(this._titleService);

  @override
  routerOnActivate(_, __) {
    _titleService.title = 'About';
  }
}
