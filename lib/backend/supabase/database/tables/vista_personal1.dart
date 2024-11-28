import '../database.dart';

class VistaPersonal1Table extends SupabaseTable<VistaPersonal1Row> {
  @override
  String get tableName => 'vista_personal1';

  @override
  VistaPersonal1Row createRow(Map<String, dynamic> data) =>
      VistaPersonal1Row(data);
}

class VistaPersonal1Row extends SupabaseDataRow {
  VistaPersonal1Row(super.data);

  @override
  SupabaseTable get table => VistaPersonal1Table();

  int? get idPersonal => getField<int>('id_personal');
  set idPersonal(int? value) => setField<int>('id_personal', value);

  String? get nombre => getField<String>('nombre');
  set nombre(String? value) => setField<String>('nombre', value);

  String? get apellido => getField<String>('apellido');
  set apellido(String? value) => setField<String>('apellido', value);

  DateTime? get fechaNacimiento => getField<DateTime>('fecha_nacimiento');
  set fechaNacimiento(DateTime? value) =>
      setField<DateTime>('fecha_nacimiento', value);

  int? get edad => getField<int>('edad');
  set edad(int? value) => setField<int>('edad', value);

  String? get celular => getField<String>('celular');
  set celular(String? value) => setField<String>('celular', value);

  String? get correo => getField<String>('correo');
  set correo(String? value) => setField<String>('correo', value);

  String? get direccion => getField<String>('direccion');
  set direccion(String? value) => setField<String>('direccion', value);

  String? get dni => getField<String>('dni');
  set dni(String? value) => setField<String>('dni', value);

  String? get estado => getField<String>('estado');
  set estado(String? value) => setField<String>('estado', value);

  String? get rol => getField<String>('rol');
  set rol(String? value) => setField<String>('rol', value);
}
