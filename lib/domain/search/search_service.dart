import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:net_flek/domain/core/failures/main_failure.dart';
import 'package:net_flek/domain/search/model/search_response/search_response.dart';

abstract class SearchService {
  Future<Either<MainFailure, SearchResponse>> searchMovies({
    required String movieQuery,
  });
}
