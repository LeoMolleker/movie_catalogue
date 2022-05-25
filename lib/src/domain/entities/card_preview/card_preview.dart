import 'package:json_annotation/json_annotation.dart';

part 'card_preview.g.dart';

@JsonSerializable()
class CardPreview{
  final int id;
  final String poster_path;
  final num vote_average;

  CardPreview({
    required this.id,
    required this.poster_path,
    required this.vote_average,
  });

  factory CardPreview.fromJson(
      final Map<String, dynamic> json,
      ) =>
      _$CardPreviewFromJson(json);
}
