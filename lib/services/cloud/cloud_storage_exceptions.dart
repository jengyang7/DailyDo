class CloudStorageException implements Exception {
  const CloudStorageException();
}

// C in CRUD
class CouldNotCreateNoteExceptopn extends CloudStorageException {}

// G in CRUD
class CouldNotGetAllNotesExceptopn extends CloudStorageException {}

// U in CRUD
class CouldNotUpdateNotesExceptopn extends CloudStorageException {}

// D in CRUD
class CouldNotDeleteNotesExceptopn extends CloudStorageException {}
