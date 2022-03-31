![](https://github.com/2uj1m28ohz/autopilot/blob/main/Screenshot.png)

## :pencil2: Descrição
Autopilot[^1] é um terminal app escrito em shell script e desenvolvido para executar rotinas de backup e manutenção do sistema.

## :sparkles: Recursos
- EVE Online[^2]
- Surviving Mars[^3]
- Aven Colony[^4]
- Industries of Titan[^5]
- Drivers
- Exportar Backups
- Expurgar Arquivos de Sistema
- Expurgar Arquivos de Software
- Expurgar Arquivos de Usuário
- Relatório da Bateria
- Relatório de Eficiência Energética
- Verificar Saúde dos Drives
- Verificar Sistema de Arquivos
- Gerenciar Aplicativos
- Desfragmentar
- Limpar Cache DNS
- Gerenciar Administrador
- Verificar Imagem do Sistema
- Verificar Instalação do Sistema
- Dispositivo
- Sistema
- Usuários
- Configurações
- Suporte
- Ajuda
- Sobre

## :desktop_computer: Requisitos
- [Windows](https://www.microsoft.com/windows) 10 Build 15063
- [Terminal](https://www.github.com/microsoft/terminal) _recomendado_
- [PowerShell](https://www.github.com/powershell/powershell) 7.2.0
- [7-Zip](https://www.7-zip.org) 21.07
- Elevação de privilégios para a execução de algumas funcionalidades

## :package: Pacote
|Item|Arquivo|Status|
|:---|:---|:---:|
|Software|Autopilot.ps1|:white_check_mark:|
|Licença|License.html|:white_check_mark:|
|Readme|Readme.html|:white_check_mark:|
> :shield: Você pode verificar a integridade do pacote comparando seu hash com a código disponível na página de download da versão.

## :arrow_down: Como Instalar
1. Descomprima o pacote .7z
2. Abra o PowerShell
3. [Habilite](https://docs.microsoft.com/powershell/module/microsoft.powershell.security/set-executionpolicy) a execução de scripts para o usuário atual
```
Set-ExecutionPolicy Unrestricted -Scope CurrentUser -Force
```
4. [Desbloqueie](https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/unblock-file) o script
```
Get-Item Autopilot.ps1 | Unblock-File
```
5. Execute o script
```
.\Autopilot.ps1
```
> :warning: Certifique-se de informar o local correto do script.

## :notebook_with_decorative_cover: Documentação
- [Política de Suporte](https://github.com/2uj1m28ohz/autopilot/blob/main/SUPPORT.md)
- [Licença de Software](https://github.com/2uj1m28ohz/autopilot/blob/main/LICENSE)
- [Código de Conduta](https://github.com/2uj1m28ohz/autopilot/blob/main/CODE_OF_CONDUCT.md)

## :clap: Atribuição
Wallpaper por [Jacob Wall](https://unsplash.com/photos/J35x4qL0mS0)

[^1]:Este é um projeto pessoal
[^2]:[EVE Online](https://www.eveonline.com)
[^3]:[Suviving Mars](https://www.survivingmars.com)
[^4]:[Aven Colony](https://www.team17.com/games/aven-colony)
[^5]:[Industries of Titan](https://braceyourselfgames.com/industries-of-titan)
