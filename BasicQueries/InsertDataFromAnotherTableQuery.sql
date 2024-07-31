insert into salarios(nombre_empleado,apellido_empleado,sueldo)
select nombre as nombre_empleado, apellido as apellido_empleado, salario as  sueldo
from Empleados
where salario>2500;