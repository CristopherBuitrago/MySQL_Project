# MySQL_Project

## Consultas Requeridas
### 1. Obtener el historial de reparaciones de un vehículo específico

```sql

SELECT v.IdVehicle AS Cod_Vehicle, v.Plate AS Plate, r.Date AS Repair_Date,
       e.Name1 AS Employee, s.ServiceName AS Service, r.TotalCost, r.Description
FROM repair r
JOIN vehicle v ON v.IdVehicle = r.FkVehicle
JOIN employe e ON e.IdEmploye = r.FkEmploye
JOIN service s ON s.IdService = r.FkService
WHERE v.IdVehicle = 3;

```

#### Resultado

![alt text](image.png)

#### Explicacion

La consulta utiliza las tablas `repair`, `vehicle`, `employe` y `service`
para obtener el historial de reparaciones de un vehículo específico.
Se utiliza el `JOIN` para relacionar las tablas y obtener la información necesaria.
Se utiliza el `WHERE` para filtrar el resultado y obtener solo el historial de reparaciones del vehículo con el `IdVehicle` especificado (en este caso, 3).
El resultado incluye la fecha de reparación, el empleado que realizó la reparación,
el servicio realizado, el costo total y la descripción de la reparación.

### 2. Calcular el costo total de todas las reparaciones realizadas por un empleado específico en un período de tiempo

```sql

SELECT e.Name1 AS Employee, SUM(r.TotalCost) AS TotalCost
FROM repair r
JOIN employe e ON e.IdEmploye = r.FkEmploye
WHERE r.Date BETWEEN '2024-01-01' AND '2024-02-01'
AND e.IdEmploye = 4
GROUP BY e.Name1;

```

#### Explicacion

La consulta utiliza las tablas `repair` y `employe` para calcular el costo total de
todas las reparaciones realizadas por un empleado específico en un período de tiempo.
Se utiliza el `JOIN` para relacionar las tablas y obtener la información necesaria.
Se utiliza el `WHERE` para filtrar el resultado y obtener solo las reparaciones realizadas por el empleado con el `IdEmploye` especificado (en este caso, 4).
Se utiliza el `BETWEEN` para filtrar el período de tiempo en el que se realizar
las reparaciones (en este caso, entre el 1 de enero de 2024 y el 1 de febrero de 2024).
Se utiliza el `SUM` para calcular el costo total de las reparaciones y el `GROUP BY`
para agrupar el resultado por empleado.

### 3. Listar todos los clientes y los vehículos que poseen

```sql

SELECT c.Name1 AS Customer, v.IdVehicle AS VehicleId, v.Plate AS Plate
FROM client c
JOIN vehicle v ON c.IdClient = v.FkClient
ORDER BY c.Name1
LIMIT 10;

```

#### Explicacion

La consulta utiliza las tablas `client` y `vehicle` para obtener la lista de clientes y
los vehículos que poseen. Se utiliza el `JOIN` para relacionar las tablas y
obtener la información necesaria. Se utiliza el `ORDER BY` para ordenar el resultado
por nombre de cliente y el `LIMIT` para obtener solo los 10 primeros resultados.

### 4. Obtener la cantidad de piezas en inventario para cada pieza

```sql

SELECT p.IdPiece AS Piece_Id, p.PieceName AS Piece_Name, SUM(i.Amount) AS Quantity
FROM piece p
JOIN inventory i ON p.IdPiece = i.FkPiece
GROUP BY p.IdPiece, p.PieceName
ORDER BY p.PieceName;

```

#### Explicacion