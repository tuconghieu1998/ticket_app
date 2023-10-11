class Utils {
  static convertRunTime(int minutes) {
    int nHour = (minutes / 60).floor();
    int nMinutes = minutes - nHour * 60;
    String result = "";
    if (nHour > 0) {
      result += "${nHour}h ";
    }
    result += "${nMinutes}min";
    return result;
  }
}
