import '../database.dart';

class RolTable extends SupabaseTable<RolRow> {
  @override
  String get tableName => 'rol';

  @override
  RolRow createRow(Map<String, dynamic> data) => RolRow(data);
}

class RolRow extends SupabaseDataRow {
  RolRow(super.data);

  @override
  SupabaseTable get table => RolTable();

  int get idRol => getField<int>('id_rol')!;
  set idRol(int value) => setField<int>('id_rol', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
