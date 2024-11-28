import '../database.dart';

class TipoMaquinariaTable extends SupabaseTable<TipoMaquinariaRow> {
  @override
  String get tableName => 'tipo_maquinaria';

  @override
  TipoMaquinariaRow createRow(Map<String, dynamic> data) =>
      TipoMaquinariaRow(data);
}

class TipoMaquinariaRow extends SupabaseDataRow {
  TipoMaquinariaRow(super.data);

  @override
  SupabaseTable get table => TipoMaquinariaTable();

  int get idTipoMaquinaria => getField<int>('id_tipo_maquinaria')!;
  set idTipoMaquinaria(int value) => setField<int>('id_tipo_maquinaria', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
