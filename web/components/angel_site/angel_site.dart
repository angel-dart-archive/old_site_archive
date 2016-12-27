import 'dart:html';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';
import 'package:material_menu/material_menu.dart';
import 'package:material_sidenav/material_sidenav.dart';
import 'package:material_toolbar/material_toolbar.dart';
import '../../services/title.dart';
import '../about/about.dart';
import '../get_started/get_started.dart';
import '../home/home.dart';

@RouteConfig(const [
  const Route(
      path: '/', name: 'Home', component: HomeComponent, useAsDefault: true),
  const Route(path: '/about', name: 'About', component: AboutComponent),
  const Route(
      path: '/getting-started',
      name: 'Get-Started',
      component: GetStartedComponent)
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
  final Router _router;
  final TitleService _titleService;
  bool open = false;

  String get icon => isHome ? 'menu' : 'arrow_back';

  bool get isHome => _titleService.isHome;

  String get title => _titleService.title;

  AngelSiteComponent(this._router, this._titleService);

  void goTo(String url) {
    window.location.href = url;
  }

  void handleIconClick() {
    if (isHome) {
      open = !open;
    } else {
      _router.navigate(['Home']);
    }
  }
}
