import '../database.dart';

class DetallePlanTable extends SupabaseTable<DetallePlanRow> {
  @override
  String get tableName => 'detalle_plan';

  @override
  DetallePlanRow createRow(Map<String, dynamic> data) => DetallePlanRow(data);
}

class DetallePlanRow extends SupabaseDataRow {
  DetallePlanRow(super.data);

  @override
  SupabaseTable get table => DetallePlanTable();

  int get idDetallePlan => getField<int>('id_detalle_plan')!;
  set idDetallePlan(int value) => setField<int>('id_detalle_plan', value);

  int? get idPlanificacion => getField<int>('id_planificacion');
  set idPlanificacion(int? value) => setField<int>('id_planificacion', value);

  int? get idTipoDetalle => getField<int>('id_tipo_detalle');
  set idTipoDetalle(int? value) => setField<int>('id_tipo_detalle', value);

  String? get descripcion => getField<String>('descripcion');
  set descripcion(String? value) => setField<String>('descripcion', value);

  int? get idPersonal => getField<int>('id_personal');
  set idPersonal(int? value) => setField<int>('id_personal', value);
}
