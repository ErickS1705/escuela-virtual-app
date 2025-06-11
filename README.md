# Escuela Virtual

Una aplicación web para gestionar una escuela virtual con registro de alumnos y maestros, gestión de materias y videoconferencias.

## Características

- Registro de alumnos y maestros
- Dashboard personalizado
- Lista de materias
- Videoconferencias integradas por materia
- Base de datos MySQL para persistencia de datos

## Requisitos Previos

- Node.js (versión 16 o superior)
- MySQL Server
- npm o yarn

## Configuración

1. Instala las dependencias:
```bash
npm install
```

2. Configura la base de datos:

   - Crea una base de datos MySQL
   - Ejecuta el script schema.sql para crear las tablas necesarias:
   ```bash
   mysql -u root -p < schema.sql
   ```

3. Configura las variables de entorno:

   Copia el archivo .env.local y ajusta las variables según tu configuración:
   ```bash
   MYSQL_HOST=localhost
   MYSQL_USER=tu_usuario
   MYSQL_PASSWORD=tu_contraseña
   MYSQL_DATABASE=escuela_virtual
   ```

## Ejecución

1. Inicia el servidor de desarrollo:
```bash
npm run dev
```

2. Abre tu navegador y visita:
```
http://localhost:8000
```

## Estructura del Proyecto

- `/src/app/` - Páginas y rutas de la aplicación
- `/src/components/` - Componentes reutilizables
- `/src/lib/` - Utilidades y configuración de la base de datos
- `schema.sql` - Esquema de la base de datos

## Uso

1. Registro de Usuarios:
   - Accede a la página de registro
   - Completa el formulario con los datos requeridos
   - Selecciona el tipo de usuario (alumno o maestro)

2. Dashboard:
   - Inicia sesión con tus credenciales
   - Visualiza las materias disponibles
   - Accede a las videoconferencias desde cada materia

3. Videoconferencias:
   - Haz clic en "Iniciar Videoconferencia" en cualquier materia
   - Permite el acceso a cámara y micrófono
   - Comparte el enlace con otros participantes

## Tecnologías Utilizadas

- Next.js 14
- TypeScript
- Tailwind CSS
- MySQL
- Jitsi Meet (para videoconferencias)

## Soporte

Para reportar problemas o solicitar nuevas características, por favor crea un issue en el repositorio.

## Licencia

MIT
