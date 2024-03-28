extension TimeFormatsX on Duration {
  String toElapsedTime() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(inSeconds.remainder(60));

    return "${twoDigits(inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  String toTimeInString() {
    String twoDigits(int n) => n.toString().padLeft(2, "0");

    final seconds = inSeconds.remainder(60);

    String twoDigitSeconds = twoDigits(seconds);

    return "$twoDigitSeconds sec";
  }
}
