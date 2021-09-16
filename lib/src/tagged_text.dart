import 'dart:convert';

import 'package:equatable/equatable.dart';

/// The character code Flutter uses to represent a widget span in a string.
const objectReplacementCharacterCode = 0xFFFC; // It's invisible, but here: '￼'

///
/// Tagged text.
///
class TaggedText extends Equatable {
  /// Associated tag, or null if none.
  final Object? tag;

  /// Full text of the TextSpan, or an empty string if it is a WidgetSpan.
  final String text;

  /// The index of the first referenced character in the [text].
  final int index;

  /// Returns a new [TaggedText].
  const TaggedText(this.tag, this.text, this.index);

  @override
  List<Object?> get props => [index, text, tag];

  @override
  String toString() {
    return '{ "tag": $tag, "index": $index, "text": ${jsonEncode(text)} }';
  }
}
