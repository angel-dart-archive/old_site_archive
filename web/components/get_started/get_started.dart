import 'dart:html';
import 'package:angel_site/highlight.dart' as hljs;
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';
import '../../services/title.dart';

@Component(
    selector: 'get-started',
    templateUrl: 'get_started.html',
    styleUrls: const ['get_started.css'],
    directives: const [materialDirectives])
class GetStartedComponent implements OnActivate, OnInit {
  final ElementRef _ref;
  final TitleService _titleService;

  GetStartedComponent(this._ref, this._titleService);
  @override
  routerOnActivate(_, __) {
    _titleService.title = 'Getting Started';
  }

  @override
  ngOnInit() {
    DivElement div = _ref.nativeElement;
    div.querySelectorAll('code').forEach((block) => hljs.highlightBlock(block, true, true));
  }
}
