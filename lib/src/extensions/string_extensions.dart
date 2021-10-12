extension StringExtension on String {
  get capitalize =>
      isNotEmpty ? "${this[0].toUpperCase()}${substring(1)}" : this;

  get toLower => isNotEmpty ? toLowerCase() : this;

  get toUpper => isNotEmpty ? toUpperCase() : this;

  get slugify => isNotEmpty
      ? replaceAll(RegExp(r'[\s+|\W]'), ' ').replaceAll(RegExp(r'\s+'), '-')
      : this;

  get escapeSlug => replaceAll(RegExp(r'\W|_'), ' ');
}
