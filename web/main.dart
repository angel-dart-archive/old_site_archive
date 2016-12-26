import 'package:angular2/platform/browser.dart';
import 'package:angular2/platform/common.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/router.dart';
import 'package:angular2_components/angular2_components.dart';
import 'components/angel_site/angel_site.dart';
import 'services/title.dart';

main() {
  bootstrap(AngelSiteComponent, [
    ROUTER_PROVIDERS,
    materialProviders,
    provide(LocationStrategy, useClass: HashLocationStrategy),
    TitleService
  ]);
}
