@echo off
REM filepath: c:\Users\talin\Desktop\workflows\rewrite-history.cmd
echo Limpeza TOTAL do repositorio...

REM Configurar autor do Git
git config user.name "abreurenann"
git config user.email "renan.breu04@gmail.com"

REM Backup dos arquivos importantes
mkdir temp_backup
copy README.md temp_backup\
copy *.yml temp_backup\ 2>nul
copy *.yaml temp_backup\ 2>nul

REM Remover TUDO e reinicializar
rd /s /q .git
git init
git branch -M main
git remote add origin https://github.com/abreurenann/workflows.git

REM Restaurar arquivos e fazer commit inicial
copy temp_backup\* .
rd /s /q temp_backup

git add .
git commit -m "Initial commit by abreurenann"

echo Repositorio completamente reinicializado! Execute: git push --force --set-upstream origin main