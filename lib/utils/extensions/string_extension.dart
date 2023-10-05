extension StringExtension on String {
  /// Removing special symbols \n \t \r from text
  String removeNewlines() => replaceAll(RegExp('[\n\t\r]'), '');

  /// Replacing such symbols as \ / : * ? " < > | with _ (required for correct logos links format)
  String replaceSpecSymbols() => replaceAll(RegExp(r'[:*?"<>|\/]'), '_');

  String capitalize() {
    if (isEmpty) {
      return this;
    }

    return this[0].toUpperCase() + substring(1);
  }
}
