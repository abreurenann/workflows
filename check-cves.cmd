@echo off
REM filepath: c:\Users\talin\Desktop\workflows\check-cves.cmd
echo Fazendo push com dependencias vulneraveis...

git add myapp/package.json
git commit -m "Add vulnerable lodash 4.17.4 to test CVE detection"
git push

echo AGORA DEVE APARECER CVEs!
echo.
echo Lodash 4.17.4 tem MUITAS vulnerabilidades conhecidas:
echo - Prototype Pollution
echo - ReDoS (Regular Expression Denial of Service)
echo - E outras CVEs criticas
echo.
echo Cronograma:
echo 1. Push concluido
echo 2. Aguarde 3-5 minutos para Trivy executar
echo 3. Va em: Security -^> Code scanning alerts
echo 4. Deve aparecer multiplas vulnerabilidades!
echo.
echo URL: https://github.com/abreurenann/workflows/security/code-scanning