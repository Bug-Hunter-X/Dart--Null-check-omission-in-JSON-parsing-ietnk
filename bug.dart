```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response is a JSON
      final jsonData = jsonDecode(response.body);
      // Accessing nested JSON data without checking for null
      final nestedData = jsonData['nested']['data'];
      print(nestedData);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Important: Re-throw the exception to be handled by higher-level functions if needed.
    rethrow; //this is important to rethrow the error, if you don't rethrow it the error is swallowed up.
  }
}
```