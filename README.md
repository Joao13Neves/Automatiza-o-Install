## Instalando Dependências em Máquinas Novas

### Permitindo Execução de Scripts

1. Salvar arquivo com nome `Script.ps1` na Área de Trabalho
2. Abrir Powershell como Administrador (Win + X, A)
3. Executar liha de comando abaixo para executar o Script PowerShell
```powershell
Set-ExecutionPolicy RemoteSigned ; $Env:USER_HOME="$Env:USERPROFILE\Desktop" ; cd $Env:USER_HOME ; .\Script.ps1
```
