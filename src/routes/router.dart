import 'package:dart_express/dart_express.dart';

Router MainRouter() {
  final router = Router();

  router.get(
      "/",
      (req, res) => {
            res.json({"hey!": "suck my 12 inch dick bozo"})
          });

  return router;
}
