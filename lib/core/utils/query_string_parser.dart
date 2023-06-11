Map<String, String> parseQueryString(String query) {
  return query.split("&").fold({}, (map, element) {
    int index = element.indexOf("=");
    if (index == -1) {
      if (element != "") {
        map[element] = "";
      }
    } else if (index != 0) {
      var key = element.substring(0, index);
      var value = element.substring(index + 1);
      map[key] = value;
    }

    return map;
  });
}
