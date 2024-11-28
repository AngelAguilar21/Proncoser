import '../database.dart';

class VistaClientePersonaTable extends SupabaseTable<VistaClientePersonaRow> {
  @override
  String get tableName => 'vista_cliente_persona';

  @override
  VistaClientePersonaRow createRow(Map<String, dynamic> data) =>
      VistaClientePersonaRow(data);
}

class VistaClientePersonaRow extends SupabaseDataRow {
  VistaClientePersonaRow(super.data);

  @override
  SupabaseTable get table => VistaClientePersonaTable();

  int? get idClientePersona => getField<int>('id_cliente_persona');
  set idClientePersona(int? value) =>
      setField<int>('id_cliente_persona', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

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
