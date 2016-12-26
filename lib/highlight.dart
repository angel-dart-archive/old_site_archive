@JS()
library highlight;

import "package:js/js.dart";
import "dart:html" show Node;

/// Type definitions for highlight.js v7.5.0
/// Project: https://github.com/isagalaev/highlight.js
/// Definitions by: Niklas Mollenhauer <https://github.com/nikeee/>
/// Definitions: https://github.com/DefinitelyTyped/DefinitelyTyped

// Module highlight.js

// Module hljs
@JS("highlight.js.hljs.LANGUAGES")
external dynamic /*JSMap of <String,dynamic>*/ get LANGUAGES;
@JS("highlight.js.hljs.LANGUAGES")
external set LANGUAGES(dynamic /*JSMap of <String,dynamic>*/ v);
@JS("highlight.js.hljs.blockText")
external String blockText(Node block, bool ignoreNewLines);
@JS("highlight.js.hljs.blockLanguage")
external String blockLanguage(Node block);
@JS("highlight.js.hljs.highlight")
external IHighlightResult highlight(String language_name, String value);
@JS("highlight.js.hljs.highlightAuto")
external IHighlightResult highlightAuto(String text);
@JS("highlight.js.hljs.fixMarkup")
external String fixMarkup(String value, bool tabReplace, bool useBR);
@JS("highlight.js.hljs.highlightBlock")
external void highlightBlock(Node block, [bool tabReplace, bool useBR]);
@JS("highlight.js.hljs.initHighlighting")
external void initHighlighting();
@JS("highlight.js.hljs.initHighlightingOnLoad")
external void initHighlightingOnLoad();
@JS("highlight.js.hljs.tabReplace")
external String get tabReplace;
@JS("highlight.js.hljs.tabReplace")
external set tabReplace(String v);

/// Common regexps
@JS("highlight.js.hljs.IDENT_RE")
external String get IDENT_RE;
@JS("highlight.js.hljs.IDENT_RE")
external set IDENT_RE(String v);
@JS("highlight.js.hljs.UNDERSCORE_IDENT_RE")
external String get UNDERSCORE_IDENT_RE;
@JS("highlight.js.hljs.UNDERSCORE_IDENT_RE")
external set UNDERSCORE_IDENT_RE(String v);
@JS("highlight.js.hljs.NUMBER_RE")
external String get NUMBER_RE;
@JS("highlight.js.hljs.NUMBER_RE")
external set NUMBER_RE(String v);
@JS("highlight.js.hljs.C_NUMBER_RE")
external String get C_NUMBER_RE;
@JS("highlight.js.hljs.C_NUMBER_RE")
external set C_NUMBER_RE(String v);
@JS("highlight.js.hljs.BINARY_NUMBER_RE")
external String get BINARY_NUMBER_RE;
@JS("highlight.js.hljs.BINARY_NUMBER_RE")
external set BINARY_NUMBER_RE(String v);
@JS("highlight.js.hljs.RE_STARTERS_RE")
external String get RE_STARTERS_RE;
@JS("highlight.js.hljs.RE_STARTERS_RE")
external set RE_STARTERS_RE(String v);

/// Common modes
@JS("highlight.js.hljs.BACKSLASH_ESCAPE")
external IMode get BACKSLASH_ESCAPE;
@JS("highlight.js.hljs.BACKSLASH_ESCAPE")
external set BACKSLASH_ESCAPE(IMode v);
@JS("highlight.js.hljs.APOS_STRING_MODE")
external IMode get APOS_STRING_MODE;
@JS("highlight.js.hljs.APOS_STRING_MODE")
external set APOS_STRING_MODE(IMode v);
@JS("highlight.js.hljs.QUOTE_STRING_MODE")
external IMode get QUOTE_STRING_MODE;
@JS("highlight.js.hljs.QUOTE_STRING_MODE")
external set QUOTE_STRING_MODE(IMode v);
@JS("highlight.js.hljs.C_LINE_COMMENT_MODE")
external IMode get C_LINE_COMMENT_MODE;
@JS("highlight.js.hljs.C_LINE_COMMENT_MODE")
external set C_LINE_COMMENT_MODE(IMode v);
@JS("highlight.js.hljs.C_BLOCK_COMMENT_MODE")
external IMode get C_BLOCK_COMMENT_MODE;
@JS("highlight.js.hljs.C_BLOCK_COMMENT_MODE")
external set C_BLOCK_COMMENT_MODE(IMode v);
@JS("highlight.js.hljs.HASH_COMMENT_MODE")
external IMode get HASH_COMMENT_MODE;
@JS("highlight.js.hljs.HASH_COMMENT_MODE")
external set HASH_COMMENT_MODE(IMode v);
@JS("highlight.js.hljs.NUMBER_MODE")
external IMode get NUMBER_MODE;
@JS("highlight.js.hljs.NUMBER_MODE")
external set NUMBER_MODE(IMode v);
@JS("highlight.js.hljs.C_NUMBER_MODE")
external IMode get C_NUMBER_MODE;
@JS("highlight.js.hljs.C_NUMBER_MODE")
external set C_NUMBER_MODE(IMode v);
@JS("highlight.js.hljs.BINARY_NUMBER_MODE")
external IMode get BINARY_NUMBER_MODE;
@JS("highlight.js.hljs.BINARY_NUMBER_MODE")
external set BINARY_NUMBER_MODE(IMode v);

@anonymous
@JS()
abstract class IHighlightResult {
  external num get relevance;
  external set relevance(num v);
  external num get keyword_count;
  external set keyword_count(num v);
  external String get value;
  external set value(String v);
  external factory IHighlightResult(
      {num relevance, num keyword_count, String value});
}

@anonymous
@JS()
abstract class IAutoHighlightResult implements IHighlightResult {
  external String get language;
  external set language(String v);
  external IAutoHighlightResult get second_best;
  external set second_best(IAutoHighlightResult v);
  external factory IAutoHighlightResult(
      {String language,
      IAutoHighlightResult second_best,
      num relevance,
      num keyword_count,
      String value});
}

/// Reference:
/// https://github.com/isagalaev/highlight.js/blob/master/docs/reference.rst
@anonymous
@JS()
abstract class IMode {
  external String get className;
  external set className(String v);
  external String get begin;
  external set begin(String v);
  external String get end;
  external set end(String v);
  external bool get beginWithKeyword;
  external set beginWithKeyword(bool v);
  external bool get endsWithParent;
  external set endsWithParent(bool v);
  external String get lexems;
  external set lexems(String v);
  external Object get keywords;
  external set keywords(Object v);
  external String get illegal;
  external set illegal(String v);
  external bool get excludeBegin;
  external set excludeBegin(bool v);
  external bool get excludeEnd;
  external set excludeEnd(bool v);
  external bool get returnBegin;
  external set returnBegin(bool v);
  external bool get returnEnd;
  external set returnEnd(bool v);
  external List<IMode> get contains;
  external set contains(List<IMode> v);
  external String get starts;
  external set starts(String v);
  external String get subLanguage;
  external set subLanguage(String v);
  external num get relevance;
  external set relevance(num v);
  external factory IMode(
      {String className,
      String begin,
      String end,
      bool beginWithKeyword,
      bool endsWithParent,
      String lexems,
      Object keywords,
      String illegal,
      bool excludeBegin,
      bool excludeEnd,
      bool returnBegin,
      bool returnEnd,
      List<IMode> contains,
      String starts,
      String subLanguage,
      num relevance});
}

// End module hljs
/* WARNING: export assignment not yet supported. */

// End module highlight.js

