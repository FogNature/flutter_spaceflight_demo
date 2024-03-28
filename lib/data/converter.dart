import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:spaceflight/data/response/articles_response.dart';

class MyConverter implements Converter {
  @override
  Response<BodyType> convertResponse<BodyType, InnerType>(Response response) {
    var body = ArticlesResponse.fromJson(jsonDecode(response.body));
    return response.copyWith<BodyType>(body: body as BodyType);
  }

  @override
  Request convertRequest(Request request) {
    var body = request.body;
    return request.copyWith(body: body);
  }
}
