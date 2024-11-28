import '../database.dart';

class ModeloTable extends SupabaseTable<ModeloRow> {
  @override
  String get tableName => 'modelo';

  @override
  ModeloRow createRow(Map<String, dynamic> data) => ModeloRow(data);
}

class ModeloRow extends SupabaseDataRow {
  ModeloRow(super.data);

  @override
  SupabaseTable get table => ModeloTable();

  int? get idMarca => getField<int>('id_marca');
  set idMarca(int? value) => setField<int>('id_marca', value);

  int get idModelo => getField<int>('id_modelo')!;
  set idModelo(int value) => setField<int>('id_modelo', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
