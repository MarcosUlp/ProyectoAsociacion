## OBJETIVO GENERAL

**Desarrollar un sistema web de gestion de  para la liga Mercedina de voley, donde:**

- cada club puede cargar jugadores y verificar el estado del mismo 
- El presidente/admin puede revisar la informacion, (ficha medica y algun otro dato relevante)
- Se puede acceder desde el sitio actual (asociacionmercedina.com)

## REQUISITOS MINIMOS

**ROLES:**

1. Admin (presidente o secretaria/o de la liga):
- Ver todos los jugadores y clubes.
- Aprobar o rechazar fichas.
- cambiar estado de jugador activo/inactivo. 

2. Club (1 por equipo):
- Puede cargar, editar y eliminar solo sus jugadores.
- Cargar ficha medica (pdf con todos los papeles necesarios, declaracion jurada, dni, electro. etc).
- Ver estado de validacion ( aprobada / en observacion ).

## DATOS A GESTIONAR POR JUGADOR
- Nombre y apellido 
- DNI 
- Celular/email (opcional)
- Fecha de nacimiento 
- Categoria (mini, sub14, sub18, primera. etc)
- Club al que pertenece
- PDF con toda la documentacion requerida (ficha medica, electro, declaracion jurada. etc)
- estado: ( pendiente / aprobado )

## TECNOLOGIAS PROBABLES A APLICAR
- Front: HTML + CSS + JS (Estudiar boostrap)
- Backend: Node.js con Express
- Base de datos: mysql o mariadb ...*tener en cuenta almac. muchas personas por cat.* 
- carga de archivos: Multer
- Procesamiento de info PDF-lib(solo si requiere extraer imagenes del pdf)
- Autenticacion: Login por WJT(JSOn Web Token) mas simple al usar sesiones
- Hosting: ----
## PLANIFICACION DEL PROYECTO ##
Dia 1:
- Creacion de repositorio "Proyecto Asociacion" 
- Inicializacion de proyecto
- Instalacion de dependencias principales y de desarrollo
- 