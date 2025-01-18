Future<String> fetchData() {
  return Future.delayed(Duration(seconds: 3), () => "Data Fetched");
}

void main() async {
  print("Fetchind Data... Please Wait");
  String data = await fetchData();
  print(data);
  print("Data Fetched Successfully");
}
