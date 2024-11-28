import '../database.dart';

class MarcaTable extends SupabaseTable<MarcaRow> {
  @override
  String get tableName => 'marca';

  @override
  MarcaRow createRow(Map<String, dynamic> data) => MarcaRow(data);
}

class MarcaRow extends SupabaseDataRow {
  MarcaRow(super.data);

  @override
  SupabaseTable get table => MarcaTable();

  int get idMarca => getField<int>('id_marca')!;
  set idMarca(int value) => setField<int>('id_marca', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
