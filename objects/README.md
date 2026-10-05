## Snowflake objects: `objects` schema

Sample Snowflake objects for testing the gitrunner Snowflake objects DAG (`jaffle_shop_objects`).

gitrunner copies its template DAG into this folder because `objects` is listed under `SCHEMAS`
in `snowflake_ci.yml`. The DAG runs every `.sql` file here against
`<snowflake_connection database>.objects`. The database and schema must already exist; the DAG
does not create them.

### Run order
One task group per folder, run in this order (missing folders are skipped):
`file_formats → stages → tables → views → sequences → streams → functions → procedures → tasks → dml`.
Inside a folder the files run one at a time in file-name order, which is why the
`tables/` files have number prefixes.

| Folder | What it does |
|---|---|
| `tables/` | drop and recreate `costs`, `forestfires`, `forestfire_costs`, load them, then select the result |
| `streams/` | `my_stream` on `costs` |
| `functions/` | Python UDF `addone` |
| `procedures/` | JavaScript procedure `myproc` |

`{{ params.schema_name }}` in the SQL is filled in by the DAG.
