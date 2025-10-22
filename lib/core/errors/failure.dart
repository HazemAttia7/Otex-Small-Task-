import 'package:sqflite/sqflite.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class DatabaseFailure extends Failure {
  DatabaseFailure(super.message);

  factory DatabaseFailure.fromDatabaseException(Object e) {
    if (e is DatabaseException) {
      if (e.isOpenFailedError()) {
        return DatabaseFailure("Failed to open the database.");
      } else if (e.isNoSuchTableError()) {
        return DatabaseFailure("Table not found in database.");
      } else if (e.isSyntaxError()) {
        return DatabaseFailure("SQL syntax error.");
      } else if (e.isDatabaseClosedError()) {
        return DatabaseFailure("Database is closed.");
      } else if (e.isUniqueConstraintError()) {
        return DatabaseFailure("Duplicate entry. This record already exists.");
      } else if (e.isNotNullConstraintError()) {
        return DatabaseFailure("A required field was null.");
      } else if (e.isOpenFailedError()) {
        return DatabaseFailure("Could not open database file.");
      } else if (e.isReadOnlyError()) {
        return DatabaseFailure("Database is read-only.");
      } else {
        return DatabaseFailure("Database error: ${e.toString()}");
      }
    } else {
      return DatabaseFailure("Unexpected error: ${e.toString()}");
    }
  }
}
