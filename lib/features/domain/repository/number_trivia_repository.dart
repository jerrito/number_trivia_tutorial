import 'package:dartz/dartz.dart';
import 'package:nmber_trivia_app/core/error/failures.dart';
import 'package:nmber_trivia_app/features/domain/entities/number_trivia.dart';

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
