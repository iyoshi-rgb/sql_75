# arg 1: .sql file
# database = "sql_exercise_2025"
mysql -u root -p  -e 'use sql_exercise_2025; source '"$1"';'