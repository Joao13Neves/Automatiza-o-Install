## Instalando Dependências em Máquinas Novas

### Permitindo Execução de Scripts

1. Abrir Powershell como Administrador (Win + X, A)
2. Executar linha de comando para permitir execução de Scripts.ps1
```powershell
C:\Windows\System32> Set-ExecutionPolicy RemoteSigned
```
2.1. $Env:USER_HOME="$Env:USERPROFILE\Desktop"
3. Criar arquivo na área de trabalho com extensão .ps1
4. Executar arquivo com código de execução do Git
```powershell
cd $Env:USER_HOME ; .\Script.ps1
```
