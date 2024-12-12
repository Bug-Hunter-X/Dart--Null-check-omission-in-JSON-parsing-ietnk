# Dart Null Safety and JSON Parsing

This repository demonstrates a common error in Dart when parsing JSON data and accessing nested properties without proper null checks.  The `bug.dart` file shows the flawed code which can lead to runtime exceptions.  The solution, shown in `bugSolution.dart`, incorporates null checks to prevent these exceptions.

## Problem:

The original code attempts to access deeply nested JSON properties without verifying if the intermediate levels exist or are not null. If any of the keys ('nested' or 'data' in this example) are missing or their values are null, this will result in a runtime exception.

## Solution:

The solution implements comprehensive null checks before accessing each nested property.  This prevents unexpected exceptions and enhances code robustness.

## Usage:

1. Clone the repository.
2. Run `bug.dart` to see the exception. 
3. Run `bugSolution.dart` to see how null safety is handled correctly.