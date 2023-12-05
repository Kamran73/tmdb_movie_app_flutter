import 'package:dartz/dartz.dart';
import 'package:movies_app/base/failure.dart';
import 'package:movies_app/dataProvider/model/movie_model.dart';

abstract class TMDBRepository {
  Future<Either<Failure, List<Movie>>> getMovies();
}
