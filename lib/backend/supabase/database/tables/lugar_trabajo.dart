import '../database.dart';

class LugarTrabajoTable extends SupabaseTable<LugarTrabajoRow> {
  @override
  String get tableName => 'lugar_trabajo';

  @override
  LugarTrabajoRow createRow(Map<String, dynamic> data) => LugarTrabajoRow(data);
}

class LugarTrabajoRow extends SupabaseDataRow {
  LugarTrabajoRow(super.data);

  @override
  SupabaseTable get table => LugarTrabajoTable();

  int get idLugarTrabajo => getField<int>('id_lugar_trabajo')!;
  set idLugarTrabajo(int value) => setField<int>('id_lugar_trabajo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
