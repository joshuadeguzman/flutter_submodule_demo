import 'package:flutter_submodule/resources/repository.dart';

abstract class BaseBloc {
  final repository = Repository();
  void dispose() {}
}
