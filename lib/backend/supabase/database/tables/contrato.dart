import '../database.dart';

class ContratoTable extends SupabaseTable<ContratoRow> {
  @override
  String get tableName => 'contrato';

  @override
  ContratoRow createRow(Map<String, dynamic> data) => ContratoRow(data);
}

class ContratoRow extends SupabaseDataRow {
  ContratoRow(super.data);

  @override
  SupabaseTable get table => ContratoTable();

  int get idContrato => getField<int>('id_contrato')!;
  set idContrato(int value) => setField<int>('id_contrato', value);

  int? get idRol => getField<int>('id_rol');
  set idRol(int? value) => setField<int>('id_rol', value);

  int? get idPersonal => getField<int>('id_personal');
  set idPersonal(int? value) => setField<int>('id_personal', value);

  DateTime? get fechaIngreso => getField<DateTime>('fecha_ingreso');
  set fechaIngreso(DateTime? value) =>
      setField<DateTime>('fecha_ingreso', value);

  DateTime? get fechaFin => getField<DateTime>('fecha_fin');
  set fechaFin(DateTime? value) => setField<DateTime>('fecha_fin', value);
}
