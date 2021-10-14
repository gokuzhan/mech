extension DateTimeExtension on DateTime {
  /// Number of nanoseconds in time
  int get toNanoSeconds => microsecondsSinceEpoch * 1000;

  /// Number of microseconds in time
  int get toMicroSeconds => microsecondsSinceEpoch;

  /// Number of milliseconds in time
  int get toMilliSeconds => millisecondsSinceEpoch;

  /// Number of seconds in time
  int get toSeconds => toMilliSeconds ~/ 1000;

  /// Number of minutes in time
  int get toMinutes => toSeconds ~/ 60;

  /// Number of hours in time
  double get toHours => toMinutes / 60;

  // static DateTime fromNanoSeconds(int nanoSeconds) {
  //   return fromMilliSeconds(nanoSeconds * 1000);
  // }
  //
  // static DateTime fromMicroSeconds(int microSeconds) {
  //   return DateTime.fromMillisecondsSinceEpoch(microSeconds);
  // }
  //
  // static DateTime fromMilliSeconds(int milliSeconds) {
  //   return DateTime.fromMillisecondsSinceEpoch(milliSeconds);
  // }
  //
  // static DateTime fromSeconds(int seconds) {
  //   return fromMilliSeconds(seconds * 1000);
  // }
  //
  // static DateTime fromMinutes(int minutes) {
  //   return fromSeconds(minutes * 60);
  // }
  //
  // static DateTime fromHours(int hours) {
  //   return fromMinutes(hours * 60);
  // }
}
