import 'package:barback/barback.dart';
import 'package:stylus/stylus.dart';

class StylusTransformer extends Transformer {
  @override
  String get allowedExtensions => '.styl';

  StylusTransformer.asPlugin();

  @override
  apply(Transform transform) {
    var asset = transform.primaryInput;
    var stream = StylusProcess.start(new StylusOptions(path: asset.id.path));
    transform.addOutput(
        new Asset.fromStream(asset.id.changeExtension('.css'), stream));
  }
}
