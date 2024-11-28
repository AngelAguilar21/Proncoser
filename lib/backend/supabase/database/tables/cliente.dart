import '../database.dart';

class ClienteTable extends SupabaseTable<ClienteRow> {
  @override
  String get tableName => 'cliente';

  @override
  ClienteRow createRow(Map<String, dynamic> data) => ClienteRow(data);
}

class ClienteRow extends SupabaseDataRow {
  ClienteRow(super.data);

  @override
  SupabaseTable get table => ClienteTable();

  int get idCliente => getField<int>('id_cliente')!;
  set idCliente(int value) => setField<int>('id_cliente', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get telefono => getField<String>('telefono');
  set telefono(String? value) => setField<String>('telefono', value);

  int? get idTipoCliente => getField<int>('id_tipo_cliente');
  set idTipoCliente(int? value) => setField<int>('id_tipo_cliente', value);
}
