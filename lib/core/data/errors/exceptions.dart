import 'dart:io';


/// Exception for incompatible data types
class IncompatibleDataException implements Exception {
  final String message;

  IncompatibleDataException(this.message);
}

/// Exception for errors related to data retrieval
class CacheException implements Exception {}

/// Exceptions for errors related to [Channel]
class ChannelNotReadyException implements Exception {}

/// Exceptions for errors related to [Socket]
class SocketNotReadyException implements Exception {}

class SocketTimeoutException implements Exception {}

class DuplicateCharacterException implements Exception {
  final String source;
  final String duplicates;

  DuplicateCharacterException({
    required this.source,
    required this.duplicates,
  });

  @override
  String toString() {
    return "Exception: Alphabets cannot contain duplicate characters, found $duplicates in $source";
  }
}
