import 'package:dartz/dartz.dart';
import 'package:{{project_name}}/common/core/utils/errors/exceptions.dart';

typedef ResultFuture<T> = Future<Either<Exception, T>>;

typedef ResultVoid = ResultFuture<void>;

typedef DataMap = Map<String, dynamic>;

typedef DynamicRouteCreator<T> = String Function(T value);
