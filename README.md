![](https://raw.githubusercontent.com/CampusLands/DER/main/DER.jpg)

**1. Listar todas las ventas que se realizaron en el mes de julio de 2023**

```sql
http://localhost:8080/ventas/numeroMes/{mes}/año/{año}
```

**2. Seleccionar todos los empleados con sus respectivos cargos y municipios**

```sql
http://localhost:8080/empleados/info/cargos_municipios
```

**3. Obtener la lista de todas las ventas con la información de los clientes y la forma de pago**

```sql
http://localhost:8080/ventas/info/clientes_forma_pago
```

**4. Mostrar los detalles de todas las órdenes junto con los nombres de los empleados y clientes asociados**

```sql
http://localhost:8080/detalleordenes/info/detalles_empleados_clientes
```

**5. Listar los productos disponibles en el inventario junto con su talla y color**

```sql
http://localhost:8080/inventario/info/productos_talla_color
```

**6. Mostrar todos los proveedores junto con la lista de insumos que suministra**

```sql
http://localhost:8080/proveedores/info/insumos
```

**7. Encontrar la cantidad de ventas realizadas por cada empleado**

```sql
http://localhost:8080/empleados/info/cantidad_ventas
```

**8. Mostrar la lista de órdenes en proceso junto con los nombres de los clientes y empleados asociados**

```sql
http://localhost:8080/ordenes/estado/proceso/info/clientes_empleados
```

**9. Obtener el nombre de la empresa y su respectivo representante legal junto con el nombre del municipio al que pertenecen**

```sql
http://localhost:8080/empresa/info/representante_legal_municipio
```

**10. Mostrar la lista de prendas y su respectivo stock disponible**

```sql
http://localhost:8080/inventario/info/prendas_stock
```

**11. Encontrar el nombre de los clientes que realizaron compras en una fecha específica junto con la cantidad de artículos comprados**

```sql
http://localhost:8080/clientes/fecha/especifica/info/nombre_cantidad_comprada
```

**12. Mostrar la lista de empleados y la duración de su empleo en años**

```sql
http://localhost:8080/empleados/info/duracion_empleo
```

**13. Obtener el nombre de las prendas junto con el valor total de ventas en dólares para cada una**

```sql
http://localhost:8080/prendas/info/valor_total_ventas_dolares
```

**14. Obtener el nombre de las prendas junto con la cantidad mínima y máxima de insumos necesarios para su fabricación**

```sql
http://localhost:8080/prendas/info/min_max_insumos
```

**15. Mostrar la lista de ventas realizadas en un rango de fechas específico junto con el nombre del cliente y la forma de pago**

```sql
http://localhost:8080/ventas/fecha/{fecha1yfecha2}/info/cliente_forma_pago
```

**16. Obtener el nombre de las prendas y su valor unitario en dólares junto con el estado de disponibilidad**

```sql
http://localhost:8080/prendas/info/valor_unitario_disponibilidad
```

**17. Mostrar la lista de clientes y la cantidad de compras que han realizado**

```sql
http://localhost:8080/clientes/info/cantidad_compras
```

**18. Obtener la lista de órdenes junto con el estado actual y la fecha en que se crearon**

```sql
http://localhost:8080/ordenes/info/estado_fecha_creacion
```

**19. Obtener el nombre y la descripción de los cargos con un sueldo base superior a 2.000.000**

```sql
http://localhost:8080/cargos/sueldo_base/2000000
```

**20. Mostrar la lista de clientes con sus respectivos municipios y países**

```sql
http://localhost:8080/clientes/info/municipios_paises
```

**21. Obtener la descripción de los tipos de protección y el número de prendas asociadas a cada tipo**

```sql
http://localhost:8080/tipos_proteccion/info/descripcion_cantidad_prendas
```

**22. Mostrar la lista de empleados con sus cargos y fechas de ingreso ordenados por la fecha de ingreso de manera descendente**

```sql
http://localhost:8080/empleados/info/cargos_fecha_ingreso/orden/descendente
```

**23. Mostrar la descripción de todos los cargos junto con la cantidad de empleados en cada cargo**

```sql
http://localhost:8080/cargos/info/descripcion_cantidad_empleados
```

**24. Obtener la descripción de los estados junto con la cantidad de prendas asociadas a cada estado**

```sql
http://localhost:8080/estados/info/descripcion_cantidad_prendas/orden/ascendente
```

**25. Obtener el nombre de los tipos de persona junto con la cantidad de clientes asociados a cada tipo**

```sql
http://localhost:8080/tipos_persona/info/descripcion_cantidad_clientes
```

**26. Obtener la descripción de los estados junto con la cantidad de órdenes asociadas a cada estado**

```sql
http://localhost:8080/estados/info/descripcion_cantidad_ordenes
```

**27. Obtener la descripción de las forma de pago junto con la cantidad de ventas asociadas a cada tipo**

```sql
http://localhost:8080/formas_pago/info/descripcion_cantidad_ventas
```

**28. Mostrar el nombre y la descripción de los insumos junto con la cantidad de prendas que los utilizan**

```sql
http://localhost:8080/insumos/info/nombre_descripcion_cantidad_prendas
```

**29. Obtener el nombre de los clientes y la cantidad total gastada por cada uno en ventas**

```sql
http://localhost:8080/clientes/info/nombre_total_gastado
```

**30. Mostrar el nombre de las prendas junto con el valor total de ventas en pesos colombianos para cada una**

```sql
http://localhost:8080/prendas/info/valor_total_ventas_pesos
```

**31. Mostrar la descripción de los estados junto con la cantidad de prendas asociadas a cada estado en orden ascendente de la cantidad de prendas**

```sql
http://localhost:8080/estados/info/descripcion_cantidad_prendas/orden/ascendente
```
