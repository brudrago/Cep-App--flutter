sealed class Either<L, R> {
  const Either();
}

class Left<L, R> extends Either<L, R> {
  final L _left;

  const Left(this._left);

  L get left => _left;
}

class Right<L, R> extends Either<L, R> {
  final R _right;
  const Right(this._right);

  R get right => _right;
}