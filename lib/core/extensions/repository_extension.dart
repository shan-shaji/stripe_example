// ignore_for_file: lines_longer_than_80_chars, comment_references

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../utils/either.dart';
import '../utils/failure.dart';

extension RepositoryExtension<T> on Future<T> {
  Future<Either<Failure, T>> makeRequest({
    ValueChanged<T>? onSuccess,
    VoidCallback? onFailure,
  }) async {
    try {
      final data = await this;
      onSuccess?.call(data);
      return Right(data);
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          message: e.message,
        ),
      );
    } catch (e) {
      return const Left(
        ServerFailure(
          message: 'Something went wrong. Please try again',
        ),
      );
    }
  }
}
