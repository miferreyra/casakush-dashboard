# 🌿 Casa Kush - Dashboard de Análisis de Ventas

Dashboard interactivo de análisis de ventas para un coffee shop cannábico con 5 sucursales en Argentina.

![Dashboard Preview](images/dashboard_preview.png)

---

## 📊 Descripción del Proyecto

Casa Kush es un coffee shop especializado en productos cannábicos que opera en Mar del Plata, Almagro, Mendoza, La Plata y Palermo Soho. 

**El desafío:** A pesar de tener flujo constante de clientes, la facturación no crecía proporcionalmente.

**Objetivo:** Identificar productos de alto margen, sucursales más rentables, y optimizar la estrategia comercial mediante análisis de datos.

---

## 🔍 Hallazgos Clave

### 1. Mix de Productos Desequilibrado
- Las flores populares (Blue Dream, Wedding Cake) generan alto volumen pero bajo margen (~$600/unidad)
- Las extracciones premium (Shatter, RSO, Kief) tienen ticket **10x más alto** ($7K-8K por unidad)

### 2. RSO Medicinal: El Producto Estrella
- Con solo 66 ventas, genera $543K de facturación
- Ticket promedio: **$8,227** (el más rentable por unidad)
- Actualmente sub-promocionado

### 3. Estacionalidad Marcada
- Los meses de invierno (julio-septiembre) experimentan una **caída del 35%** en visitas
- Julio es el mes más bajo: 148 visitas vs 267 en abril

### 4. Programa de Fidelización Ineficiente
- Los clientes más frecuentes NO gastan más por visita que los ocasionales
- Cliente #1 (26 visitas): ticket promedio $483K
- Otros con menos visitas: ticket de $619K

### 5. Distribución por Tipo
- Flores secas: 63% de facturación
- Extracciones: 49.6%
- Comida cannábica: 7.81%
- **Insight:** Las extracciones tienen mucho mayor margen unitario

---

## 💡 Recomendaciones

1. **Optimizar mix de productos:** Promocionar activamente extracciones premium. Crear bundles estratégicos "Flores + Extracción"

2. **Campañas en meses bajos:** Implementar promociones agresivas en julio-agosto-septiembre para compensar caída estacional

3. **Reformular fidelización:** Cambiar incentivos de "descuentos por frecuencia" a "descuentos por ticket alto"

4. **Análisis de costos:** Incorporar datos de costo para calcular márgenes reales

---

## 🛠️ Stack Técnico

- **SQL Server:** Modelado relacional (5 tablas con PKs/FKs), limpieza de datos, consultas analíticas con JOINs, agregaciones y CTEs
- **Power BI:** Dashboard interactivo con medidas DAX personalizadas
- **Excel:** Generación inicial de datasets y transformación de formatos
- **Mockaroo:** Generación de datos ficticios

---

## 📁 Estructura del Proyecto
```
casakush-dashboard/
│
├── data/           # CSVs con los datos de ventas
├── sql/            # Scripts de creación de BD y consultas
├── powerbi/        # Archivo .pbix del dashboard
├── docs/           # Presentación ejecutiva en PDF
├── images/         # Capturas del dashboard
└── README.md       # Este archivo
```

---

## 🚀 Cómo Reproducir el Proyecto

### 1. Configurar la Base de Datos
```sql
-- Crear la base de datos en SQL Server
CREATE DATABASE CasaKush;
GO

-- Ejecutar el script completo
-- Ubicado en: sql/CasaKush_Setup_Completo.sql
```

### 2. Importar los CSVs

Los archivos CSV están en la carpeta `data/`. Usar el asistente de importación de SQL Server o BULK INSERT.

### 3. Abrir el Dashboard

- Abrir Power BI Desktop
- Abrir el archivo `powerbi/CasaKush_Dashboard.pbix`
- Conectar a tu instancia local de SQL Server

---

## 📧 Contacto

**Matías Ferreyra**
- LinkedIn: [linkedin.com/in/miferreyra](https://linkedin.com/in/miferreyra)
- GitHub: [github.com/miferreyra](https://github.com/miferreyra)

---

## 📄 Licencia

Este proyecto es de código abierto y está disponible bajo la licencia MIT.