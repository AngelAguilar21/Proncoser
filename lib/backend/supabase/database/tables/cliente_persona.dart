import '../database.dart';

class ClientePersonaTable extends SupabaseTable<ClientePersonaRow> {
  @override
  String get tableName => 'cliente_persona';

  @override
  ClientePersonaRow createRow(Map<String, dynamic> data) =>
      ClientePersonaRow(data);
}

class ClientePersonaRow extends SupabaseDataRow {
  ClientePersonaRow(super.data);

  @override
  SupabaseTable get table => ClientePersonaTable();

  int get idClientePersona => getField<int>('id_cliente_persona')!;
  set idClientePersona(int value) => setField<int>('id_cliente_persona', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get sexo => getField<String>('sexo');
  set sexo(String? value) => setField<String>('sexo', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);
}
