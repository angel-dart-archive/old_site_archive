import 'dart:html';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:material_menu/material_menu.dart';
import 'package:material_sidenav/material_sidenav.dart';
import 'package:material_toolbar/material_toolbar.dart';
import '../../services/title.dart';
import '../home/home.dart';

@RouteConfig(const [
  const Route(
      path: '/', name: 'Home', component: HomeComponent, useAsDefault: true)
])
@Component(
    selector: 'angel-site',
    templateUrl: 'angel_site.html',
    styleUrls: const [
      'angel_site.css'
    ],
    directives: const [
      menuDirectives,
      GlyphComponent,
      MaterialSidenavComponent,
      MaterialToolbarComponent,
      ROUTER_DIRECTIVES
    ])
class AngelSiteComponent {
  final TitleService _titleService;
  bool open = false;

  String get title => _titleService.title;

  AngelSiteComponent(this._titleService);

  void goTo(String url) {
    window.location.href = url;
  }
}
