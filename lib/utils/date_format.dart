class DateFormat {
  String ddMMYYYYHHMM(DateTime? value) {
    return "${value!.day}/${value.month}/${value.year} " +
        "${value.hour}:${value.minute}";
  }
}
