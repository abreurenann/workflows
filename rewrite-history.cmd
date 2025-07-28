@echo off
REM filepath: c:\Users\talin\Desktop\workflows\test-trivy.cmd
echo Atualizando Trivy para escanear TUDO...

git add .
git commit -m "Add test package.json and improve Trivy scanning"
git push

echo Agora o Trivy deve detectar:
echo 1. Vulnerabilidades no lodash 4.17.4
echo 2. Qualquer arquivo no myapp/
echo 3. Todos os niveis de severidade
echo.
echo Verifique Actions em 2-3 minutos!