import 'package:dart_express/dart_express.dart';
import './lib/logger.dart';
import './routes/router.dart';

main() {
  final app = express();

  app.set('print routes', true);

  app.use(BodyParser.json());
  app.use(CorsMiddleware.use());

  app.engine(MarkdownEngine.use());
  app.engine(MustacheEngine.use());

  app.useRouter('/', MainRouter());

  app.listen(
      port: 3000,
      cb: (port) => logger('STARTUP', 'Server listening on port $port'));
}
