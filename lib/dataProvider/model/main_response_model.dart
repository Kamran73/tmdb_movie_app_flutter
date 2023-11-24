import 'package:freezed_annotation/freezed_annotation.dart';

import 'movie_model.dart';

part 'main_response_model.freezed.dart';

part 'main_response_model.g.dart';

@freezed
abstract class MainResponseModel with _$MainResponseModel {
  @JsonSerializable(explicitToJson: true)
  const factory MainResponseModel({
    int? page,
    @JsonKey(name: "results") List<Movie>? movies,
    int? totalPages,
    int? totalResults,
    @JsonKey(name: "status_code") int? statusCode,
    @JsonKey(name: "status_message") String? statusMessage,
  }) = _MainResponseModel;

  factory MainResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MainResponseModelFromJson(json);
}
