from pathlib import Path

sql_files = Path("migrate")

for sql_file in sql_files.iterdir():
    if sql_file.open().readline().strip():
        print(f"mysql -h 127.0.0.1 -u root -proot -DGitea<{sql_file}")
    else:
        sql_file.unlink()
