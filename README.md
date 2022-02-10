![](https://github.com/2uj1m28ohz/autopilot/blob/main/AutopilotScreen.png)

## Descrição
Autopilot[^1] é um terminal app escrito em shell script e desenvolvido para executar rotinas de backup e manutenção do sistema.

## Recursos
- Backup EVE Online[^2]
- Backup Surviving Mars[^3]
- Backup Aven Colony[^4]
- Backup Drivers
- Exportar Backups
- Expurgar Arquivos de Sistema
- Expurgar Arquivos de Software
- Expurgar Arquivos de Usuário
- Relatório da Bateria
- Relatório de Eficiência Energética
- Verificar Saúde dos Drives
- Verificar Sistema de Arquivos
- Desfragmentar
- Limpar Cache DNS
- Gerenciar Administrador
- Verificar Imagem do Sistema
- Verificar Instalação do Sistema
- Dispositivo
- Sistema
- Usuários
- Ajuda
- Updates
- Sobre

## Requisitos
- [Windows](https://www.microsoft.com/windows) 10+
- [Terminal](https://www.github.com/microsoft/terminal) *recomendado*
- [PowerShell](https://www.github.com/powershell/powershell) 7.2.0+
- [7-Zip](https://www.7-zip.org) 21.07+
- Elevação de privilégios para a execução de algumas sub-rotinas

## Como Executar
1. Descomprima o pacote .7z
2. Abra o PowerShell
3. [Desbloqueie](https://docs.microsoft.com/pt-br/powershell/module/microsoft.powershell.utility/unblock-file) o script
```
Get-Item C:\Users\[Usuário]\Downloads\Autopilot-[Versão].ps1 | Unblock-File
```
4. Execute o script
```
C:\Users\[Usuário]\Downloads\Autopilot-[Versão].ps1
```
![](https://github.com/2uj1m28ohz/autopilot/blob/main/AutopilotTerminal.png)
>NOTA: *Certifique-se de informar o local e nome corretos do script*

## Histórico e Requisitos
|Versão|Publicação|Suporte|Windows|PowerShell|7-Zip|
|:---|:---:|:---:|:---:|:---:|:---:|
|22.40.1|✅|✅|10|7.2.0|21.07|
|22.30.1|✅|❌|10|7.2.0|21.07|
|22.20.1|✅|❌|10|7.2.0|21.06|
|22.10.1|❌|❌|10|7.1.0|19.00|
|22.1.1|❌|❌|10|7.0.0|-|
|21.330.1|❌|❌|10|5.1.0|-|
|21.323.1|❌|❌|10|5.1.0|-|
|21.319.1|❌|❌|10|5.1.0|-|
|21.313.1|❌|❌|10|5.1.0|-|
|21.311.1|❌|❌|10|5.1.0|-|
|20.6.0-001|❌|❌|10|5.1.0|-|
|19.9.2-001|❌|❌|10|5.1.0|-|
|18.9.3-001|❌|❌|10|5.1.0|-|
|17.9.5-001|❌|❌|10|5.1.0|-|
|16.9.1-001|❌|❌|10|5.1.0|-|
|15.9.0-001|❌|❌|10|5.1.0|-|
|14.9.0-001|❌|❌|10|5.1.0|-|
|13.9.0-001|❌|❌|10|5.1.0|-|
|12.7.0-001|❌|❌|10|5.1.0|-|
|11.5.0-001|❌|❌|10|5.1.0|-|
|10.9.0-001|❌|❌|10|5.1.0|-|
|9.8.0-001|❌|❌|10|5.1.0|-|
|8.8.0-001|❌|❌|10|5.1.0|-|
|7.1.0-001|❌|❌|10|5.1.0|-|
|6.5.0-001|❌|❌|10|5.1.0|-|
|5.7.0-001|❌|❌|10|5.1.0|-|
|5.3.0-001|❌|❌|10|5.1.0|-|
|4.9.0-001|❌|❌|10|5.1.0|-|
|3.7.0-001|❌|❌|10|5.1.0|-|
|2.13.0-002|❌|❌|10|5.1.0|-|
|2.13.0-001|❌|❌|10|5.1.0|-|
|1.8.0-001|❌|❌|10|5.1.0|-|
|1.7.0-001|❌|❌|10|5.1.0|-|
|0.9.0-001|❌|❌|10|5.1.0|-|

[^1]:_Este é um projeto pessoal_.
[^2]: [EVE Online](https://www.eveonline.com)
[^3]: [Suviving Mars](https://www.survivingmars.com)
[^4]: [Aven Colony](https://www.team17.com/games/aven-colony)
