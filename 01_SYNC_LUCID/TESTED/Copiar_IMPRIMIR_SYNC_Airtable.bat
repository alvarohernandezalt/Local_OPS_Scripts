@echo off
set "origen=L:\ES_DPP\08_Dossier\04_DPP_Informes_PDF\01_IMPRIMIR"
set "destino=L:\ES_BI\z_NO_TOCAR\04_TRANSFER"

for /R "%origen%" %%F in (*.pdf) do (
    copy "%%F" "%destino%\"
)

echo Todos los archivos han sido copiados a la carpeta destino.

