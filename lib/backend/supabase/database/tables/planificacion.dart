import '../database.dart';

class PlanificacionTable extends SupabaseTable<PlanificacionRow> {
  @override
  String get tableName => 'planificacion';

  @override
  PlanificacionRow createRow(Map<String, dynamic> data) =>
      PlanificacionRow(data);
}

class PlanificacionRow extends SupabaseDataRow {
  PlanificacionRow(super.data);

  @override
  SupabaseTable get table => PlanificacionTable();

  int get idPlanificacion => getField<int>('id_planificacion')!;
  set idPlanificacion(int value) => setField<int>('id_planificacion', value);

  DateTime? get fecha => getField<DateTime>('fecha');
  set fecha(DateTime? value) => setField<DateTime>('fecha', value);

  PostgresTime? get horaInicio => getField<PostgresTime>('hora_inicio');
  set horaInicio(PostgresTime? value) =>
      setField<PostgresTime>('hora_inicio', value);

  PostgresTime? get horaFin => getField<PostgresTime>('hora_fin');
  set horaFin(PostgresTime? value) => setField<PostgresTime>('hora_fin', value);

  int? get idCliente => getField<int>('id_cliente');
  set idCliente(int? value) => setField<int>('id_cliente', value);

  int? get idOperador => getField<int>('id_operador');
  set idOperador(int? value) => setField<int>('id_operador', value);

  int? get idMaquinaria => getField<int>('id_maquinaria');
  set idMaquinaria(int? value) => setField<int>('id_maquinaria', value);

  int? get idLugar => getField<int>('id_lugar');
  set idLugar(int? value) => setField<int>('id_lugar', value);
}
