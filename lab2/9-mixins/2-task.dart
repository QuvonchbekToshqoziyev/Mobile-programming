interface class DBConnector {
  void connect() {}
  void query(String sql) {}
}

class MySQLConnector implements DBConnector {
  @override
  void connect() => print('Connected to MySQL');

  @override
  void query(String sql) => print('MySQL executing: $sql');
}

void main() {
  final db = MySQLConnector();
  db.connect();
  db.query('SELECT * FROM users');
}