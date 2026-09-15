# Matriz de decisiones

| ID  | Decisión                  | Alternativas                          | Elegida                          | Motivo                                                                 | Estado   |
|-----|----------------------------|----------------------------------------|-----------------------------------|-------------------------------------------------------------------------|----------|
| D01 | Motor                      | Godot / Unity / Unreal                 | Godot                             | Experiencia previa, gratuito, adecuado para proyecto personal en solitario | Aprobado |
| D02 | Contexto del proyecto      | Curso / Personal / Ambos               | Personal, sin plazo fijo, meta comercial | —                                                                    | Aprobado |
| D03 | Tono / audiencia           | Familiar-tierno / Sombrío-tenso / Ambos| Sombrío-tenso, audiencia mayormente adolescentes/adultos | Nace de un sueño con persecución tensa; monstruo no "adorable"; el contenido no es apto para niños pequeños | Aprobado |
| D04 | Consecuencia de captura    | Game over / Rescate con tiempo límite / Rescate sin tiempo límite | Rescate sin tiempo límite | El riesgo ya viene del ruido al moverte para rescatar; un reloj sería redundante | Aprobado |
| D05 | Alcance del MVP            | 1 nivel corto / varios niveles cortos / otra cantidad | 1 nivel, ~10-15 min, casa/torre desde el subterráneo hasta la piscina de pelotas arriba | Valida el loop central antes de invertir en más contenido; progresión física (subir) refuerza el tono | Aprobado |
| D06 | Modo cooperativo local     | Sí / No / Fase futura                  | Sí, después del MVP               | Se implementa una vez la base funcione, no antes                       | Aprobado |
| D07 | Percepción del monstruo    | Visión / Ciego, caza por sonido        | Ciego, caza por sonido            | Da razón narrativa al pilar 5; simplifica la IA (no requiere visión)   | Aprobado |
| D08 | Desventaja post-rescate    | Sin desventaja / Más ruido / Pierde turno prioritario / Solo narrativo | Sin desventaja mecánica | El riesgo ya está en la propia acción de rescate; una penalización extra sería redundante | Aprobado |
| D09 | Mecánica de "llamado"      | Coordinar niños / Distraer al monstruo | Distraer al monstruo (señuelo)    | Crea ventana de rescate; reutiliza el sistema de sonido existente      | Aprobado |
| D10 | Comportamiento de niños no controlados | IA autónoma / Estáticos donde el jugador los dejó | Estáticos donde el jugador los dejó | Simplifica el desarrollo (sin pathfinding); coincide con el diseño original de la autora | Aprobado |
| D11 | Mecánica de rescate (MVP)  | Mantener presionado / Presionar repetidamente / Combinación / Aleatorio entre las tres | Mantener presionado               | Menor costo de implementación; la variedad/aleatorización se deja para una fase de pulido posterior (ver B06) | Aprobado |
| D12 | Detección de niños quietos | Nunca en riesgo / Riesgo constante / Depende de cobertura (Area2D) | Depende de cobertura (Area2D) | El monstruo es ciego pero "siente" un cuerpo cercano si no está cubierto | Aprobado |
| D13 | Personalidad de cada niño  | Habilidades de juego distintas / Solo capa narrativa (apariencia, gestos, líneas) | Solo capa narrativa | Evita multiplicar el balanceo mecánico por 4; da identidad sin inflar alcance | Aprobado |

**Regla:** ninguna fila pasa de "Borrador" a "Aprobado" sin discusión explícita.
