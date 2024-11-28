import '../database.dart';

class TipoDetalleTable extends SupabaseTable<TipoDetalleRow> {
  @override
  String get tableName => 'tipo_detalle';

  @override
  TipoDetalleRow createRow(Map<String, dynamic> data) => TipoDetalleRow(data);
}

class TipoDetalleRow extends SupabaseDataRow {
  TipoDetalleRow(super.data);

  @override
  SupabaseTable get table => TipoDetalleTable();

  int get idTipoDetalle => getField<int>('id_tipo_detalle')!;
  set idTipoDetalle(int value) => setField<int>('id_tipo_detalle', value);

  String get descripcion => getField<String>('descripcion')!;
  set descripcion(String value) => setField<String>('descripcion', value);
}
