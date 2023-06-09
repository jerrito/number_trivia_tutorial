import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usercases/UseCase.dart';
import '../entities/number_trivia.dart';
import '../repository/number_trivia_repository.dart';

class GetConcreteNumberTrivia extends UseCase<NumberTrivia, Params> {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);
  @override
  Future<Either<Failure, NumberTrivia>> call(Params params) async {
    return await repository.getConcreteNumberTrivia(params.number);
  }

  Future<Either<Failure, NumberTrivia>> execute({
    required int number,
  }) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
