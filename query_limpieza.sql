SELECT 
  -- Limpieza de fecha
  PARSE_DATE('%d de %B', REPLACE(Fecha, 'marzo', 'March')) as fecha_limpia,
  Video_Views,
  Likes,
  Comments,
  Shares,
  -- Cálculo de Engagement
  SAFE_DIVIDE((Likes + Comments + Shares), Video_Views) * 100 as engagement_rate
FROM `proyecto-franco-475201.tiktok_statistics.resumen_tiktok`
ORDER BY fecha_limpia DESC
