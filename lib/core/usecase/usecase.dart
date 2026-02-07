import 'package:WinWin/core/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class Usecase<type, params> {
  Future<Either<Failure, type>> call(params params);
}
