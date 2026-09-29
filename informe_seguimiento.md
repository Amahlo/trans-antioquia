# 📝 Acta de Reunión y Seguimiento de Proyecto

**Proyecto:** Sistema de Gestión y Rastreo de Servicios — Trans-Antioquia  
**Fecha:** 29 de septiembre de 2026  
**Lugar / Modalidad:** Presencial (Sede Principal)  
**Horario:** 01:30 PM – 05:00 PM  
**Líder de Proyecto:** Hernan Dario Perez Higuita 

---

## 👥 Asistentes y Distribución de Roles

| Nombre | Rol Asignado | Responsabilidades Principales |
| :--- | :--- | :--- |
| **Hernán Darío Pérez Higuita** | Líder de Equipo / Product Owner Interno | Levantamiento de requisitos, arquitectura general, coordinación con el cliente y gestión del repositorio. |
| **Catalina Lombana Osorio** | Backend & Base de Datos | Modelado de datos, creación de tablas, relaciones, persistencia de usuarios y auditoría de movimientos. |
| **Maiky Santiago Vergara Chavarría** | Backend & Base de Datos | Lógica de negocio, consultas de servicios/métricas e integración con la base de datos. |
| **Deerly Jharik Hernández Misas** | Frontend UI/UX | Diseños responsive, paleta de colores fríos, integración de la tipografía JetBrains y componentes de servicios. |
| **Juan Felipe Isaza Vásquez** | Frontend UI/UX | Desarrollo de vistas, contador de servicios, botones de interacción y vista de historial/reporte por usuario. |

---

## 📋 Orden del Día

1. **Reunión 1 con Cliente (Levantamiento de Requisitos):** Socialización de la lluvia de ideas inicial obtenida con Jaime Zapata (Owner).
2. **Definición de Lineamientos Técnicos y Roles:** Asignación formal de responsabilidades al equipo de 4 personas.
3. **Reunión 2 con Cliente (Clarificaciones y Validaciones):** Retroalimentación obtenida tras el segundo encuentro presencial con el cliente.
4. **Desglose de Historias de Usuario (HU) y Tareas:** Transferencia de requerimientos ajustados al equipo.
5. **Compromisos y Entregables Inmediatos (Para el día de hoy).**

---

## 🎯 Desarrollo de la Reunión

### 1. Contexto Inicial y Migración Digital
Se presentó al equipo la problemática actual de **Trans-Antioquia** (Sede Barrio Antioquia): la pérdida recurrente de información en físico. Se estableció el objetivo de migrar toda la operación a un sistema web interno exclusivo para **8 colaboradores**, enfocado en la captura rápida de solicitudes de transporte (personas y mercancías) a cualquier hora (24/7) y destino.

### 2. Actualización Clave del Cliente (Reunión 2 con el cliente Jaime Zapata)
Se informó al equipo que en la segunda sesión de validación con el cliente se definieron los siguientes puntos críticos:
* **Visualización Unificada:** La página web debe integrar de forma clara e intuitiva la selección entre los dos servicios principales: **Transporte de Personas** y **Transporte de Encomiendas/Carga** (o servicios combinados).
* **Módulo de Reporte y Auditoría por Usuario:** El sistema debe incluir un informe interno que exponga de manera detallada los movimientos realizados por cada uno de los 8 colaboradores. Cada registro debe reflejar:
  * Usuario que gestionó la solicitud.
  * Tipo de servicio utilizado (personas, carga o combinado).
  * Fecha y hora exacta de la transacción.

### 3. Historias de Usuario (HU) Principales
* **HU-01 (Registro de Servicios):** Como colaborador interno, quiero registrar una solicitud de transporte de personas o carga para guardar los datos básicos del cliente y la ruta.
* **HU-02 (Auditoría e Historial):** Como dueño/colaborador, quiero ver el historial de movimientos filtrado o agrupado por usuario para saber cuántos y cuáles negocios ha cerrado cada uno.
* **HU-03 (Acceso Controlado):** Como usuario de los 8 colaboradores, quiero seleccionar mi perfil al registrar un servicio para garantizar la trazabilidad de la operación.

---

## 📌 Acuerdos y Entregables Inmediatos (Para Hoy)

Para cumplir con la entrega requerida el día de hoy, el equipo asume los siguientes compromisos técnicos:

### 🗄️ Equipo de Base de Datos (Catalina Lombana Osorio & Maiky Santiago Vergara Chavarría)
1. Diseñar y entregar el modelo entidad-relación (ERD) con sus respectivas tablas primarias:
   * **Tabla `Usuarios`:** `id`, `nombre`, `contacto_whatsapp`, `estado` (limitado a los 8 colaboradores).
   * **Tabla `Servicios`:** `id`, `tipo_servicio` (Personas/Encomiendas/Combinado), `cliente`, `origen`, `destino`, `distancia`, `tarifa_estimada`, `fecha_registro`, `usuario_id` (FK).
2. Entregar el script SQL con los datos base insertados y las relaciones configuradas.

### 🎨 Equipo Frontend (Deerly Jharik Hernández Misas & Juan Felipe Isaza Vásquez)
1. Aplicar la guía de estilos acordada: colores fríos (azules/grises) y fuente `JetBrains Mono / Sans`.
2. Crear la interfaz con los **botones de selección directa** para los servicios (Transporte de Personas / Transporte de Encomiendas / Servicio Combinado).
3. Construir la maqueta inicial de la **pantalla de Historial y Contador de Servicios** que desglose los movimientos por cada colaborador.

---