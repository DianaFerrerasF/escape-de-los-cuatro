# [Título provisional] — Escape de los Cuatro

Videojuego personal en desarrollo. Concepto: cuatro niños deben escapar de un
perseguidor y reagruparse en una piscina de pelotas (su lugar seguro) para
completar el escape.

## Estado actual

**Fase 0 — Descubrimiento y definición del concepto** (en curso).

No hay código todavía. Estamos cerrando decisiones críticas de diseño antes
de tocar Godot.

## Estructura del repositorio

```
/docs
  GDD.md         -> Game Design Document (versión ligera, viva)
  decisions.md   -> Matriz de decisiones (qué se decidió, por qué, estado)
  backlog.md     -> Ideas nuevas que surgen pero no se implementan todavía
  changelog.md   -> Registro de cambios importantes a decisiones ya tomadas
/project         -> Aquí vive el proyecto de Godot (crear desde el editor)
```

## Motor

**Godot** (decidido — ver `docs/decisions.md`, D01).

## Regla de oro del proyecto

Ninguna mecánica o funcionalidad importante entra al juego sin antes pasar
por `docs/decisions.md` o `docs/backlog.md`. Si no está documentado, no es
oficial todavía.
