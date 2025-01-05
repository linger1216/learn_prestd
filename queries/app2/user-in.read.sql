-- URL will be equal to /_QUERIES/custom_query/query?name=Mary&name=John

SELECT * FROM public.user WHERE name IN {{inFormat "name"}}