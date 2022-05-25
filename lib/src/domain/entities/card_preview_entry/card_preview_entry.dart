

import 'package:json_annotation/json_annotation.dart';

import '../card_preview/card_preview.dart';

part 'card_preview_entry.g.dart';

@JsonSerializable()
class CardPreviewEntry{
  final int page;
  final List<CardPreview> results;

  CardPreviewEntry({
    required this.page,
    required this.results,
  });

  factory CardPreviewEntry.fromJson(
    final Map<String, dynamic> json,
  ) =>
      _$CardPreviewEntryFromJson(json);
}
