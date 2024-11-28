import '../database.dart';

class MaquinariaTable extends SupabaseTable<MaquinariaRow> {
  @override
  String get tableName => 'maquinaria';

  @override
  MaquinariaRow createRow(Map<String, dynamic> data) => MaquinariaRow(data);
}

class MaquinariaRow extends SupabaseDataRow {
  MaquinariaRow(super.data);

  @override
  SupabaseTable get table => MaquinariaTable();

  int get idMaquinaria => getField<int>('id_maquinaria')!;
  set idMaquinaria(int value) => setField<int>('id_maquinaria', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  double? get horometro => getField<double>('horometro');
  set horometro(double? value) => setField<double>('horometro', value);

  PostgresTime? get inicio => getField<PostgresTime>('inicio');
  set inicio(PostgresTime? value) => setField<PostgresTime>('inicio', value);

  PostgresTime? get fin => getField<PostgresTime>('fin');
  set fin(PostgresTime? value) => setField<PostgresTime>('fin', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get anioCompra => getField<int>('anio_compra');
  set anioCompra(int? value) => setField<int>('anio_compra', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  int? get idMarca => getField<int>('id_marca');
  set idMarca(int? value) => setField<int>('id_marca', value);

  int? get idModelo => getField<int>('id_modelo');
  set idModelo(int? value) => setField<int>('id_modelo', value);

  int? get idTipoMaquinaria => getField<int>('id_tipo_maquinaria');
  set idTipoMaquinaria(int? value) =>
      setField<int>('id_tipo_maquinaria', value);
}