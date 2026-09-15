# Game Design Document — versión ligera (v0.1 — Concept)

> Este documento crece con el proyecto. No es definitivo, es la fuente de
> verdad de lo que SÍ está aprobado hasta ahora.

## Core Fantasy

Ser valiente en grupo frente a algo que da miedo — no por fuerza, sino por
cuidarse mutuamente y decidir bien cuándo moverse.

## Core Gameplay Loop (borrador)

Explorar con el niño prioritario → detectar cercanía del perseguidor →
decidir mover (riesgo) o quedarse quieto (seguridad, lentitud) → usar el
"Grrr" si te alcanzan → llegar a zona segura o cambiar de niño prioritario →
repetir hasta reagrupar a los 4 en la piscina de pelotas.

## Pilares (aprobados)

1. Cuatro niños.
2. Escapar juntos.
3. Un monstruo/perseguidor.
4. Cambio de personaje prioritario.
5. El movimiento influye en la prioridad de captura.
6. Zonas donde los niños pueden estar seguros.
7. Piscina de pelotas como objetivo/lugar seguro.
8. "Grrr" — sonido característico del monstruo (corregido en v0.2, ver `changelog.md` CH01). Ya NO es una acción del jugador.
9. Los cuatro niños deben reunirse para completar el escape.

## Tono (borrador, sin cerrar del todo)

Sombrío / tenso. El perseguidor no es "adorable". Los protagonistas son
niños, pero eso no implica que el jugador objetivo sea un niño pequeño —
referencia: Little Nightmares.

## Comportamiento de niños no controlados (D10, D12)

No usan IA de movimiento — se quedan exactamente donde el jugador los dejó
por última vez. Dónde los escondes es una decisión estratégica real: si no
están cubiertos, el monstruo puede detectarlos si pasa cerca (área de
detección tipo Area2D), aunque sea ciego y estén quietos.

## Percepción del monstruo (D07)

El monstruo es ciego. Caza por sonido/movimiento: moverte cerca genera ruido
que lo alerta; mover un objeto puede alertarlo incluso de lejos. Esto le da
una razón narrativa/mecánica al pilar 5 (moverse = más prioridad de
captura), y simplifica su IA (no necesita visión ni conos de detección).

## Consecuencia de captura (resuelto — ver decisions.md D04)

Rescate sin límite de tiempo: el niño capturado espera indefinidamente
hasta que otro niño lo rescate. El riesgo no viene de un reloj, sino de que
moverte para rescatarlo también genera ruido y sube tu propia prioridad, y
de que la acción de liberarlo (mantener presionado, ver D11) te deja
inmóvil y expuesta unos segundos. Sin desventaja mecánica posterior (D08)
— ese riesgo durante el rescate ya es la consecuencia.

## Alcance del MVP (D05)

Un solo nivel, pensado para sentirse como una experiencia completa de
~10-15 minutos (no infinita). Escenario: una casa/torre donde los 4 niños
fueron llevados (secuestro), empezando en el subterráneo. La piscina de
pelotas —su zona segura y objetivo— está arriba de todo: la progresión
física (subir, escapando de lo oscuro) refuerza el tono.

Estructura aproximada: sótano (inicio, los 4 juntos) → 4-6 espacios
conectados con oportunidades de escondite y persecución, intensidad
creciente hacia el final → cuarto de la piscina de pelotas (final).

## Narrativa (MVP)

- Premisa: los 4 niños fueron secuestrados; el motor emocional es querer
  volver a casa.
- La naturaleza del monstruo (criatura literal o una persona) queda
  deliberadamente ambigua — decisión de estilo, no un pendiente a resolver.
- Objetos ambientales por el mapa insinúan que no son los primeros en pasar
  por esto (sin necesidad de sistemas nuevos — solo diseño de nivel/arte).
- Personalidad de cada niño (D13): vive solo en la capa narrativa
  (apariencia, animaciones idle, gestos o líneas propias), nunca en
  habilidades de juego distintas.

## Decisiones pendientes críticas

Ninguna crítica pendiente por ahora — todas las de la lista original de la
Fase 0 están cerradas. Ideas post-MVP quedan en `backlog.md`.

Ver `decisions.md` para el registro formal y `backlog.md` para ideas sueltas
que aún no se evalúan.
