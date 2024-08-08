import 'package:dartz/dartz.dart';
import '../errors/failure.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams {}

class PageParams {
  const PageParams({
     this.page,
     this.size,
    this.movieId,
    this.query,

  });

  final int? page;
  final int? size;
  final int? movieId;
  final String? query;

}
