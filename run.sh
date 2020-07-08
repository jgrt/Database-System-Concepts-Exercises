#!/usr/bin/env bash
for filename in ./sql/*.sql; do
  psql -U $POSTGRES_USER -d $POSTGRES_DB -h $POSTGRES_HOST -p 5432 -f $filename;
  echo $filename
done