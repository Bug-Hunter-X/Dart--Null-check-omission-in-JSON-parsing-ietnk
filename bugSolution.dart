```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);

      //Proper null checks to prevent exceptions
      final nestedData = jsonData['nested']?['data'];
      if (nestedData != null) {
        print(nestedData);
      } else {
        print('Nested data not found');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    rethrow;
  }
}
```