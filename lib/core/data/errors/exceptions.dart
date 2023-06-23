import 'dart:io';


/// Exception for incompatible data types
class IncompatibleDataException implements Exception {
  final String message;

  IncompatibleDataException(this.message);
}

/// Exception for errors related to data retrieval
class CacheException implements Exception {}

/// Exception for errors related to data retrieval
class NoInternetException implements Exception {}

