# Army Exercise

Este proyecto implementa el modelo de ejércitos, unidades y batallas en Ruby, con un entrypoint para cargar clases automáticamente y probar en IRB.

## Requisitos

- Docker y Docker Compose instalados
- (Opcional) Ruby 3.0+ si querés correr local sin contenedor

## Estructura del proyecto

```
├── armies/               # Clases para gestionar ejércitos
├── battles/              # Lógica de batallas
├── civilizations/        # Clases de civilizaciones y creación de ejércitos
├── units/                # Clases Unit, UnitFactory y subdirectorios
│   └── unit_types/       # Tipos de unidad (Pikeman, Archer, Knight, ...)
├── main.rb               # Carga recursiva de todas las clases
├── Dockerfile            # Imagen base con Ruby y entrypoint IRB
├── docker-compose.yml    # Configuración de servicio "army"
└── Makefile              # Atajos: up, console, down
```

## Uso con Docker Compose

1. Construir la imagen:
   ```bash
   docker compose build
   ```

2. Levantar el contenedor y entrar en IRB:
   ```bash
   docker compose run --rm army
   ```

   Esto ejecuta `irb -r ./main.rb`, cargando automáticamente:
   - Todas las clases del proyecto
   - Constantes precargadas para facilidad de pruebas. Consultar main.rb para verlas

3. (Opcional) Con Makefile:
   ```bash
   make console   # levanta y abre IRB en el container
   make down      # baja el stack de Docker Compose
   ```

## Uso local (sin contenedor)

1. Asegurate de tener Ruby 3.0+ instalado.
2. Desde la raíz del proyecto ejecuta:
   ```bash
   irb -r ./main.rb
   ```
3. En el prompt de IRB ya estarán disponibles todas las clases y constantes inicializadas.
---


