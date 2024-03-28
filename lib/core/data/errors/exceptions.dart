/// Exception for incompatible data types
class IncompatibleDataException implements Exception {
  final String message;

  const IncompatibleDataException(this.message);
}

/// Exception for errors related to data retrieval
class CacheException implements Exception {
  const CacheException();
}

/// Exception for errors related to data retrieval
class NoInternetException implements Exception {
  const NoInternetException();
}
