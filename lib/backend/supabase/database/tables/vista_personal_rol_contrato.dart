import '../database.dart';

class VistaPersonalRolContratoTable
    extends SupabaseTable<VistaPersonalRolContratoRow> {
  @override
  String get tableName => 'vista_personal_rol_contrato';

  @override
  VistaPersonalRolContratoRow createRow(Map<String, dynamic> data) =>
      VistaPersonalRolContratoRow(data);
}

class VistaPersonalRolContratoRow extends SupabaseDataRow {
  VistaPersonalRolContratoRow(super.data);

  @override
  SupabaseTable get table => VistaPersonalRolContratoTable();

  int? get idPersonal => getField<int>('id_personal');
  set idPersonal(int? value) => setField<int>('id_personal', value);

  String? get nombrePersonal => getField<String>('nombre_personal');
  set nombrePersonal(String? value) =>
      setField<String>('nombre_personal', value);

  String? get apellidoPersonal => getField<String>('apellido_personal');
  set apellidoPersonal(String? value) =>
      setField<String>('apellido_personal', value);

  DateTime? get fechaNacimiento => getField<DateTime>('fecha_nacimiento');
  set fechaNacimiento(DateTime? value) =>
      setField<DateTime>('fecha_nacimiento', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get correoPersonal => getField<String>('correo_personal');
  set correoPersonal(String? value) =>
      setField<String>('correo_personal', value);

  String? get direccionPersonal => getField<String>('direccion_personal');
  set direccionPersonal(String? value) =>
      setField<String>('direccion_personal', value);

  String? get dniPersonal => getField<String>('dni_personal');
  set dniPersonal(String? value) => setField<String>('dni_personal', value);

  String? get estadoPersonal => getField<String>('estado_personal');
  set estadoPersonal(String? value) =>
      setField<String>('estado_personal', value);

  String? get descripcionRol => getField<String>('descripcion_rol');
  set descripcionRol(String? value) =>
      setField<String>('descripcion_rol', value);

  DateTime? get fechaIngreso => getField<DateTime>('fecha_ingreso');
  set fechaIngreso(DateTime? value) =>
      setField<DateTime>('fecha_ingreso', value);

  DateTime? get fechaFin => getField<DateTime>('fecha_fin');
  set fechaFin(DateTime? value) => setField<DateTime>('fecha_fin', value);
}
