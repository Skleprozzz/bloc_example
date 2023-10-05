extension DateTimeExtension on DateTime {
  bool withinDateRange(DateTime start, DateTime end) =>
      isAtSameMomentAs(start) ||
      isAtSameMomentAs(end) ||
      (isAfter(start) &&
          isBefore(
            end,
          ));
}
