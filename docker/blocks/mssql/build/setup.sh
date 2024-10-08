#/bin/bash
##set -eo pipefail
##PBM

#wait for the SQL Server to come up
sleep 15s

cat /usr/setup/setup.sql.template | awk '{
  gsub(/%%DB%%/,"'$MSSQL_DATABASE'");
  gsub(/%%USER%%/,"'$MSSQL_USER'");
  gsub(/%%PWD%%/,"'$MSSQL_PASSWORD'")
}1' > /usr/setup/setup.sql

/opt/mssql-tools18/bin/sqlcmd -C -S mssql -U sa -P $MSSQL_SA_PASSWORD -d master -i /usr/setup/setup.sql
