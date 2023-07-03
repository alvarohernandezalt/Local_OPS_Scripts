@echo off
set "origen=ORIGIN/FOLDER"
set "destino=DESTINY/FOLDER"

for /R "%origen%" %%F in (*.pdf) do (
    copy "%%F" "%destino%\"
)

echo Todos los archivos han sido copiados a la carpeta destino.

