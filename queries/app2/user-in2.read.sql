SELECT * FROM public.user WHERE
name IN ({{ range $index,$part := split .name `,` }}{{if gt $index 0 }},{{end}}'{{$part}}'{{ end }})