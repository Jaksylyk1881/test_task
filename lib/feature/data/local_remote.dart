import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/feature/data/text_dto.dart';

class LocalRemote {
  Future<Either<Exception, TextDTO>> getText() async {
    try {
      final response = jsonDecode(await rootBundle.loadString('assets/sample.json'));

      return Right(TextDTO.fromJson(response as Map<String, dynamic>));
    } catch (e) {
      log(e.toString());
      return Left(Exception(e.toString()));
    }
  }
}
