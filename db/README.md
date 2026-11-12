# Base de datos (Cloudflare D1)

- `migrations/0001_esquema_inicial.sql`: esquema convertido desde MySQL (RDS `asiquedo_qualitypro`) el 2026-11-12.
- `seed-desde-mysql-2026-11-12.sql`: datos de ese día (760 filas), ordenados por dependencia de claves foráneas.
- `mysql2sqlite.py`: conversor usado. Para repetir la carga desde MySQL:

```bash
mysqldump -h <rds> -u admin -p --single-transaction --skip-lock-tables --no-tablespaces \
  --default-character-set=utf8mb4 --skip-extended-insert --complete-insert --hex-blob \
  --ignore-table=asiquedo_qualitypro.cache --ignore-table=asiquedo_qualitypro.cache_locks \
  --ignore-table=asiquedo_qualitypro.jobs --ignore-table=asiquedo_qualitypro.job_batches \
  --ignore-table=asiquedo_qualitypro.failed_jobs --ignore-table=asiquedo_qualitypro.sessions \
  --ignore-table=asiquedo_qualitypro.migrations --ignore-table=asiquedo_qualitypro.password_reset_tokens \
  --ignore-table=asiquedo_qualitypro.personal_access_tokens asiquedo_qualitypro > dump.sql
python3 mysql2sqlite.py dump.sql out
npx wrangler d1 execute qualitypro-v2 --remote --file out/schema.sql
npx wrangler d1 execute qualitypro-v2 --remote --file out/data.sql   # con PRAGMA defer_foreign_keys o en orden de dependencias
```

Los usuarios del seed están anonimizados (nombres, correos y contraseñas ficticios); solo existen por las claves foráneas `usuario_id`.

Tablas de infraestructura de Laravel (cache, jobs, sessions, tokens Sanctum) no se migran.
