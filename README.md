# Aforos v0.1 (Repo con CI)
Proyecto Android (Kotlin + Jetpack Compose) listo para CI y pruebas automáticas.

## Versiones
- AGP: 8.6.0
- Gradle: 8.9
- Kotlin: 1.9.24
- Compose BOM: 2024.09.02
- compileSdk/targetSdk: 35
- minSdk: 26

## Cómo compilar en CI/local (sin Android Studio)
```bash
# Instalar Android SDK (ver workflow o tools/ci-build.sh)
./tools/ci-build.sh
```

## OpenCV embebido (opcional)
Coloque `opencv-4.9.0.aar` en `app/libs/` y descomente en `app/build.gradle.kts`:
```kotlin
implementation(files("libs/opencv-4.9.0.aar"))
```

## Notas
- El cálculo de Vs es placeholder.
- Icono adaptive con gota vectorial.