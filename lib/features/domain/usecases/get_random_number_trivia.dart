import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usercases/UseCase.dart';
import '../entities/number_trivia.dart';
import '../repository/number_trivia_repository.dart';

class GetRandomNumberTrivia extends UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>> call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
