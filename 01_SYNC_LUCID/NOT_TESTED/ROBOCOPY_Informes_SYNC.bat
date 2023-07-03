@echo off
set "origen=L:\ES_DPP\08_Dossier\04_DPP_Informes_PDF\01_IMPRIMIR"
set "destino=L:\ES_BI\z_NO_TOCAR\04_TRANSFER"

for /R "%origen%" %%F in (*.pdf) do (
    echo Comprobando archivo: %%F
    for /F "usebackq" %%A in ("%%~tF") do set "fecha_origen=%%~A"
    if exist "%destino%\%%~nxF" (
        for /F "usebackq" %%B in ("%destino%\%%~nxF") do set "fecha_destino=%%~B"
        if not "%fecha_origen%"=="%fecha_destino%" (
            robocopy "%origen%" "%destino%" "%%~nxF" /COPY:DAT /DCOPY:T /XO
            echo Archivo copiado: %%F
        )
    ) else (
        robocopy "%origen%" "%destino%" "%%~nxF" /COPY:DAT /DCOPY:T
        echo Archivo copiado: %%F
    )
)

echo Todos los archivos PDF con fechas de modificación diferentes han sido copiados a la carpeta destino.
pause