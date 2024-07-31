
alter table empleados add sexo char(1);

alter table empleados add fe_contratacion date;

alter table empleados drop column fe_contratacion, sexo;