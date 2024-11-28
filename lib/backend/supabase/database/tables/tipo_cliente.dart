import '../database.dart';

class TipoClienteTable extends SupabaseTable<TipoClienteRow> {
  @override
  String get tableName => 'tipo_cliente';

  @override
  TipoClienteRow createRow(Map<String, dynamic> data) => TipoClienteRow(data);
}

class TipoClienteRow extends SupabaseDataRow {
  TipoClienteRow(super.data);

  @override
  SupabaseTable get table => TipoClienteTable();

  int get idTipocliente => getField<int>('id_tipocliente')!;
  set idTipocliente(int value) => setField<int>('id_tipocliente', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);
}
