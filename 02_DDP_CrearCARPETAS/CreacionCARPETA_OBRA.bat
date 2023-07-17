@echo off
set /p ARCHIVO=Ingrese el nombre del archivo: 

mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\00_Historico"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\01_A_Fotografo"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\01_B_OtrasFotos"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\01_C_FotosFicha"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\02_INDESIGN"
mkdir "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\03_PSD"

copy "L:\ES_DPP\08_Dossier\03_C_Plantilla_ID\PlantillaKALAM_Informe2022 Folder\PlantillaKALAM_Informe2023.indd" "L:\ES_DPP\08_Dossier\03_A_Obras_ID\%ARCHIVO%\02_INDESIGN\%ARCHIVO%.indd"

echo Carpeta creada con éxito
pause
