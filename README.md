Analizando el crecimiento de mi canal: De datos sucios a decisiones reales

Por Franco
Empecé este proyecto porque quería entender qué pasaba realmente con mis videos de fisiología. Las plataformas te dan números, pero no siempre te dicen la verdad sobre si a la gente le sirve lo que compartís. Este es el proceso que seguí para ordenar mis datos y sacar conclusiones claras.

El problema

Tenía un archivo CSV descargado de TikTok con fechas en formatos raros y columnas con nombres poco prácticos. No podía ver tendencias ni comparar días de forma rápida.

Lo que hice

En lugar de quedarme solo con lo que dice la app, llevé todo a Google BigQuery. Me sirvió para aprender a manejar datos en la nube y practicar SQL con un caso que me importa: mi propia comunidad.

El proceso técnico:

Subida de datos: Cargué el CSV bruto en un proyecto de Google Cloud.

Limpieza con SQL: Tuve que "enseñarle" a la base de datos a leer las fechas en español y convertirlas a un formato estándar.

Métricas que importan: Creé una fórmula para calcular el Engagement Real. No me enfoqué solo en las vistas, sino en cuánta gente realmente interactuó (likes, comentarios, compartidos) en relación a las personas que vieron el video.

SQL
-- Así limpié las fechas y calculé el engagement
SELECT 
  PARSE_DATE('%d de %B', REPLACE(Fecha, 'marzo', 'March')) as dia,
  Video_Views as vistas,
  SAFE_DIVIDE((Likes + Comments + Shares), Video_Views) * 100 as engagement
FROM `mi-proyecto.datos_tiktok.tabla_final`
ORDER BY dia DESC

¿Qué aprendí?

Gracias a este análisis, ahora puedo ver exactamente qué días mi contenido técnico sobre ejercicio tuvo más impacto y por qué. Este proyecto me ayudó a unir dos mundos: la fisiología del ejercicio y el análisis de datos.

Contacto:

LinkedIn: www.linkedin.com/in/franco-velardez04

GitHub: francovelardez44
