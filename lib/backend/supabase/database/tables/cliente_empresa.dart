import '../database.dart';

class ClienteEmpresaTable extends SupabaseTable<ClienteEmpresaRow> {
  @override
  String get tableName => 'cliente_empresa';

  @override
  ClienteEmpresaRow createRow(Map<String, dynamic> data) =>
      ClienteEmpresaRow(data);
}

class ClienteEmpresaRow extends SupabaseDataRow {
  ClienteEmpresaRow(super.data);

  @override
  SupabaseTable get table => ClienteEmpresaTable();

  int get idClienteEmpresa => getField<int>('id_cliente_empresa')!;
  set idClienteEmpresa(int value) => setField<int>('id_cliente_empresa', value);

  String? get razonSocial => getField<String>('razon_social');
  set razonSocial(String? value) => setField<String>('razon_social', value);

  String? get ruc => getField<String>('ruc');
  set ruc(String? value) => setField<String>('ruc', value);

  String? get representante => getField<String>('representante');
  set representante(String? value) => setField<String>('representante', value);
}
