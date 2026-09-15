# Matriz de decisiones

| ID  | Decisión                  | Alternativas                          | Elegida                          | Motivo                                                                 | Estado   |
|-----|----------------------------|----------------------------------------|-----------------------------------|-------------------------------------------------------------------------|----------|
| D01 | Motor                      | Godot / Unity / Unreal                 | Godot                             | Experiencia previa, gratuito, adecuado para proyecto personal en solitario | Aprobado |
| D02 | Contexto del proyecto      | Curso / Personal / Ambos               | Personal, sin plazo fijo, meta comercial | —                                                                    | Aprobado |
| D03 | Tono / audiencia           | Familiar-tierno / Sombrío-tenso / Ambos| Sombrío-tenso                     | Nace de un sueño con persecución tensa; monstruo no "adorable"         | Borrador |
| D04 | Consecuencia de captura    | Game over / Rescate con tiempo límite / Rescate sin tiempo límite | Rescate sin tiempo límite | El riesgo ya viene del ruido al moverte para rescatar; un reloj sería redundante | Aprobado |
| D05 | Alcance del MVP            | TBD                                    | TBD                                | —                                                                       | Pendiente |
| D06 | Modo cooperativo local     | Sí / No / Fase futura                  | Sí, después del MVP               | Se implementa una vez la base funcione, no antes                       | Aprobado |
| D07 | Percepción del monstruo    | Visión / Ciego, caza por sonido        | Ciego, caza por sonido            | Da razón narrativa al pilar 5; simplifica la IA (no requiere visión)   | Borrador |
| D08 | Desventaja post-rescate    | TBD                                    | TBD                                | —                                                                       | Pendiente |
| D09 | Mecánica de "llamado"      | Coordinar niños / Distraer al monstruo | Distraer al monstruo (señuelo)    | Crea ventana de rescate; reutiliza el sistema de sonido existente      | Aprobado |
| D10 | Comportamiento de niños no controlados | IA autónoma / Estáticos donde el jugador los dejó | Estáticos donde el jugador los dejó | Simplifica el desarrollo (sin pathfinding); coincide con el diseño original de la autora | Aprobado |
| D11 | Mecánica de rescate (MVP)  | Mantener presionado / Presionar repetidamente / Combinación / Aleatorio entre las tres | Mantener presionado (recomendado, pendiente confirmar) | Menor costo de implementación; la variedad/aleatorización se deja para una fase de pulido posterior | Borrador |
| D12 | Detección de niños quietos | Nunca en riesgo / Riesgo constante / Depende de cobertura (Area2D) | Depende de cobertura (Area2D) | El monstruo es ciego pero "siente" un cuerpo cercano si no está cubierto | Aprobado |

**Regla:** ninguna fila pasa de "Borrador" a "Aprobado" sin discusión explícita.
