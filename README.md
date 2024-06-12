# Proyecto del curso de SQL en Coderhouse: NarutoDB

# DEFINICIÓN DEL UNIVERSO DEL DISCURSO

La base de datos sirve como soporte para un sistema de gestión de información sobre personajes, aldeas, clanes, jutsus y capítulos del anime Naruto. Este sistema tiene como objetivo organizar y estructurar la información relacionada con estos elementos, permitiendo su consulta y análisis de manera eficiente.

## Personajes
Los personajes son los individuos que aparecen en la serie Naruto. Cada personaje tiene las siguientes características:

- **Nombre:** El nombre del personaje.
- **Afinidad de Elemento:** El tipo de chakra elemental que el personaje puede utilizar (fuego, agua, viento, tierra, rayo).
- **Aldea:** La aldea a la que pertenece el personaje.
- **Rango:** El rango ninja del personaje (Genin, Chunin, Jonin, Kage, etc.).
- **Kekkei Genkai:** Habilidades genéticas especiales que solo algunos personajes poseen (puede ser nulo si no tiene).
- **Clan:** La familia o grupo al que pertenece el personaje (puede ser nulo si no pertenece a ninguno).

## Aldeas
Las aldeas son las localidades donde residen y se entrenan los ninjas. Cada aldea tiene las siguientes características:

- **Nombre:** El nombre de la aldea.
- **Kage:** El líder de la aldea.
- **País:** El país al que pertenece la aldea.

## Clanes
Los clanes son familias o grupos de ninjas con habilidades y tradiciones únicas. Cada clan tiene las siguientes características:

- **Nombre:** El nombre del clan.
- **Jutsus Característicos:** Técnicas o habilidades especiales propias del clan.
- **Kekkei Genkai:** Habilidad genética única del clan (puede ser nulo si no tiene).

## Kekkei Genkai
Los Kekkei Genkai son habilidades genéticas especiales que solo algunos personajes pueden poseer. Cada Kekkei Genkai tiene las siguientes características:

- **Nombre:** El nombre del Kekkei Genkai.
- **Descripción:** Una descripción de la habilidad y sus efectos.

## Jutsus
Los jutsus son técnicas ninja utilizadas por los personajes. Cada jutsu tiene las siguientes características:

- **Nombre:** El nombre del jutsu.
- **Descripción:** Una descripción del jutsu y sus efectos.
- **Elemento:** El tipo de chakra elemental asociado con el jutsu.

## Temporadas
Las temporadas agrupan los capítulos de la serie y tienen las siguientes características:

- **Nombre:** El nombre de la temporada.
- **Capítulos:** La cantidad de capítulos que contiene la temporada.

## Capítulos
Los capítulos son los episodios individuales de la serie Naruto. Cada capítulo tiene las siguientes características:

- **Duración:** La duración del capítulo en minutos.
- **Temporada:** La temporada a la que pertenece el capítulo.
- **Es Relleno:** Indica si el capítulo es un episodio de relleno (booleano).

## Relaciones
- **Personajes y Aldeas:** Cada personaje pertenece a una aldea específica.
- **Personajes y Clanes:** Cada personaje puede pertenecer a un clan.
- **Personajes y Kekkei Genkai:** Algunos personajes tienen habilidades especiales llamadas Kekkei Genkai.
- **Personajes y Jutsus:** Los personajes pueden utilizar múltiples jutsus y cada jutsu puede ser utilizado por múltiples personajes.
- **Personajes y Capítulos:** Los personajes pueden aparecer en múltiples capítulos y cada capítulo puede contar con múltiples personajes.

## Tablas Intermedias
Para gestionar las relaciones de muchos a muchos entre personajes y jutsus, y entre personajes y capítulos, se utilizan las siguientes tablas intermedias:

- **PersonajeJutsu:** Relaciona personajes con los jutsus que pueden utilizar.
- **PersonajeCapitulo:** Relaciona personajes con los capítulos en los que aparecen.

## Funcionalidad
Esta base de datos facilita la consulta y gestión de información detallada sobre el universo de Naruto, permitiendo a los usuarios obtener datos específicos sobre personajes, sus habilidades, sus relaciones con otras entidades (como clanes y aldeas), y su participación en diferentes capítulos de la serie.
