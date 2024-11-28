import '../database.dart';

class VistaClienteEmpresaTable extends SupabaseTable<VistaClienteEmpresaRow> {
  @override
  String get tableName => 'vista_cliente_empresa';

  @override
  VistaClienteEmpresaRow createRow(Map<String, dynamic> data) =>
      VistaClienteEmpresaRow(data);
}

class VistaClienteEmpresaRow extends SupabaseDataRow {
  VistaClienteEmpresaRow(super.data);

  @override
  SupabaseTable get table => VistaClienteEmpresaTable();

  int? get idClienteEmpresa => getField<int>('id_cliente_empresa');
  set idClienteEmpresa(int? value) =>
      setField<int>('id_cliente_empresa', value);

  String? get razonSocial => getField<String>('razon_social');
  set razonSocial(String? value) => setField<String>('razon_social', value);

  String? get ruc => getField<String>('ruc');
  set ruc(String? value) => setField<String>('ruc', value);

  String? get representante => getField<String>('representante');
  set representante(String? value) => setField<String>('representante', value);

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

  String? get tipoCliente => getField<String>('tipo_cliente');
  set tipoCliente(String? value) => setField<String>('tipo_cliente', value);
}
