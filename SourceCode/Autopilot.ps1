# ------------------------------------------------------------------------------------------------ | INÍCIO

# Language:			PT-BR
# Copyright:		Copyright (C) 2021-2022 David Camargo
# Descrição:		Autopilot é um software desenvolvido para executar rotinas de backup e manutenção do sistema.
# Licença:			Autopilot é um software livre distribuído sob a GNU General Public License v3.0. Leia License.html para mais detalhes.
# Site:				https://github.com/2uj1m28ohz

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE CARREGAMENTO

function CarregarNucleo {
	Clear-Host
	$script:ConfirmPreference = "None"
	$script:ErrorActionPreference = "SilentlyContinue"
	$script:ErrorView = "ConciseView"
	$script:PSDefaultParameterValues['*:Encoding'] = 'UTF8'
	$script:SoftwareDiretorioLocal = $PSCommandPath
	$script:SoftwareNome = "Autopilot"
	$script:SoftwareVersao = "22.110.1"
	$script:SoftwareRequisitoSistemaOperacional = "17134"
	$script:SoftwareRequisitoPowerShell = "7.2.0"
	$script:SoftwareRequisito7Zip = "21.07"
	$script:SoftwareProblemas = 0
	$script:DispositivoNome = "$env:ComputerName"
	$script:UsuarioNome = (Get-CimInstance Win32_UserAccount | Where-Object -Property Name -eq $env:UserName).FullName
	$script:DiretorioSistema = "$env:WinDir"
	$script:DiretorioOneDrive = "$env:OneDrive"
	$script:DiretorioUsuario = "$env:UserProfile"
	$script:ArquivoMetadados = "Metadata.json"
	$script:ArquivoConfiguracoes = "Settings.json"
	$script:CorCamada1 = "Black"
	$script:CorCamada2 = "White"
	$script:CorTitulo = "DarkMagenta"
	$script:CorDescricao = "Magenta"
	$script:CorDivisor = "Cyan"
	$script:CorCategoria = "Cyan"
	$script:CorSecao = "Cyan"
	$script:CorID = "DarkGray"
	$script:CorExpansor = "DarkGray"
	$script:CorNavBit = "Cyan"
	$script:CorDestaque = "Cyan"
	$script:CorSucesso = "Green"
	$script:CorAlerta = "Yellow"
	$script:CorErro = "Red"
	$script:Terminal = (Get-Host).UI.RawUI
	$script:TerminalTitulo = $Terminal.WindowTitle
	$script:Terminal.WindowTitle = "$SoftwareNome"
	$script:Terminal.BackgroundColor = "$CorCamada1"
	$script:Terminal.ForegroundColor = "$CorCamada2"
	$script:ElementoTitulo = "  [|]"
	$script:ElementoDescricao = "  {.}"
	$script:ElementoProgresso = "  (-)"
	$script:ElementoInteracao = "  (+)"
	$script:ElementoSucesso = "  (*)"
	$script:ElementoAlerta = "  (!)"
	$script:ElementoErro = "  (~)"
	$script:ElementoAtivo = "  [ +]"
	$script:ElementoInativo = "  [- ]"
	$script:ElementoExpansor = "+"
	$script:ElementoNavBitOn = "•"
	$script:ElementoNavBitOff = " "
	$script:ElementoSeparador = "›"
	$script:ElementoDivisor = "  ------------------------------------------------------------------------------------------------+-+-"
	Write-Host ""
	Write-Host "$ElementoTitulo CARREGANDO" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoProgresso Núcleo carregado"
}

function CarregarInterface {
	Write-Host "$ElementoProgresso Carregando interface"

	$script:MenuTitulo = "MENU"
	$script:ErroTitulo = "ERRO"
	$script:EveOnlineTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador EVE ONLINE"
	$script:EveOnline_CriarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador EVE ONLINE $ElementoSeparador CRIAR BACKUP"
	$script:EveOnline_RestaurarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador EVE ONLINE $ElementoSeparador RESTAURAR BACKUP"
	$script:SurvivingMarsTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador SURVIVING MARS"
	$script:SurvivingMars_CriarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador SURVIVING MARS $ElementoSeparador CRIAR BACKUP"
	$script:SurvivingMars_RestaurarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador SURVIVING MARS $ElementoSeparador RESTAURAR BACKUP"
	$script:AvenColonyTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador AVEN COLONY"
	$script:AvenColony_CriarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador AVEN COLONY $ElementoSeparador CRIAR BACKUP"
	$script:AvenColony_RestaurarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador AVEN COLONY $ElementoSeparador RESTAURAR BACKUP"
	$script:IndustriesOfTitanTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador INDUSTRIES OF TITAN"
	$script:IndustriesOfTitan_CriarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador INDUSTRIES OF TITAN $ElementoSeparador CRIAR BACKUP"
	$script:IndustriesOfTitan_RestaurarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador INDUSTRIES OF TITAN $ElementoSeparador RESTAURAR BACKUP"
	$script:DriversTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador DRIVERS"
	$script:Drivers_CriarBackupTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador DRIVERS $ElementoSeparador CRIAR BACKUP"
	$script:ExportarBackupsTitulo = "MENU $ElementoSeparador BACKUP E RESTAURAÇÃO $ElementoSeparador EXPORTAR BACKUPS"
	$script:ExpurgarArquivosSistemaTitulo = "MENU $ElementoSeparador DEPURAÇÃO DO SISTEMA $ElementoSeparador EXPURGAR ARQUIVOS DE SISTEMA"
	$script:ExpurgarArquivosSoftwareTitulo = "MENU $ElementoSeparador DEPURAÇÃO DO SISTEMA $ElementoSeparador EXPURGAR ARQUIVOS DE SOFTWARE"
	$script:ExpurgarArquivosUsuarioTitulo = "MENU $ElementoSeparador DEPURAÇÃO DO SISTEMA $ElementoSeparador EXPURGAR ARQUIVOS DE USUÁRIO"
	$script:RelatorioBateriaTitulo = "MENU $ElementoSeparador DIAGNÓSTICO DO SISTEMA $ElementoSeparador RELATÓRIO DA BATERIA"
	$script:RelatorioEficienciaEnergeticaTitulo = "MENU $ElementoSeparador DIAGNÓSTICO DO SISTEMA $ElementoSeparador RELATÓRIO DE EFICIÊNCIA ENERGÉTICA"
	$script:VerificarSaudeDrivesTitulo = "MENU $ElementoSeparador DIAGNÓSTICO DO SISTEMA $ElementoSeparador VERIFICAR SAÚDE DOS DRIVES"
	$script:VerificarSistemaArquivosTitulo = "MENU $ElementoSeparador DIAGNÓSTICO DO SISTEMA $ElementoSeparador VERIFICAR SISTEMA DE ARQUIVOS"
	$script:GerenciarAplicativosTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR APLICATIVOS"
	$script:GerenciarAplicativos_ListarAplicativosTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR APLICATIVOS $ElementoSeparador LISTAR APLICATIVOS"
	$script:GerenciarAplicativos_AtualizarAplicativosTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR APLICATIVOS $ElementoSeparador ATUALIZAR APLICATIVOS"
	$script:GerenciarAplicativos_ExportarListaAplicativosTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR APLICATIVOS $ElementoSeparador EXPORTAR LISTA DE APLICATIVOS"
	$script:GerenciarAplicativos_ImportarListaAplicativosTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR APLICATIVOS $ElementoSeparador IMPORTAR LISTA DE APLICATIVOS"
	$script:DesfragmentarTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador DESFRAGMENTAR"
	$script:Desfragmentar_AnalisarTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador DESFRAGMENTAR $ElementoSeparador ANALISAR"
	$script:Desfragmentar_OtimizarTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador DESFRAGMENTAR $ElementoSeparador OTIMIZAR"
	$script:Desfragmentar_OtimizarInicializacaoTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador DESFRAGMENTAR $ElementoSeparador OTIMIZAR INICIALIZAÇÃO"
	$script:Desfragmentar_ConsolidarEspacoLivreTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador DESFRAGMENTAR $ElementoSeparador CONSOLIDAR ESPAÇO LIVRE"
	$script:LimparCacheDNSTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador LIMPAR CACHE DNS"
	$script:GerenciarAdministradorTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR ADMINISTRADOR"
	$script:GerenciarAdministrador_AtivarTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR ADMINISTRADOR $ElementoSeparador ATIVAR"
	$script:GerenciarAdministrador_DesativarTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador GERENCIAR ADMINISTRADOR $ElementoSeparador DESATIVAR"
	$script:VerificarImagemSistemaTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador VERIFICAR IMAGEM DO SISTEMA"
	$script:VerificarImagemSistema_EscanearIntegridadeTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador VERIFICAR IMAGEM DO SISTEMA $ElementoSeparador ESCANEAR INTEGRIDADE"
	$script:VerificarImagemSistema_VerificarIntegridadeTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador VERIFICAR IMAGEM DO SISTEMA $ElementoSeparador VERIFICAR INTEGRIDADE"
	$script:VerificarImagemSistema_RepararIntegridadeTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador VERIFICAR IMAGEM DO SISTEMA $ElementoSeparador REPARAR INTEGRIDADE"
	$script:VerificarInstalacaoSistemaTitulo = "MENU $ElementoSeparador MANUTENÇÃO DO SISTEMA $ElementoSeparador VERIFICAR INSTALAÇÃO DO SISTEMA"
	$script:DispositivoTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO"
	$script:Dispositivo_GeralTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador GERAL"
	$script:Dispositivo_BIOSTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador BIOS"
	$script:Dispositivo_ProcessadorTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador PROCESSADOR"
	$script:Dispositivo_MemoriaTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador MEMÓRIA"
	$script:Dispositivo_ArmazenamentoTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador ARMAZENAMENTO"
	$script:Dispositivo_DisplayTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador DISPLAY"
	$script:Dispositivo_GPUTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador GPU"
	$script:Dispositivo_BateriaTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador BATERIA"
	$script:Dispositivo_SistemaTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador SISTEMA"
	$script:Dispositivo_UsuariosTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador USUÁRIOS"
	$script:Dispositivo_ExportarInformacoesTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador DISPOSITIVO $ElementoSeparador EXPORTAR INFORMAÇÕES"
	$script:ConfiguracoesTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador CONFIGURAÇÕES"
	$script:Configuracoes_HabilitarRegistroEventosTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador CONFIGURAÇÕES $ElementoSeparador HABILITAR REGISTRO DE EVENTOS"
	$script:Configuracoes_DesabilitarRegistroEventosTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador CONFIGURAÇÕES $ElementoSeparador DESABILITAR REGISTRO DE EVENTOS"
	$script:SuporteTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador SUPORTE"
	$script:Suporte_VisualizarRegistroEventosTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador SUPORTE $ElementoSeparador VISUALIZAR REGISTRO DE EVENTOS"
	$script:Suporte_EmpacotarSoftwareTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador SUPORTE $ElementoSeparador EMPACOTAR SOFTWARE"
	$script:Suporte_DesinstalarSoftwareTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador SUPORTE $ElementoSeparador REMOVER SOFTWARE"
	$script:AjudaTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador AJUDA"
	$script:Ajuda_InterfaceTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador AJUDA $ElementoSeparador INTERFACE"
	$script:Ajuda_RecursosTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador AJUDA $ElementoSeparador RECURSOS"
	$script:Ajuda_PoliticaSuporteTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador AJUDA $ElementoSeparador POLÍTICA DE SUPORTE"
	$script:SobreTitulo = "MENU $ElementoSeparador INFORMAÇÕES $ElementoSeparador SOBRE"
	$script:EncerrarTitulo = "ENCERRANDO"

	$script:MenuDescricao = "Saudações $UsuarioNome"
	$script:EveOnlineDescricao = "Cria e restaura backups de EVE Online"
	$script:EveOnline_CriarBackupDescricao = "Cria uma cópia de segurança dos dados e configurações de EVE Online"
	$script:EveOnline_RestaurarBackupDescricao = "Restaura uma cópia de segurança dos dados e configurações de EVE Online"
	$script:SurvivingMarsDescricao = "Cria e restaura backups de Surviving Mars"
	$script:SurvivingMars_CriarBackupDescricao = "Cria uma cópia de segurança dos jogos salvos de Surviving Mars"
	$script:SurvivingMars_RestaurarBackupDescricao = "Restaura uma cópia de segurança dos jogos salvos de Surviving Mars"
	$script:AvenColonyDescricao = "Cria e restaura backups de Aven Colony"
	$script:AvenColony_CriarBackupDescricao = "Cria uma cópia de segurança dos jogos salvos de Aven Colony"
	$script:AvenColony_RestaurarBackupDescricao = "Restaura uma cópia de segurança dos jogos salvos de Aven Colony"
	$script:IndustriesOfTitanDescricao = "Cria e restaura backups de Industries Of Titan"
	$script:IndustriesOfTitan_CriarBackupDescricao = "Cria uma cópia de segurança dos jogos salvos de Industries Of Titan"
	$script:IndustriesOfTitan_RestaurarBackupDescricao = "Restaura uma cópia de segurança dos jogos salvos de Industries Of Titan"
	$script:DriversDescricao = "Cria e restaura backups dos drivers do sistema"
	$script:Drivers_CriarBackupDescricao = "Cria uma cópia de segurança dos drivers do sistema"
	$script:ExportarBackupsDescricao = "Exporta os backups disponíveis para o drive indicado"
	$script:ExpurgarArquivosSistemaDescricao = "Exclui arquivos temporários de sistema"
	$script:ExpurgarArquivosSoftwareDescricao = "Exclui arquivos temporários de softwares"
	$script:ExpurgarArquivosUsuarioDescricao = "Exclui arquivos temporários de $UsuarioNome"
	$script:RelatorioBateriaDescricao = "Gera um relatório detalhado da bateria do dispositivo"
	$script:RelatorioEficienciaEnergeticaDescricao = "Gera um relatório detalhado de eficiência energética do dispositivo"
	$script:VerificarSaudeDrivesDescricao = "Verifica a saúde dos drives conectados"
	$script:VerificarSistemaArquivosDescricao = "Verifica a integridade do sistema de arquivos"
	$script:GerenciarAplicativosDescricao = "Permite listar, atualizar, exportar e importar aplicativos para o sistema"
	$script:GerenciarAplicativos_ListarAplicativosDescricao = "Exibe a lista completa de aplicativos instalados"
	$script:GerenciarAplicativos_AtualizarAplicativosDescricao = "Busca e instala atualizações disponíveis para os aplicativos instalados"
	$script:GerenciarAplicativos_ExportarListaAplicativosDescricao = "Exporta a lista de aplicativos instalados para um arquivo no formato JSON"
	$script:GerenciarAplicativos_ImportarListaAplicativosDescricao = "Importa a lista de aplicativos informada em um arquivo no formato JSON"
	$script:DesfragmentarDescricao = "Localiza e consolida arquivos fragmentados para melhorar o desempenho do sistema"
	$script:Desfragmentar_AnalisarDescricao = "Localiza arquivos fragmentados no drive do sistema"
	$script:Desfragmentar_OtimizarDescricao = "Consolida arquivos fragmentados no drive do sistema"
	$script:Desfragmentar_OtimizarInicializacaoDescricao = "Otimiza o desempenho da inicialização do sistema"
	$script:Desfragmentar_ConsolidarEspacoLivreDescricao = "Consolida o espaço livre no drive do sistema"
	$script:LimparCacheDNSDescricao = "Limpa o cache do DNS"
	$script:GerenciarAdministradorDescricao = "Gerencia o usuário Administrador do sistema"
	$script:GerenciarAdministrador_AtivarDescricao = "Ativa o usuário Administrador do sistema"
	$script:GerenciarAdministrador_DesativarDescricao = "Desativa o usuário Administrador do sistema"
	$script:VerificarImagemSistemaDescricao = "Gerenciamento e manutenção de imagens de implantação"
	$script:VerificarImagemSistema_EscanearIntegridadeDescricao = "Verifica a integridade da imagem do sistema"
	$script:VerificarImagemSistema_VerificarIntegridadeDescricao = "Informa o status da imagem do sistema"
	$script:VerificarImagemSistema_RepararIntegridadeDescricao = "Repara arquivos corrompidos na imagem do sistema"
	$script:VerificarInstalacaoSistemaDescricao = "Repara arquivos corrompidos na instalação do sistema"
	$script:DispositivoDescricao = "Exibe informações sobre o dispositivo"
	$script:Dispositivo_GeralDescricao = "Exibe informações gerais sobre o dispositivo"
	$script:Dispositivo_BIOSDescricao = "Exibe informações sobre a BIOS"
	$script:Dispositivo_ProcessadorDescricao = "Exibe informações sobre o processador"
	$script:Dispositivo_MemoriaDescricao = "Exibe informações sobre a memória"
	$script:Dispositivo_ArmazenamentoDescricao = "Exibe informações sobre o armazenamento"
	$script:Dispositivo_DisplayDescricao = "Exibe informações sobre o display"
	$script:Dispositivo_GPUDescricao = "Exibe informações sobre a GPU"
	$script:Dispositivo_BateriaDescricao = "Exibe informações sobre a bateria"
	$script:Dispositivo_SistemaDescricao = "Exibe informações sobre o sistema operacional"
	$script:Dispositivo_UsuariosDescricao = "Exibe informações sobre os usuários"
	$script:Dispositivo_ExportarInformacoesDescricao = "Exporta as informações do dispositivo para arquivos no formato JSON"
	$script:ConfiguracoesDescricao = "Permite gerenciar as configurações de $SoftwareNome"
	$script:Configuracoes_HabilitarRegistroEventosDescricao = "Habilita o Registro de Eventos"
	$script:Configuracoes_DesabilitarRegistroEventosDescricao = "Desabilita o Registro de Eventos"
	$script:SuporteDescricao = "Permite gerenciar a instalação de $SoftwareNome"
	$script:Suporte_VisualizarRegistroEventosDescricao = "Exibe eventos recentes"
	$script:Suporte_EmpacotarSoftwareDescricao = "Empacota os arquivos necessários para a distribuição de $SoftwareNome"
	$script:Suporte_DesinstalarSoftwareDescricao = "Desinstala $SoftwareNome $SoftwareVersao"
	$script:AjudaDescricao = "Reúne informações sobre a interface, recursos de software e a política de suporte"
	$script:Ajuda_InterfaceDescricao = "Descreve os elementos da interface"
	$script:Ajuda_RecursosDescricao = "Descreve os recursos disponíveis e seus status"
	$script:Ajuda_PoliticaSuporteDescricao = "Descreve as diretrizes de suporte ao software"
	$script:SobreDescricao = "Exibe informações sobre $SoftwareNome"

	$script:ModuloSelecao = "Selecione um comando"
	$script:ModuloConclusao = "Concluído"
	$script:ModuloRetornar = "Pressione [Enter] para retornar"
	$script:ModuloEncerrar = "Pressione [Enter] para encerrar"
	$script:AlertaProblemasEncontrados = "problema(s) encontrado(s). Verifique 'Ajuda'"
	$script:AlertaDesenvolvimentoEncerrado = "O desenvolvimento de $SoftwareNome foi encerrado"
	$script:AlertaDesenvolvimentoDesconhecido = "O desenvolvimento de $SoftwareNome é desconhecido"
	$script:AlertaSuporteEncerrado = "O suporte à esta versão de $SoftwareNome foi encerrado"
	$script:AlertaSuporteDesconhecido = "O suporte à esta versão de $SoftwareNome é desconhecido"
	$script:AlertaDesfragmentacao = "Não é recomendado executar essa funcionalidade em drives de estado sólido"
	$script:AlertaArquivoUso = "É possível que alguns arquivos não tenham sido removidos por estar em uso"
	$script:AlertaComandoInvalido = "Comando inválido"
	$script:ErroElevacao = "$SoftwareNome não foi iniciado com elevação de privilégios"
	$script:ErroOneDrive = "OneDrive não encontrado"
	$script:ErroDiretorioOrigem = "Diretório de origem não encontrado"
	$script:ErroDiretorioDestino = "Diretório de destino não encontrado"
	$script:ErroDiretorio = "Diretório não encontrado"
	$script:ErroArquivo = "Arquivo não encontrado"
	$script:ErroDriveInacessivel = "Drive inacessível ou caminho incorreto"
	$script:ErroDriveEspaco = "Não há espaço suficiente no drive indicado para exportar backups"
	$script:ErroRegistroEventosDesabilitado = "Registro de Eventos está desabilitado"
	$script:ErroDesconhecido = "Erro desconhecido"

	$script:EveOnline_CriarBackupNavBit = "$ElementoNavBitOff"
	$script:EveOnline_RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:SurvivingMars_CriarBackupNavBit = "$ElementoNavBitOff"
	$script:SurvivingMars_RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:AvenColony_CriarBackupNavBit = "$ElementoNavBitOff"
	$script:AvenColony_RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:IndustriesOfTitan_CriarBackupNavBit = "$ElementoNavBitOff"
	$script:IndustriesOfTitan_RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:Drivers_CriarBackupNavBit = "$ElementoNavBitOff"
	$script:Drivers_RestaurarBackupNavBit = "$ElementoNavBitOff"
	$script:ExportarBackupsNavBit = "$ElementoNavBitOff"
	$script:ExpurgarArquivosSistemaNavBit = "$ElementoNavBitOff"
	$script:ExpurgarArquivosSoftwareNavBit = "$ElementoNavBitOff"
	$script:ExpurgarArquivosUsuarioNavBit = "$ElementoNavBitOff"
	$script:RelatorioBateriaNavBit = "$ElementoNavBitOff"
	$script:RelatorioEficienciaEnergeticaNavBit = "$ElementoNavBitOff"
	$script:VerificarSaudeDrivesNavBit = "$ElementoNavBitOff"
	$script:VerificarSistemaArquivosNavBit = "$ElementoNavBitOff"
	$script:GerenciarAplicativos_ListarAplicativosNavBit = "$ElementoNavBitOff"
	$script:GerenciarAplicativos_AtualizarAplicativosNavBit = "$ElementoNavBitOff"
	$script:GerenciarAplicativos_ExportarListaAplicativosNavBit = "$ElementoNavBitOff"
	$script:GerenciarAplicativos_ImportarListaAplicativosNavBit = "$ElementoNavBitOff"
	$script:Desfragmentar_AnalisarNavBit = "$ElementoNavBitOff"
	$script:Desfragmentar_OtimizarNavBit = "$ElementoNavBitOff"
	$script:Desfragmentar_OtimizarInicializacaoNavBit = "$ElementoNavBitOff"
	$script:Desfragmentar_ConsolidarEspacoLivreNavBit = "$ElementoNavBitOff"
	$script:LimparCacheDNSNavBit = "$ElementoNavBitOff"
	$script:GerenciarAdministrador_AtivarNavBit = "$ElementoNavBitOff"
	$script:GerenciarAdministrador_DesativarNavBit = "$ElementoNavBitOff"
	$script:VerificarImagemSistema_EscanearIntegridadeNavBit = "$ElementoNavBitOff"
	$script:VerificarImagemSistema_VerificarIntegridadeNavBit = "$ElementoNavBitOff"
	$script:VerificarImagemSistema_RepararIntegridadeNavBit = "$ElementoNavBitOff"
	$script:VerificarInstalacaoSistemaNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_GeralNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_BIOSNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_ProcessadorNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_MemoriaNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_ArmazenamentoNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_DisplayNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_GPUNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_BateriaNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_SistemaNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_UsuariosNavBit = "$ElementoNavBitOff"
	$script:Dispositivo_ExportarInformacoesNavBit = "$ElementoNavBitOff"
	$script:Configuracoes_HabilitarRegistroEventosNavBit = "$ElementoNavBitOff"
	$script:Configuracoes_DesabilitarRegistroEventosNavBit = "$ElementoNavBitOff"
	$script:Suporte_VisualizarRegistroEventosNavBit = "$ElementoNavBitOff"
	$script:Suporte_EmpacotarSoftwareNavBit = "$ElementoNavBitOff"
	$script:Suporte_DesinstalarSoftwareNavBit = "$ElementoNavBitOff"
	$script:Ajuda_InterfaceNavBit = "$ElementoNavBitOff"
	$script:Ajuda_RecursosNavBit = "$ElementoNavBitOff"
	$script:Ajuda_PoliticaSuporteNavBit = "$ElementoNavBitOff"
	$script:SobreNavBit = "$ElementoNavBitOff"
}

function CriarEstruturaDiretorios {
	Write-Host "$ElementoProgresso Criando estrutura de diretórios"
	$script:DiretorioRaiz = "$DiretorioUsuario\AppData\Local\Hexagon"
	$script:DiretorioInstalacao = "$DiretorioRaiz\$SoftwareNome"
	$script:DiretorioSoftware = "$DiretorioInstalacao\Software"
	$script:DiretorioEventos = "$DiretorioInstalacao\Events"
	$script:DiretorioTemporario = "$DiretorioInstalacao\Temporary"
	if ((Test-Path "$DiretorioRaiz") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioRaiz" | Out-Null
	}
	if ((Test-Path "$DiretorioInstalacao") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioInstalacao" | Out-Null
	}
	if ((Test-Path "$DiretorioSoftware") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioSoftware" | Out-Null
	}
	if ((Test-Path "$DiretorioEventos") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioEventos" | Out-Null
	}
	if ((Test-Path "$DiretorioTemporario") -eq $False) {
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario" | Out-Null
	}
	if ((Test-Path "$DiretorioEventos\$ArquivoEventos") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioEventos\$ArquivoEventos" | Out-Null
	}
	if ((Test-Path "$DiretorioOneDrive\Documentos") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioOneDrive\Documentos" | Out-Null
	}
	if ((Test-Path "$DiretorioOneDrive\Imagens") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioOneDrive\Imagens" | Out-Null
	}
	if ((Test-Path "$DiretorioOneDrive\Games") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioOneDrive\Games" | Out-Null
	}
	if ((Test-Path "$DiretorioOneDrive\Softwares") -eq $False) {
		New-Item -ItemType "File" -Path "$DiretorioOneDrive\Softwares" | Out-Null
	}
	Set-Location "$DiretorioTemporario"
}

function CarregarConfiguracoes {
	Write-Host "$ElementoProgresso Carregando configurações"
	$script:SoftwareConfiguracoes = @{
		ArquivoConfiguracoesVersao = "$SoftwareVersao"
		RegistrarEventosStatus = "1"
		VerificarModulosStatus = "0"
		VerificarInstalacaoStatus = "0"
		GerenciarItensLegadosVersao = "$SoftwareVersao"
	}
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoesTemporario = (Get-Content -Path "$DiretorioSoftware\$ArquivoConfiguracoes" | ConvertFrom-Json)
		if ($SoftwareConfiguracoesTemporario.ArquivoConfiguracoesVersao -eq $SoftwareVersao) {
			$script:SoftwareConfiguracoes.RegistrarEventosStatus = $SoftwareConfiguracoesTemporario.RegistrarEventosStatus
			$script:SoftwareConfiguracoes.VerificarModulosStatus = $SoftwareConfiguracoesTemporario.VerificarModulosStatus
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = $SoftwareConfiguracoesTemporario.VerificarInstalacaoStatus
			$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareConfiguracoesTemporario.GerenciarItensLegadosVersao
		} else {
			$script:SoftwareConfiguracoes.RegistrarEventosStatus = $SoftwareConfiguracoesTemporario.RegistrarEventosStatus
			$script:SoftwareConfiguracoes.VerificarModulosStatus = $SoftwareConfiguracoesTemporario.VerificarModulosStatus
			$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = $SoftwareConfiguracoesTemporario.VerificarInstalacaoStatus
			$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareConfiguracoesTemporario.GerenciarItensLegadosVersao
			$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		}
		$script:SoftwareConfiguracoesTemporario = $Null
	} else {
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq $Null) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.VerificarModulosStatus -eq $Null) {
		$script:SoftwareConfiguracoes.VerificarModulosStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq $Null) {
		$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.GerenciarItensLegadosVersao -eq $Null) {
		$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		if ((Test-Path "$DiretorioEventos\$ArquivoEventos") -eq $True) {
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value ""
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout $SoftwareDiretorioLocal"
		} else {
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout $SoftwareDiretorioLocal"
		}
	}
}

function VerificarSistemaOperacional {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaOperacional"
	}
	Write-Host "$ElementoProgresso Verificando Sistema Operacional"
	$script:SistemaOperacionalVersao = (Get-CimInstance Win32_OperatingSystem).BuildNumber
	if (($IsWindows -eq $False) -or ($SistemaOperacionalVersao -lt $SoftwareRequisitoSistemaOperacional)) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaOperacional; Sistema Operacional incompatível"
		}
		Write-Host "$ElementoErro Atualize o sistema operacional para o Windows 10 Build $SoftwareRequisitoSistemaOperacional ou superior para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $ModuloEncerrar"
		Encerrar
	}
}

function VerificarPowerShell {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarPowerShell"
	}
	Write-Host "$ElementoProgresso Verificando PowerShell"
	$PowerShellMajor = ($PSVersionTable).PSVersion.Major
	$PowerShellMinor = ($PSVersionTable).PSVersion.Minor
	$PowerShellPatch = ($PSVersionTable).PSVersion.Patch
	$script:PowerShellVersao = "$PowerShellMajor.$PowerShellMinor.$PowerShellPatch"
	if ($PowerShellVersao -lt $SoftwareRequisitoPowerShell) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarPowerShell; PowerShell incompatível"
		}
		Write-Host "$ElementoErro Atualize o PowerShell para a versão $SoftwareRequisitoPowerShell ou superior para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $ModuloEncerrar"
		Encerrar
	}
}

function VerificarSoftwares {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSoftwares"
	}
	Write-Host "$ElementoProgresso Verificando softwares"
	$7ZipLocal = (Get-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Software\7-Zip").Path
	if ((Test-Path "$7ZipLocal\7z.exe") -eq $True) {
		$script:7Zip = "$7ZipLocal\7z.exe"
		$script:7ZipStatus = 1
	} else {
		$script:7ZipStatus = 0
	}
	if ($7ZipStatus -eq 1) {
		$7ZipVersao = (Get-Content -Path "$7ZipLocal\Readme.txt" -TotalCount 1)
		if ($7ZipVersao -Match "15.12") {
			$script:7ZipVersao = "15.12"
		} elseif ($7ZipVersao -Match "15.14") {
			$script:7ZipVersao = "15.14"
		} elseif ($7ZipVersao -Match "16.02") {
			$script:7ZipVersao = "16.02"
		} elseif ($7ZipVersao -Match "16.03") {
			$script:7ZipVersao = "16.03"
		} elseif ($7ZipVersao -Match "16.04") {
			$script:7ZipVersao = "16.04"
		} elseif ($7ZipVersao -Match "18.01") {
			$script:7ZipVersao = "18.01"
		} elseif ($7ZipVersao -Match "18.05") {
			$script:7ZipVersao = "18.05"
		} elseif ($7ZipVersao -Match "18.06") {
			$script:7ZipVersao = "18.06"
		} elseif ($7ZipVersao -Match "19.00") {
			$script:7ZipVersao = "19.00"
		} elseif ($7ZipVersao -Match "21.06") {
			$script:7ZipVersao = "21.06"
		} elseif ($7ZipVersao -Match "21.07") {
			$script:7ZipVersao = "21.07"
		} else {
			$script:7ZipVersao = "00.00"
		}
	}
	if ((Test-Path "$DiretorioOneDrive") -eq $True) {
		$script:OneDriveStatus = 1
	} else {
		$script:OneDriveStatus = 0
		$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
	}
	if (($script:7ZipStatus -eq 0) -or ($script:7ZipVersao -lt $script:SoftwareRequisito7Zip)) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSoftwares; 7Zip incompatível"
		}
		Write-Host "$ElementoErro Instale o 7Zip $SoftwareRequisito7Zip para prosseguir" -ForegroundColor "$CorErro"
		Read-Host -Prompt "$ElementoInteracao $ModuloEncerrar"
		Encerrar
	}
}

function VerificarElevacao {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarElevacao"
	}
	Write-Host "$ElementoProgresso Verificando elevação de privilégios"
	$script:ElevacaoStatus = [Bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).Groups -Match "S-1-5-32-544")
	if ($script:ElevacaoStatus -eq $True) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarElevacao; Com elevação de privilégios"
		}
	} elseif ($script:ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarElevacao; Sem elevação de privilégios"
		}
		$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
	}
}

function VerificarModulos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarModulos"
	}
	Write-Host "$ElementoProgresso Verificando módulos"
	if ($SoftwareConfiguracoes.VerificarModulosStatus -eq 0) {
		Write-Host "$ElementoProgresso Instalando módulo BitsTransfer"
		Import-Module BitsTransfer -Force
		$script:SoftwareConfiguracoes.VerificarModulosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
}

function VerificarMetadados {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados"
	}
	ExcluirArquivosTemporarios
	Write-Host "$ElementoProgresso Verificando metadados"
	Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/raw/main/$ArquivoMetadados" -Destination "$DiretorioTemporario\$ArquivoMetadados" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
	$Terminal.ForegroundColor = "$CorCamada2"
	if ((Test-Path "$DiretorioTemporario\$ArquivoMetadados") -eq $True) {
		$script:SoftwareMetadados = (Get-Content -Path "$DiretorioTemporario\$ArquivoMetadados" | ConvertFrom-Json)
		$script:SoftwareDesenvolvimentoStatus = $SoftwareMetadados.Desenvolvimento
		$script:SoftwareSuporteStatus = ($SoftwareMetadados.Versoes | Where-Object -Property ID -eq "$SoftwareVersao").Suporte
		$script:SoftwareAtualizacao = $SoftwareMetadados.Atualizacao
		$script:SoftwareVersaoHash = ($SoftwareMetadados.Versoes | Where-Object -Property ID -eq "$SoftwareVersao").Hash
		$script:SoftwareAtualizacaoHash = ($SoftwareMetadados.Versoes | Where-Object -Property ID -eq "$SoftwareAtualizacao").Hash
		if ($SoftwareDesenvolvimentoStatus -eq 1) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento ativo"
			}
			$script:SoftwareDesenvolvimento = "Ativo"
		} elseif ($SoftwareDesenvolvimentoStatus -eq 0) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento inativo"
			}
			$script:SoftwareDesenvolvimento = "Inativo"
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Desenvolvimento desconhecido"
			}
			$script:SoftwareDesenvolvimento = "Desconhecido"
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		}
		if ($SoftwareSuporteStatus -eq 1) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte ativo"
			}
			$script:SoftwareSuporte = "Ativo"
		} elseif ($SoftwareSuporteStatus -eq 0) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte inativo"
			}
			$script:SoftwareSuporte = "Inativo"
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; Suporte desconhecido"
			}
			$script:SoftwareSuporte = "Desconhecido"
			$script:SoftwareProblemas = ($script:SoftwareProblemas + 1)
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarMetadados; $ErroArquivo"
		}
		$script:SoftwareDesenvolvimentoStatus = $Null
		$script:SoftwareSuporteStatus = $Null
		$script:SoftwareAtualizacao = $Null
	}
}

function VerificarInstalacao {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao"
	}
	Write-Host "$ElementoProgresso Verificando instalação"
	if (($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 0) -and ($SoftwareSuporteStatus -eq 1)) {
		Write-Host "$ElementoProgresso Baixando"
		Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareVersao/$SoftwareNome-$SoftwareVersao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
		$Terminal.ForegroundColor = "$CorCamada2"
		if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z") -eq $True) {
			$script:SoftwarePacoteHash = (Get-FileHash -Algorithm SHA256 "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z").Hash
			Write-Host "$ElementoProgresso Verificando hash"
			if ($SoftwarePacoteHash -eq $SoftwareVersaoHash) {
				Write-Host "$ElementoProgresso Descomprimindo"
				& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao.7z" | Out-Null
				Write-Host "$ElementoProgresso Instalando"
				Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
				Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
				Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareVersao\*" -Destination "$DiretorioSoftware" -Force
				Get-Item "$DiretorioSoftware\$SoftwareNome.ps1" | Unblock-File
				Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
				Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
				Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
				Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
				Read-Host -Prompt "$ElementoInteracao $ModuloEncerrar"
				$script:SoftwareConfiguracoes.VerificarInstalacaoStatus = 1
				$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
				Encerrar
			} else {
				if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
					RegistrarEventos
					Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; Hash incompatível"
				}
			}
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; $ErroArquivo"
			}
		}
	} elseif ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; Instalado"
		}
	} elseif ($SoftwareSuporteStatus -eq 0) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; Suporte inativo"
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacao; $ErroDesconhecido"
		}
	}
}

function VerificarAtualizacoes {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes"
	}
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoProgresso Verificando atualizações"
		if ($SoftwareAtualizacao -gt $SoftwareVersao) {
			Write-Host "$ElementoProgresso Baixando atualização"
			Start-BitsTransfer -Source "https://github.com/2uj1m28ohz/$SoftwareNome/releases/download/$SoftwareAtualizacao/$SoftwareNome-$SoftwareAtualizacao.7z" -Destination "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" -TransferType "Download" -Priority "High" -NotifyFlags "4" -DisplayName "$ElementoAlerta" -Description "Aguarde..."
			$Terminal.ForegroundColor = "$CorCamada2"
			if ((Test-Path "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z") -eq $True) {
				$script:SoftwarePacoteHash = (Get-FileHash -Algorithm SHA256 "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z").Hash
				Write-Host "$ElementoProgresso Verificando hash"
				if ($SoftwarePacoteHash -eq $SoftwareAtualizacaoHash) {
					Write-Host "$ElementoProgresso Descomprimindo atualização"
					& "$7Zip" x "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao.7z" | Out-Null
					Write-Host "$ElementoProgresso Instalando atualização"
					Remove-Item "$DiretorioSoftware\*.ps1" -Recurse -Force | Out-Null
					Remove-Item "$DiretorioSoftware\*.html" -Recurse -Force | Out-Null
					Copy-Item "$DiretorioTemporario\$SoftwareNome-$SoftwareAtualizacao\*" -Destination "$DiretorioSoftware" -Force
					Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
					Set-Content -Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Value "Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1"
					Write-Host "$ElementoProgresso Execute $SoftwareNome com o comando $DiretorioSoftware\$SoftwareNome.ps1" -ForegroundColor "$CorDestaque"
					Read-Host -Prompt "$ElementoInteracao $ModuloEncerrar"
					Encerrar
				} else {
					if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
						RegistrarEventos
						Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Hash incompatível"
					}
					$script:SoftwareStatus = "Desatualizado"
				}
			} else {
				if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
					RegistrarEventos
					Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; $ErroArquivo"
				}
				$script:SoftwareStatus = "Desatualizado"
			}
		} elseif ($SoftwareAtualizacao -eq $SoftwareVersao) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Atualizado"
			}
			$script:SoftwareStatus = "Atualizado"
		} elseif ($SoftwareAtualizacao -lt $SoftwareVersao) {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Pré-visualização"
			}
			$script:SoftwareStatus = "Pré-visualização"
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; $ErroDesconhecido"
			}
			$script:SoftwareStatus = "$ErroDesconhecido"
		}
	} elseif ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 0) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarAtualizacoes; Não instalado"
		}
		$script:SoftwareStatus = "Não instalado"
	}
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS UTILITÁRIOS

function RegistrarEventos {
	$script:EventoData = Get-Date -Format "yyyy.MM.dd"
	$script:EventoHora = Get-Date -Format "HH:mm:ss"
	$script:ArquivoEventos = ("$SoftwareNome"+"-"+"$EventoData"+".log")
	$script:ArquivoEventosLayout = "  $EventoData; $EventoHora; $DispositivoNome; $SistemaOperacionalVersao; $PowerShellVersao; $7ZipVersao; $UsuarioNome; $SoftwareNome; $SoftwareVersao;"
}

function ExcluirArquivosTemporarios {
	Write-Host "$ElementoProgresso Excluindo arquivos temporários"
	Remove-Item "$DiretorioTemporario\*" -Recurse -Force | Out-Null
}

function VerificarDiretorios {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarDiretorios"
	}
	Write-Host "$ElementoProgresso Verificando diretórios"
	if (((Test-Path "$DiretorioUsuario\Documents\EVE") -eq $True) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP") -eq $True)) {
		$script:EveOnline_CriarBackupOrigemStatus = 1
		$script:EveOnline_RestaurarBackupDestinoStatus = 1
	} else {
		$script:EveOnline_CriarBackupOrigemStatus = 0
		$script:EveOnline_RestaurarBackupDestinoStatus = 0
	}
	if ((Test-Path "$DiretorioUsuario\AppData\Roaming\Surviving Mars") -eq $True) {
		$script:SurvivingMars_CriarBackupOrigemStatus = 1
		$script:SurvivingMars_RestaurarBackupDestinoStatus = 1
	} else {
		$script:SurvivingMars_CriarBackupOrigemStatus = 0
		$script:SurvivingMars_RestaurarBackupDestinoStatus = 0
	}
	if ((Test-Path "$DiretorioUsuario\AppData\Local\AvenColony") -eq $True) {
		$script:AvenColony_CriarBackupOrigemStatus = 1
		$script:AvenColony_RestaurarBackupDestinoStatus = 1
	} else {
		$script:AvenColony_CriarBackupOrigemStatus = 0
		$script:AvenColony_RestaurarBackupDestinoStatus = 0
	}
	if ((Test-Path "$DiretorioUsuario\AppData\Local\Titan") -eq $True) {
		$script:IndustriesOfTitan_CriarBackupOrigemStatus = 1
		$script:IndustriesOfTitan_RestaurarBackupDestinoStatus = 1
	} else {
		$script:IndustriesOfTitan_CriarBackupOrigemStatus = 0
		$script:IndustriesOfTitan_RestaurarBackupDestinoStatus = 0
	}
	if ((Test-Path "$DiretorioOneDrive\Games") -eq $True) {
		$script:EveOnline_CriarBackupDestinoStatus = 1
		$script:EveOnline_RestaurarBackupOrigemStatus = 1
		$script:SurvivingMars_CriarBackupDestinoStatus = 1
		$script:SurvivingMars_RestaurarBackupOrigemStatus = 1
		$script:AvenColony_CriarBackupDestinoStatus = 1
		$script:AvenColony_RestaurarBackupOrigemStatus = 1
		$script:IndustriesOfTitan_CriarBackupDestinoStatus = 1
		$script:IndustriesOfTitan_RestaurarBackupOrigemStatus = 1
	} else {
		$script:EveOnline_CriarBackupDestinoStatus = 0
		$script:EveOnline_RestaurarBackupOrigemStatus = 0
		$script:SurvivingMars_CriarBackupDestinoStatus = 0
		$script:SurvivingMars_RestaurarBackupOrigemStatus = 0
		$script:AvenColony_CriarBackupDestinoStatus = 0
		$script:AvenColony_RestaurarBackupOrigemStatus = 0
		$script:IndustriesOfTitan_CriarBackupDestinoStatus = 0
		$script:IndustriesOfTitan_RestaurarBackupOrigemStatus = 0
	}
	if ((Test-Path "$DiretorioOneDrive\Softwares") -eq $True) {
		$script:Drivers_CriarBackupDestinoStatus = 1
	} else {
		$script:Drivers_CriarBackupDestinoStatus = 0
	}
	if ((Test-Path "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome") -eq $True) {
		$script:SoftwareDiretorioStatus = 1
	} else {
		$script:SoftwareDiretorioStatus = 0
	}
}

function CarregarInterfaceCores {
	Clear-Host
	Write-Host ""
	$Terminal.BackgroundColor = "$CorCamada1"
	$Terminal.ForegroundColor = "$CorCamada2"
}

function Erro {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Erro"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ErroTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoAlerta $AlertaComandoInvalido"-ForegroundColor "$CorAlerta"
	Write-Host "$ElementoProgresso Retornando"
	Start-Sleep -Seconds 2
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE BACKUP E RESTAURAÇÃO

function EveOnline {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $EveOnlineTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $EveOnlineDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$EveOnline_CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
		Write-Host "$EveOnline_RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {EveOnline_CriarBackup}
			2 {EveOnline_RestaurarBackup}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function EveOnline_CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $EveOnline_CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $EveOnline_CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($EveOnline_CriarBackupOrigemStatus -eq 1) -and ($EveOnline_CriarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretórios"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\EVE Online" | Out-Null
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\EVE Online\Data" | Out-Null
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\EVE Online\Settings" | Out-Null
		Write-Host "$ElementoProgresso Exportando dados"
		if ((Test-Path "$DiretorioUsuario\Documents\EVE") -eq $True) {
			Copy-Item "$DiretorioUsuario\Documents\EVE" -Destination "$DiretorioTemporario\EVE Online\Data" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Exportando configurações"
		$DiretorioEveOnlineServidor = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "Tranquility"}).Name
		if (($DiretorioEveOnlineServidor -ne $Null) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor") -eq $True)) {
			Copy-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor" -Destination "$DiretorioTemporario\EVE Online\Settings" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		$DiretorioEveOnlineServidor = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "Singularity"}).Name
		if (($DiretorioEveOnlineServidor -ne $Null) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor") -eq $True)) {
			Copy-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor" -Destination "$DiretorioTemporario\EVE Online\Settings" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\EVE Online.7z" "$DiretorioTemporario\EVE Online"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\EVE Online.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\EVE Online.7z" -Destination "$DiretorioOneDrive\Games" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:EveOnline_CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($EveOnline_CriarBackupOrigemStatus -eq 0) -or ($EveOnline_CriarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($EveOnline_CriarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($EveOnline_CriarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_CriarBackup; $ErroOneDrive"
			}
			if ($EveOnline_CriarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_CriarBackup; $ErroDiretorioOrigem"
			}
			if ($EveOnline_CriarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_CriarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function EveOnline_RestaurarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_RestaurarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $EveOnline_RestaurarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $EveOnline_RestaurarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($EveOnline_RestaurarBackupOrigemStatus -eq 1) -and ($EveOnline_RestaurarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Descomprimindo backup"
		& "$7Zip" x "$DiretorioOneDrive\Games\EVE Online.7z" -o"$DiretorioTemporario"
		Write-Host ""
		Write-Host "$ElementoProgresso Restaurando dados"
		if ((Test-Path "$DiretorioTemporario\EVE Online\Data") -eq $True) {
			Remove-Item "$DiretorioUsuario\Documents\EVE" -Recurse -Force | Out-Null
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\EVE Online\Data\EVE" -Destination "$DiretorioUsuario\Documents" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Restaurando configurações"
		if ((Test-Path "$DiretorioTemporario\EVE Online\Settings") -eq $True) {
			$DiretorioEveOnlineServidor = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "Tranquility"}).Name
			if (($DiretorioEveOnlineServidor -ne $Null) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor") -eq $True)) {
				Remove-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor" -Recurse -Force | Out-Null
			}
			$DiretorioEveOnlineServidor = (Get-ChildItem -Path "$DiretorioUsuario\AppData\Local\CCP\EVE" | Where-Object {$PSItem.Name -Match "Singularity"}).Name
			if (($DiretorioEveOnlineServidor -ne $Null) -and ((Test-Path "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor") -eq $True)) {
				Remove-Item "$DiretorioUsuario\AppData\Local\CCP\EVE\$DiretorioEveOnlineServidor" -Recurse -Force | Out-Null
			}
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\EVE Online\Settings\*" -Destination "$DiretorioUsuario\AppData\Local\CCP\EVE\" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:EveOnline_RestaurarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($EveOnline_RestaurarBackupOrigemStatus -eq 0) -or ($EveOnline_RestaurarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($EveOnline_RestaurarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($EveOnline_RestaurarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_RestaurarBackup; $ErroOneDrive"
			}
			if ($EveOnline_RestaurarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_RestaurarBackup; $ErroDiretorioOrigem"
			}
			if ($EveOnline_RestaurarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout EveOnline_RestaurarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function SurvivingMars {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $SurvivingMarsTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $SurvivingMarsDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$SurvivingMars_CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
		Write-Host "$SurvivingMars_RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {SurvivingMars_CriarBackup}
			2 {SurvivingMars_RestaurarBackup}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function SurvivingMars_CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $SurvivingMars_CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $SurvivingMars_CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($SurvivingMars_CriarBackupOrigemStatus -eq 1) -and ($SurvivingMars_CriarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\Surviving Mars" | Out-Null
		Write-Host "$ElementoProgresso Exportando jogos salvos"
		if ((Test-Path "$DiretorioUsuario\AppData\Roaming\Surviving Mars\Save") -eq $True) {
			Copy-Item "$DiretorioUsuario\AppData\Roaming\Surviving Mars\Save" -Destination "$DiretorioTemporario\Surviving Mars" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\Surviving Mars.7z" "$DiretorioTemporario\Surviving Mars"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\Surviving Mars.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\Surviving Mars.7z" -Destination "$DiretorioOneDrive\Games" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:SurvivingMars_CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($SurvivingMars_CriarBackupOrigemStatus -eq 0) -or ($SurvivingMars_CriarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($SurvivingMars_CriarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($SurvivingMars_CriarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_CriarBackup; $ErroOneDrive"
			}
			if ($SurvivingMars_CriarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_CriarBackup; $ErroDiretorioOrigem"
			}
			if ($SurvivingMars_CriarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_CriarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function SurvivingMars_RestaurarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_RestaurarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $SurvivingMars_RestaurarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $SurvivingMars_RestaurarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($SurvivingMars_RestaurarBackupOrigemStatus -eq 1) -and ($SurvivingMars_RestaurarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Descomprimindo backup"
		& "$7Zip" x "$DiretorioOneDrive\Games\Surviving Mars.7z" -o"$DiretorioTemporario"
		Write-Host ""
		Write-Host "$ElementoProgresso Restaurando jogos salvos"
		if ((Test-Path "$DiretorioTemporario\Surviving Mars\Save") -eq $True) {
			Remove-Item "$DiretorioUsuario\AppData\Roaming\Surviving Mars\Save" -Recurse -Force | Out-Null
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\Surviving Mars\Save" -Destination "$DiretorioUsuario\AppData\Roaming\Surviving Mars" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:SurvivingMars_RestaurarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($SurvivingMars_RestaurarBackupOrigemStatus -eq 0) -or ($SurvivingMars_RestaurarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($SurvivingMars_RestaurarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($SurvivingMars_RestaurarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_RestaurarBackup; $ErroOneDrive"
			}
			if ($SurvivingMars_RestaurarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_RestaurarBackup; $ErroDiretorioOrigem"
			}
			if ($SurvivingMars_RestaurarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout SurvivingMars_RestaurarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function AvenColony {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $AvenColonyTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $AvenColonyDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$AvenColony_CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
		Write-Host "$AvenColony_RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {AvenColony_CriarBackup}
			2 {AvenColony_RestaurarBackup}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function AvenColony_CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $AvenColony_CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $AvenColony_CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($AvenColony_CriarBackupOrigemStatus -eq 1) -and ($AvenColony_CriarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\Aven Colony" | Out-Null
		Write-Host "$ElementoProgresso Exportando jogos salvos"
		if ((Test-Path "$DiretorioUsuario\AppData\Local\AvenColony\Saved\SaveGames") -eq $True) {
			Copy-Item "$DiretorioUsuario\AppData\Local\AvenColony\Saved\SaveGames" -Destination "$DiretorioTemporario\Aven Colony" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\Aven Colony.7z" "$DiretorioTemporario\Aven Colony"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\Aven Colony.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\Aven Colony.7z" -Destination "$DiretorioOneDrive\Games" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:AvenColony_CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($AvenColony_CriarBackupOrigemStatus -eq 0) -or ($AvenColony_CriarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($AvenColony_CriarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($AvenColony_CriarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_CriarBackup; $ErroOneDrive"
			}
			if ($AvenColony_CriarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_CriarBackup; $ErroDiretorioOrigem"
			}
			if ($AvenColony_CriarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_CriarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function AvenColony_RestaurarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_RestaurarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $AvenColony_RestaurarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $AvenColony_RestaurarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($AvenColony_RestaurarBackupOrigemStatus -eq 1) -and ($AvenColony_RestaurarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Descomprimindo backup"
		& "$7Zip" x "$DiretorioOneDrive\Games\Aven Colony.7z" -o"$DiretorioTemporario"
		Write-Host ""
		Write-Host "$ElementoProgresso Restaurando jogos salvos"
		if ((Test-Path "$DiretorioTemporario\Aven Colony\SaveGames") -eq $True) {
			Remove-Item "$DiretorioUsuario\AppData\Local\AvenColony\Saved\SaveGames" -Recurse -Force | Out-Null
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\Aven Colony\SaveGames" -Destination "$DiretorioUsuario\AppData\Local\AvenColony\Saved" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:AvenColony_RestaurarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($AvenColony_RestaurarBackupOrigemStatus -eq 0) -or ($AvenColony_RestaurarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($AvenColony_RestaurarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($AvenColony_RestaurarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_RestaurarBackup; $ErroOneDrive"
			}
			if ($AvenColony_RestaurarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_RestaurarBackup; $ErroDiretorioOrigem"
			}
			if ($AvenColony_RestaurarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout AvenColony_RestaurarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function IndustriesOfTitan {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $IndustriesOfTitanTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $IndustriesOfTitanDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$IndustriesOfTitan_CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
		Write-Host "$IndustriesOfTitan_RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {IndustriesOfTitan_CriarBackup}
			2 {IndustriesOfTitan_RestaurarBackup}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function IndustriesOfTitan_CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $IndustriesOfTitan_CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $IndustriesOfTitan_CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($IndustriesOfTitan_CriarBackupOrigemStatus -eq 1) -and ($IndustriesOfTitan_CriarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\Industries Of Titan" | Out-Null
		Write-Host "$ElementoProgresso Exportando jogos salvos"
		if ((Test-Path "$DiretorioUsuario\AppData\Local\Titan") -eq $True) {
			Copy-Item "$DiretorioUsuario\AppData\Local\Titan" -Destination "$DiretorioTemporario\Industries Of Titan" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\Industries Of Titan.7z" "$DiretorioTemporario\Industries Of Titan"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\Industries Of Titan.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\Industries Of Titan.7z" -Destination "$DiretorioOneDrive\Games" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:IndustriesOfTitan_CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($IndustriesOfTitan_CriarBackupOrigemStatus -eq 0) -or ($IndustriesOfTitan_CriarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($IndustriesOfTitan_CriarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($IndustriesOfTitan_CriarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_CriarBackup; $ErroOneDrive"
			}
			if ($IndustriesOfTitan_CriarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_CriarBackup; $ErroDiretorioOrigem"
			}
			if ($IndustriesOfTitan_CriarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_CriarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function IndustriesOfTitan_RestaurarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_RestaurarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $IndustriesOfTitan_RestaurarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $IndustriesOfTitan_RestaurarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($OneDriveStatus -eq 1) -and ($IndustriesOfTitan_RestaurarBackupOrigemStatus -eq 1) -and ($IndustriesOfTitan_RestaurarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Descomprimindo backup"
		& "$7Zip" x "$DiretorioOneDrive\Games\Industries Of Titan.7z" -o"$DiretorioTemporario"
		Write-Host ""
		Write-Host "$ElementoProgresso Restaurando jogos salvos"
		if ((Test-Path "$DiretorioTemporario\Industries Of Titan\Titan") -eq $True) {
			Remove-Item "$DiretorioUsuario\AppData\Local\Titan" -Recurse -Force | Out-Null
			Start-Sleep 0.5
			Copy-Item "$DiretorioTemporario\Industries Of Titan\Titan" -Destination "$DiretorioUsuario\AppData\Local" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:IndustriesOfTitan_RestaurarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($IndustriesOfTitan_RestaurarBackupOrigemStatus -eq 0) -or ($IndustriesOfTitan_RestaurarBackupDestinoStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($IndustriesOfTitan_RestaurarBackupOrigemStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioOrigem" -ForegroundColor "$CorErro"
		}
		if ($IndustriesOfTitan_RestaurarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_RestaurarBackup; $ErroOneDrive"
			}
			if ($IndustriesOfTitan_RestaurarBackupOrigemStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_RestaurarBackup; $ErroDiretorioOrigem"
			}
			if ($IndustriesOfTitan_RestaurarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout IndustriesOfTitan_RestaurarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Drivers {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Drivers"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $DriversTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $DriversDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Drivers_CriarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Criar Backup"
		Write-Host "$Drivers_RestaurarBackupNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Restaurar Backup" -ForegroundColor "DarkGray" -NoNewline; Write-Host " [Em breve]" -ForegroundColor "$CorDestaque"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {Drivers_CriarBackup}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Drivers_CriarBackup {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Drivers_CriarBackup"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Drivers_CriarBackupTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Drivers_CriarBackupDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	if (($ElevacaoStatus -eq $True) -and ($OneDriveStatus -eq 1) -and ($Drivers_CriarBackupDestinoStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\Drivers" | Out-Null
		Write-Host "$ElementoProgresso Exportando drivers"
		DISM /Online /Export-Driver /Destination:"$DiretorioTemporario\Drivers"
		Write-Host ""
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\Drivers.7z" "$DiretorioTemporario\Drivers"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\Drivers.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Transferindo backup"
		Move-Item "$DiretorioTemporario\Drivers.7z" -Destination "$DiretorioOneDrive\Softwares" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:Drivers_CriarBackupNavBit = "$ElementoNavBitOn"
	}
	if (($ElevacaoStatus -eq $False) -or ($OneDriveStatus -eq 0) -or ($Drivers_CriarBackupDestinoStatus -eq 0)) {
		if ($ElevacaoStatus -eq $False) {
			Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
		}
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($Drivers_CriarBackupDestinoStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorioDestino" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($ElevacaoStatus -eq $False) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Drivers_CriarBackup; $ErroElevacao"
			}
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Drivers_CriarBackup; $ErroOneDrive"
			}
			if ($Drivers_CriarBackupDestinoStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Drivers_CriarBackup; $ErroDiretorioDestino"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function ExportarBackups {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExportarBackups"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ExportarBackupsTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $ExportarBackupsDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	VerificarDiretorios
	do {$DriveLetra = Read-Host -Prompt "$ElementoInteracao Informe a letra do drive para onde deseja exportar os backups"
		$DriveCaminho = ("$DriveLetra"+":")
		if ($DriveLetra -Match ":") {
			Write-Host "$ElementoAlerta Não é necessário utilizar ':'" -ForegroundColor "$CorAlerta"
		}
	} while ($DriveLetra -Match ":")
	Write-Host "$ElementoProgresso Verificando drive"
	if ((Test-Path "$DriveCaminho") -eq $True) {
		$ExportarBackupsDestino = 1
		$DiretorioBackup = ("$SoftwareNome"+"-"+"Backup"+"-"+"$DispositivoNome"+"-"+"$UsuarioNome")
	} else {
		$ExportarBackupsDestino = 0
	}
	if ($ExportarBackupsDestino -eq 1) {
		Write-Host "$ElementoProgresso Calculando tamanho do novo backup"
		$BackupNovoTotal = (Get-ChildItem "$DiretorioOneDrive" -Recurse | Measure-Object -Property Length -Sum).Sum
	}
	if ($ExportarBackupsDestino -eq 1) {
		if ((Test-Path "$DriveCaminho\$DiretorioBackup") -eq $True) {
			Write-Host "$ElementoProgresso Calculando tamanho do backup anterior"
			$BackupAnteriorTotal = (Get-ChildItem "$DriveCaminho\$DiretorioBackup" -Recurse | Measure-Object -Property Length -Sum).Sum
		} else {
			$BackupAnteriorTotal = 0
		}
	}
	if ($ExportarBackupsDestino -eq 1) {
		Write-Host "$ElementoProgresso Calculando espaço livre em '$DriveLetra'"
		$DriveLivre = (Get-PSDrive $DriveLetra).Free
		if (($DriveLivre + $BackupAnteriorTotal) -ge $BackupNovoTotal) {
			$ExportarBackupsEspaco = 1
		} elseif (($DriveLivre + $BackupAnteriorTotal) -lt $BackupNovoTotal) {
			$ExportarBackupsEspaco = 0
		}
	}
	if (($OneDriveStatus -eq 1) -and ($ExportarBackupsDestino -eq 1) -and ($ExportarBackupsEspaco -eq 1)) {
		if ((Test-Path "$DriveCaminho\$DiretorioBackup") -eq $True) {
			Write-Host "$ElementoProgresso Excluindo backup anterior"
			Remove-Item "$DriveCaminho\$DiretorioBackup" -Recurse -Force | Out-Null
			Start-Sleep -Seconds 0.5
			Write-Host "$ElementoProgresso Criando novo backup"
			New-Item -ItemType "Directory" -Path "$DriveCaminho\$DiretorioBackup" | Out-Null
		} else {
			Write-Host "$ElementoProgresso Criando novo backup"
			New-Item -ItemType "Directory" -Path "$DriveCaminho\$DiretorioBackup" | Out-Null
		}
		Write-Host "$ElementoProgresso Exportando arquivos .kdbx"
		if ((Test-Path "$DiretorioUsuario\Documents") -eq $True) {
			Copy-Item "$DiretorioUsuario\Documents\*.kdbx" -Destination "$DriveCaminho\$DiretorioBackup" -Recurse -Force
		}
		Write-Host "$ElementoProgresso Exportando Documentos"
		if ((Test-Path "$DiretorioOneDrive\Documentos") -eq $True) {
			Copy-Item "$DiretorioOneDrive\Documentos" -Destination "$DriveCaminho\$DiretorioBackup" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Exportando Imagens"
		if ((Test-Path "$DiretorioOneDrive\Imagens") -eq $True) {
			Copy-Item "$DiretorioOneDrive\Imagens" -Destination "$DriveCaminho\$DiretorioBackup" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Exportando Games"
		if ((Test-Path "$DiretorioOneDrive\Games") -eq $True) {
			Copy-Item "$DiretorioOneDrive\Games" -Destination "$DriveCaminho\$DiretorioBackup" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoProgresso Exportando Softwares"
		if ((Test-Path "$DiretorioOneDrive\Softwares") -eq $True) {
			Copy-Item "$DiretorioOneDrive\Softwares" -Destination "$DriveCaminho\$DiretorioBackup" -Recurse -Force
		} else {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:ExportarBackupsNavBit = "$ElementoNavBitOn"
	}
	if (($OneDriveStatus -eq 0) -or ($ExportarBackupsDestino -eq 0) -or ($ExportarBackupsEspaco -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($ExportarBackupsDestino -eq 0) {
			Write-Host "$ElementoErro $ErroDriveInacessivel" -ForegroundColor "$CorErro"
		}
		if ($ExportarBackupsEspaco -eq 0) {
			Write-Host "$ElementoErro $ErroDriveEspaco" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExportarBackups; $ErroOneDrive"
			}
			if ($ExportarBackupsDestino -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExportarBackups; $ErroDriveInacessivel"
			}
			if ($ExportarBackupsEspaco -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExportarBackups; $ErroDriveEspaco"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE DEPURAÇÃO DO SISTEMA

function ExpurgarArquivosSistema {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExpurgarArquivosSistema"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ExpurgarArquivosSistemaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $ExpurgarArquivosSistemaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	$TotalItens = (Get-ChildItem "$DiretorioSistema\Temp" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Temp"
	if ((Test-Path "$DiretorioSistema\Temp") -eq $True) {
		Remove-Item "$DiretorioSistema\Temp\*" -Recurse -Force | Out-Null
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	$TotalItens = (Get-ChildItem "$DiretorioSistema\Prefetch" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Prefetch"
	if ((Test-Path "$DiretorioSistema\Prefetch") -eq $True) {
		Remove-Item "$DiretorioSistema\Prefetch\*" -Recurse -Force | Out-Null
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	$TotalItens = (Get-ChildItem "$DiretorioSistema\SoftwareDistribution\Download" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Software Distribution"
	if ((Test-Path "$DiretorioSistema\SoftwareDistribution\Download") -eq $True) {
		Remove-Item "$DiretorioSistema\SoftwareDistribution\Download\*" -Recurse -Force | Out-Null
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoAlerta $AlertaArquivoUso" -ForegroundColor "$CorAlerta"
	Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:ExpurgarArquivosSistemaNavBit = "$ElementoNavBitOn"
}

function ExpurgarArquivosSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExpurgarArquivosSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ExpurgarArquivosSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $ExpurgarArquivosSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	$TotalItens = (Get-ChildItem "$DiretorioUsuario\Documents\EVE\Logs" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Logs do EVE Online"
	if ((Test-Path "$DiretorioUsuario\Documents\EVE\Logs") -eq $True) {
		Remove-Item "$DiretorioUsuario\Documents\EVE\Logs\*" -Recurse -Force | Out-Null
		Write-Host "$ElementoAlerta $AlertaArquivoUso" -ForegroundColor "$CorAlerta"
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:ExpurgarArquivosSoftwareNavBit = "$ElementoNavBitOn"
}

function ExpurgarArquivosUsuario {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExpurgarArquivosUsuario"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $ExpurgarArquivosUsuarioTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $ExpurgarArquivosUsuarioDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	$TotalItens = (Get-ChildItem "$DiretorioUsuario\AppData\Local\Temp" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Temp"
	if ((Test-Path "$DiretorioUsuario\AppData\Local\Temp") -eq $True) {
		Remove-Item "$DiretorioUsuario\AppData\Local\Temp\*" -Recurse -Force | Out-Null
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	$TotalItens = (Get-ChildItem "$DiretorioUsuario\Pictures\Screenshots" -Recurse | Measure-Object).Count
	Write-Host "$ElementoProgresso Processando $TotalItens itens no diretório Screenshots"
	if ((Test-Path "$DiretorioUsuario\Pictures\Screenshots") -eq $True) {
		Remove-Item "$DiretorioUsuario\Pictures\Screenshots\*" -Recurse -Force | Out-Null
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoAlerta $AlertaArquivoUso" -ForegroundColor "$CorAlerta"
	Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:ExpurgarArquivosUsuarioNavBit = "$ElementoNavBitOn"
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE DIAGNÓSTICO DO SISTEMA

function RelatorioBateria {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RelatorioBateria"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $RelatorioBateriaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $RelatorioBateriaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if (((Get-CimInstance Win32_Battery).Status) -ne $Null) {
		Set-Location "$DiretorioTemporario"
		Write-Host "$ElementoProgresso Gerando relatório"
		PowerCFG /BatteryReport | Out-Null
		Write-Host "$ElementoProgresso Abrindo relatório"
		Invoke-Item Battery-Report.html
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	} elseif (((Get-CimInstance Win32_Battery).Status) -eq $Null) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RelatorioBateria; Bateria não encontrada"
		}
		Write-Host "$ElementoErro Bateria não encontrada" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:RelatorioBateriaNavBit = "$ElementoNavBitOn"
}

function RelatorioEficienciaEnergetica {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RelatorioEficienciaEnergetica"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $RelatorioEficienciaEnergeticaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $RelatorioEficienciaEnergeticaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Set-Location "$DiretorioTemporario"
		Write-Host "$ElementoProgresso Gerando relatório"
		Write-Host "$ElementoProgresso Monitorando o sistema por 60 segundos"
		PowerCFG /Energy | Out-Null
		Write-Host "$ElementoProgresso Abrindo relatório"
		Invoke-Item Energy-Report.html
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:RelatorioEficienciaEnergeticaNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout RelatorioEficienciaEnergetica; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function VerificarSaudeDrives {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSaudeDrives"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarSaudeDrivesTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarSaudeDrivesDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-PhysicalDisk | Select-Object -Property FriendlyName, MediaType, BusType, OperationalStatus, HealthStatus | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:VerificarSaudeDrivesNavBit = "$ElementoNavBitOn"
}

function VerificarSistemaArquivos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaArquivos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarSistemaArquivosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarSistemaArquivosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Write-Host ""
		ChkDsk /Scan
		Write-Host ""
		$script:VerificarSistemaArquivosNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarSistemaArquivos; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE MANUTENÇÃO DO SISTEMA

function GerenciarAplicativos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAplicativos"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $GerenciarAplicativosTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $GerenciarAplicativosDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$GerenciarAplicativos_ListarAplicativosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Listar Aplicativos"
		Write-Host "$GerenciarAplicativos_AtualizarAplicativosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Atualizar Aplicativos"
		Write-Host "$GerenciarAplicativos_ExportarListaAplicativosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Exportar Lista de Aplicativos"
		Write-Host "$GerenciarAplicativos_ImportarListaAplicativosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Importar Lista de Aplicativos"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {GerenciarAplicativos_ListarAplicativos}
			2 {GerenciarAplicativos_AtualizarAplicativos}
			3 {GerenciarAplicativos_ExportarListaAplicativos}
			4 {GerenciarAplicativos_ImportarListaAplicativos}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function GerenciarAplicativos_ListarAplicativos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAplicativos_ListarAplicativos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAplicativos_ListarAplicativosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAplicativos_ListarAplicativosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Winget List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:GerenciarAplicativos_ListarAplicativosNavBit = "$ElementoNavBitOn"
}

function GerenciarAplicativos_AtualizarAplicativos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAplicativos_AtualizarAplicativos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAplicativos_AtualizarAplicativosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAplicativos_AtualizarAplicativosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Winget Upgrade --All
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:GerenciarAplicativos_AtualizarAplicativosNavBit = "$ElementoNavBitOn"
}

function GerenciarAplicativos_ExportarListaAplicativos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAplicativos_ExportarListaAplicativos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAplicativos_ExportarListaAplicativosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAplicativos_ExportarListaAplicativosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ((Test-Path "$DiretorioOneDrive\Softwares") -eq $True) {
		Write-Host ""
		Winget Export --Output "$DiretorioOneDrive\Softwares\$SoftwareNome-Lista-Aplicativos.json"
		$Terminal.ForegroundColor = "$CorCamada2"
		Write-Host "$ElementoProgresso Arquivo disponível em $DiretorioOneDrive\Softwares\$SoftwareNome-Lista-Aplicativos.json" -ForegroundColor "$CorDestaque"
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		Write-Host ""
	} else {
		Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:GerenciarAplicativos_ExportarListaAplicativosNavBit = "$ElementoNavBitOn"
}

function GerenciarAplicativos_ImportarListaAplicativos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAplicativos_ImportarListaAplicativos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAplicativos_ImportarListaAplicativosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAplicativos_ImportarListaAplicativosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ((Test-Path "$DiretorioOneDrive\Softwares\$SoftwareNome-Lista-Aplicativos.json") -eq $True) {
		Write-Host ""
		Winget Import --Import-File "$DiretorioOneDrive\Softwares\$SoftwareNome-Lista-Aplicativos.json" --Ignore-Versions
		Write-Host ""
		$script:GerenciarAplicativos_ImportarListaAplicativosNavBit = "$ElementoNavBitOn"
	} else {
		Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
	}
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Desfragmentar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $DesfragmentarTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $DesfragmentarDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host "$ElementoAlerta $AlertaDesfragmentacao" -ForegroundColor "$CorAlerta"
		Write-Host ""
		Write-Host "$Desfragmentar_AnalisarNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Analisar"
		Write-Host "$Desfragmentar_OtimizarNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Otimizar"
		Write-Host "$Desfragmentar_OtimizarInicializacaoNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Otimizar Inicialização"
		Write-Host "$Desfragmentar_ConsolidarEspacoLivreNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Consolidar Espaço Livre"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {Desfragmentar_Analisar}
			2 {Desfragmentar_Otimizar}
			3 {Desfragmentar_OtimizarInicializacao}
			4 {Desfragmentar_ConsolidarEspacoLivre}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Desfragmentar_Analisar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_Analisar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Desfragmentar_AnalisarTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Desfragmentar_AnalisarDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Defrag C: /Analyze /Verbose /PrintProgress
		Write-Host ""
		$script:Desfragmentar_AnalisarNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_Analisar; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Desfragmentar_Otimizar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_Otimizar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Desfragmentar_OtimizarTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Desfragmentar_OtimizarDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Defrag C: /Optimize /PrintProgress
		Write-Host ""
		$script:Desfragmentar_OtimizarNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_Otimizar; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Desfragmentar_OtimizarInicializacao {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_OtimizarInicializacao"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Desfragmentar_OtimizarInicializacaoTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Desfragmentar_OtimizarInicializacaoDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Defrag C: /BootOptimize /PrintProgress
		Write-Host ""
		$script:Desfragmentar_OtimizarInicializacaoNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_OtimizarInicializacao; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Desfragmentar_ConsolidarEspacoLivre {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_ConsolidarEspacoLivre"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Desfragmentar_ConsolidarEspacoLivreTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Desfragmentar_ConsolidarEspacoLivreDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Defrag C: /FreeSpaceConsolidate /PrintProgress
		Write-Host ""
		$script:Desfragmentar_ConsolidarEspacoLivreNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Desfragmentar_ConsolidarEspacoLivre; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function LimparCacheDNS {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout LimparCacheDNS"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $LimparCacheDNSTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $LimparCacheDNSDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	IPConfig /FlushDNS
	Write-Host ""
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:LimparCacheDNSNavBit = "$ElementoNavBitOn"
}

function GerenciarAdministrador {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAdministrador"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $GerenciarAdministradorTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $GerenciarAdministradorDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$GerenciarAdministrador_AtivarNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Ativar"
		Write-Host "$GerenciarAdministrador_DesativarNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desativar"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {GerenciarAdministrador_Ativar}
			2 {GerenciarAdministrador_Desativar}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function GerenciarAdministrador_Ativar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAdministrador_Ativar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAdministrador_AtivarTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAdministrador_AtivarDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Write-Host ""
		Net User Administrador /Active:Yes
		$script:GerenciarAdministrador_AtivarNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAdministrador_Ativar; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function GerenciarAdministrador_Desativar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAdministrador_Desativar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $GerenciarAdministrador_DesativarTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $GerenciarAdministrador_DesativarDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		Write-Host ""
		Net User Administrador /Active:No
		$script:GerenciarAdministrador_DesativarNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarAdministrador_Desativar; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function VerificarImagemSistema {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $VerificarImagemSistemaTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $VerificarImagemSistemaDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$VerificarImagemSistema_EscanearIntegridadeNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Escanear Integridade"
		Write-Host "$VerificarImagemSistema_VerificarIntegridadeNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Verificar Integridade"
		Write-Host "$VerificarImagemSistema_RepararIntegridadeNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Reparar Integridade"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {VerificarImagemSistema_EscanearIntegridade}
			2 {VerificarImagemSistema_VerificarIntegridade}
			3 {VerificarImagemSistema_RepararIntegridade}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function VerificarImagemSistema_EscanearIntegridade {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_EscanearIntegridade"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarImagemSistema_EscanearIntegridadeTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarImagemSistema_EscanearIntegridadeDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		DISM /Online /Cleanup-Image /ScanHealth
		Write-Host ""
		$script:VerificarImagemSistema_EscanearIntegridadeNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_EscanearIntegridade; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function VerificarImagemSistema_VerificarIntegridade {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_VerificarIntegridade"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarImagemSistema_VerificarIntegridadeTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarImagemSistema_VerificarIntegridadeDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		DISM /Online /Cleanup-Image /CheckHealth
		Write-Host ""
		$script:VerificarImagemSistema_VerificarIntegridadeNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_VerificarIntegridade; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function VerificarImagemSistema_RepararIntegridade {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_RepararIntegridade"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarImagemSistema_RepararIntegridadeTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarImagemSistema_RepararIntegridadeDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		DISM /Online /Cleanup-Image /RestoreHealth
		Write-Host ""
		$script:VerificarImagemSistema_RepararIntegridadeNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarImagemSistema_RepararIntegridade; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function VerificarInstalacaoSistema {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacaoSistema"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $VerificarInstalacaoSistemaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $VerificarInstalacaoSistemaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($ElevacaoStatus -eq $True) {
		SFC /ScanNow
		Write-Host ""
		$script:VerificarInstalacaoSistemaNavBit = "$ElementoNavBitOn"
	} elseif ($ElevacaoStatus -eq $False) {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout VerificarInstalacaoSistema; $ErroElevacao"
		}
		Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE INFORMAÇÕES

function Dispositivo {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $DispositivoTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $DispositivoDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Dispositivo_GeralNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 11 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Geral"
		Write-Host "$Dispositivo_BIOSNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 12 " -ForegroundColor "$CorID" -NoNewline; Write-Host "BIOS"
		Write-Host "$Dispositivo_ProcessadorNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 13 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Processador"
		Write-Host "$Dispositivo_MemoriaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 14 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Memória"
		Write-Host "$Dispositivo_ArmazenamentoNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 15 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Armazenamento"
		Write-Host "$Dispositivo_DisplayNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 16 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Display"
		Write-Host "$Dispositivo_GPUNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 17 " -ForegroundColor "$CorID" -NoNewline; Write-Host "GPU"
		Write-Host "$Dispositivo_BateriaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 18 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Bateria"
		Write-Host "$Dispositivo_SistemaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 19 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Sistema"
		Write-Host "$Dispositivo_UsuariosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 20 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Usuários"
		Write-Host "$Dispositivo_ExportarInformacoesNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 21 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Exportar Informações"
		Write-Host "   X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			11 {Dispositivo_Geral}
			12 {Dispositivo_BIOS}
			13 {Dispositivo_Processador}
			14 {Dispositivo_Memoria}
			15 {Dispositivo_Armazenamento}
			16 {Dispositivo_Display}
			17 {Dispositivo_GPU}
			18 {Dispositivo_Bateria}
			19 {Dispositivo_Sistema}
			20 {Dispositivo_Usuarios}
			21 {Dispositivo_ExportarInformacoes}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Dispositivo_Geral {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Geral"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_GeralTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_GeralDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_ComputerSystem | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_GeralNavBit = "$ElementoNavBitOn"
}

function Dispositivo_BIOS {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_BIOS"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_BIOSTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_BIOSDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_BIOS | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_BIOSNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Processador {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Processador"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_ProcessadorTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_ProcessadorDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_Processor | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_ProcessadorNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Memoria {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Memoria"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_MemoriaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_MemoriaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_PhysicalMemory | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_MemoriaNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Armazenamento {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Armazenamento"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_ArmazenamentoTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_ArmazenamentoDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_DiskDrive | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_ArmazenamentoNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Display {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Display"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_DisplayTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_DisplayDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_DisplayControllerConfiguration | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_DisplayNavBit = "$ElementoNavBitOn"
}

function Dispositivo_GPU {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_GPU"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_GPUTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_GPUDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_VideoController | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_GPUNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Bateria {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Bateria"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_BateriaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_BateriaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_Battery | Select-Object -Property * | Format-List
	Get-CimInstance Win32_PortableBattery | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_BateriaNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Sistema {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Sistema"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_SistemaTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_SistemaDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_OperatingSystem | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_SistemaNavBit = "$ElementoNavBitOn"
}

function Dispositivo_Usuarios {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_Usuarios"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_UsuariosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_UsuariosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host ""
	Get-CimInstance Win32_UserAccount | Select-Object -Property * | Format-List
	$Terminal.ForegroundColor = "$CorCamada2"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_UsuariosNavBit = "$ElementoNavBitOn"
}

function Dispositivo_ExportarInformacoes {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Dispositivo_ExportarInformacoes"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Dispositivo_ExportarInformacoesTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Dispositivo_ExportarInformacoesDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "$ElementoProgresso Exportando informações"
	Get-CimInstance Win32_ComputerSystem | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Geral.json"
	Get-CimInstance Win32_BIOS | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-BIOS.json"
	Get-CimInstance Win32_Processor | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Processador.json"
	Get-CimInstance Win32_PhysicalMemory | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Memória.json"
	Get-CimInstance Win32_DiskDrive | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Armazenamento.json"
	Get-CimInstance Win32_DisplayControllerConfiguration | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Display.json"
	Get-CimInstance Win32_VideoController | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-GPU.json"
	Get-CimInstance Win32_Battery | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Bateria1.json"
	Get-CimInstance Win32_PortableBattery | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Bateria2.json"
	Get-CimInstance Win32_OperatingSystem | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Sistema.json"
	Get-CimInstance Win32_UserAccount | Select-Object -Property * | ConvertTo-Json -Depth 100 | Out-File -FilePath "$DiretorioUsuario\Downloads\$SoftwareNome-$DispositivoNome-Usuários.json"
	Write-Host "$ElementoProgresso Informações disponíveis em $DiretorioUsuario\Downloads"
	Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Dispositivo_ExportarInformacoesNavBit = "$ElementoNavBitOn"
}

function Configuracoes {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $ConfiguracoesTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $ConfiguracoesDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Configuracoes_HabilitarRegistroEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Habilitar Registro de Eventos"
		Write-Host "$Configuracoes_DesabilitarRegistroEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desabilitar Registro de Eventos"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {Configuracoes_HabilitarRegistroEventos}
			2 {Configuracoes_DesabilitarRegistroEventos}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Configuracoes_HabilitarRegistroEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_HabilitarRegistroEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Configuracoes_HabilitarRegistroEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Configuracoes_HabilitarRegistroEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "$ElementoProgresso Alterando configuração"
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 1
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:Configuracoes_HabilitarRegistroEventosNavBit = "$ElementoNavBitOn"
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_HabilitarRegistroEventos; $ErroArquivo"
		}
		Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Configuracoes_DesabilitarRegistroEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_DesabilitarRegistroEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Configuracoes_DesabilitarRegistroEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Configuracoes_DesabilitarRegistroEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "$ElementoProgresso Alterando configuração"
	if ((Test-Path "$DiretorioSoftware\$ArquivoConfiguracoes") -eq $True) {
		$script:SoftwareConfiguracoes.RegistrarEventosStatus = 0
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
		Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
		$script:Configuracoes_DesabilitarRegistroEventosNavBit = "$ElementoNavBitOn"
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Configuracoes_DesabilitarRegistroEventos; $ErroArquivo"
		}
		Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Suporte {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $SuporteTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $SuporteDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		Write-Host ""
		Write-Host "$Suporte_VisualizarRegistroEventosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Visualizar Registro de Eventos"
		Write-Host "$Suporte_EmpacotarSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Empacotar $SoftwareNome"
		Write-Host "$Suporte_DesinstalarSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desinstalar $SoftwareNome"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {Suporte_VisualizarRegistroEventos}
			2 {Suporte_EmpacotarSoftware}
			3 {Suporte_DesinstalarSoftware}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Suporte_VisualizarRegistroEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_VisualizarRegistroEventos"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_VisualizarRegistroEventosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_VisualizarRegistroEventosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		if ((Test-Path "$DiretorioEventos\$ArquivoEventos") -eq $True) {
			Write-Host "$ElementoProgresso Visualizando o arquivo $ArquivoEventos"
			Write-Host ""
			Get-Content -Path "$DiretorioEventos\$ArquivoEventos"
			Write-Host ""
			$script:Suporte_VisualizarRegistroEventosNavBit = "$ElementoNavBitOn"
		} else {
			Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
		}
	} else {
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_VisualizarRegistroEventos; $ErroRegistroEventosDesabilitado"
		}
		Write-Host "$ElementoErro $ErroRegistroEventosDesabilitado" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Suporte_EmpacotarSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_EmpacotarSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_EmpacotarSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_EmpacotarSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	ExcluirArquivosTemporarios
	VerificarDiretorios
	$SoftwarePacoteVersao = Read-Host -Prompt "$ElementoInteracao Informe a versão do pacote"
	$SoftwarePacoteNome = ("$SoftwareNome"+"-"+"$SoftwarePacoteVersao")
	Write-Host "$ElementoProgresso Verificando arquivos"
	if (((Test-Path "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Release\$SoftwarePacoteNome.ps1") -eq $True) -and ((
		Test-Path "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Documentation\License.html") -eq $True) -and ((
		Test-Path "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Documentation\Readme.html") -eq $True)) {
		$SoftwareArquivosStatus = 1
	} else {
		$SoftwareArquivosStatus = 0
	}
	if (($OneDriveStatus -eq 1) -and ($SoftwareDiretorioStatus -eq 1) -and ($SoftwareArquivosStatus -eq 1)) {
		Write-Host "$ElementoProgresso Criando diretório"
		New-Item -ItemType "Directory" -Path "$DiretorioTemporario\$SoftwarePacoteNome" | Out-Null
		Write-Host "$ElementoProgresso Coletando arquivos"
		Copy-Item "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Release\$SoftwarePacoteNome.ps1" -Destination "$DiretorioTemporario\$SoftwarePacoteNome" -Recurse -Force
		Copy-Item "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Documentation\License.html" -Destination "$DiretorioTemporario\$SoftwarePacoteNome" -Recurse -Force
		Copy-Item "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Documentation\Readme.html" -Destination "$DiretorioTemporario\$SoftwarePacoteNome" -Recurse -Force
		Rename-Item -Path "$DiretorioTemporario\$SoftwarePacoteNome\$SoftwarePacoteNome.ps1" -NewName "$SoftwareNome.ps1"
		Write-Host "$ElementoProgresso Comprimindo arquivos"
		& "$7Zip" a -t7z -ms -mmt -mx9 -mmemuse=p50 "$DiretorioTemporario\$SoftwarePacoteNome.7z" "$DiretorioTemporario\$SoftwarePacoteNome"
		Write-Host ""
		Write-Host "$ElementoProgresso Testando arquivos"
		& "$7Zip" t -r "$DiretorioTemporario\$SoftwarePacoteNome.7z"
		Write-Host ""
		Write-Host "$ElementoProgresso Gerando hash"
		if ((Test-Path "$DiretorioTemporario\$SoftwarePacoteNome.7z") -eq $True) {
			$SoftwarePacoteHash = (Get-FileHash -Algorithm SHA256 "$DiretorioTemporario\$SoftwarePacoteNome.7z").Hash
			Write-Host "$ElementoProgresso Hash SHA256 $SoftwarePacoteHash $SoftwarePacoteNome.7z"
			Write-Host "$ElementoProgresso Transferindo pacote"
			Move-Item "$DiretorioTemporario\$SoftwarePacoteNome.7z" -Destination "$DiretorioOneDrive\Softwares\Hexagon\$SoftwareNome\Download" -Force
			Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
			$script:Suporte_EmpacotarSoftwareNavBit = "$ElementoNavBitOn"
		} else {
			Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
		}
	}
	if (($OneDriveStatus -eq 0) -or ($SoftwareDiretorioStatus -eq 0) -or ($SoftwareArquivosStatus -eq 0)) {
		if ($OneDriveStatus -eq 0) {
			Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
		}
		if ($SoftwareDiretorioStatus -eq 0) {
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
		if ($SoftwareArquivosStatus -eq 0) {
			Write-Host "$ElementoErro $ErroArquivo" -ForegroundColor "$CorErro"
		}
		if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
			RegistrarEventos
			if ($OneDriveStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_EmpacotarSoftware; $ErroOneDrive"
			}
			if ($SoftwareDiretorioStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_EmpacotarSoftware; $ErroDiretorio"
			}
			if ($SoftwareArquivosStatus -eq 0) {
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_EmpacotarSoftware; $ErroArquivo"
			}
		}
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Suporte_DesinstalarSoftware {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_DesinstalarSoftware"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Suporte_DesinstalarSoftwareTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Suporte_DesinstalarSoftwareDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareConfiguracoes.VerificarInstalacaoStatus -eq 1) {
		Write-Host "$ElementoProgresso Desinstalando"
		Set-Location $DiretorioUsuario
		if ((Test-Path "$DiretorioUsuario\Desktop\$SoftwareNome.txt") -eq $True) {
			Remove-Item "$DiretorioUsuario\Desktop\$SoftwareNome.txt" -Force | Out-Null
		}
		if ((Test-Path "$DiretorioInstalacao") -eq $True) {
			Remove-Item "$DiretorioInstalacao" -Recurse -Force | Out-Null
			Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
			Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
			Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
			$script:Suporte_DesinstalarSoftwareNavBit = "$ElementoNavBitOn"
			Encerrar
		} else {
			if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
				RegistrarEventos
				Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Suporte_DesinstalarSoftware; $ErroDiretorio"
			}
			Write-Host "$ElementoErro $ErroDiretorio" -ForegroundColor "$CorErro"
		}
	} else {
		Write-Host "$ElementoErro $SoftwareNome não está instalado" -ForegroundColor "$CorErro"
	}
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
}

function Ajuda {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda"
	}
	do {CarregarInterfaceCores
		Write-Host "$ElementoTitulo $AjudaTitulo" -BackgroundColor "$CorTitulo"
		Write-Host "$ElementoDescricao $AjudaDescricao" -BackgroundColor "$CorDescricao"
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		if ($SoftwareProblemas -gt 0) {
			if ($SoftwareDesenvolvimentoStatus -eq 0) {
				Write-Host "$ElementoAlerta $AlertaDesenvolvimentoEncerrado" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareDesenvolvimentoStatus -eq $Null) {
				Write-Host "$ElementoAlerta $AlertaDesenvolvimentoDesconhecido" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareSuporteStatus -eq 0) {
				Write-Host "$ElementoAlerta $AlertaSuporteEncerrado" -ForegroundColor "$CorAlerta"
			}
			if ($SoftwareSuporteStatus -eq $Null) {
				Write-Host "$ElementoAlerta $AlertaSuporteDesconhecido" -ForegroundColor "$CorAlerta"
			}
			if ($ElevacaoStatus -eq $False) {
				Write-Host "$ElementoErro $ErroElevacao" -ForegroundColor "$CorErro"
			}
			if ($OneDriveStatus -eq 0) {
				Write-Host "$ElementoErro $ErroOneDrive" -ForegroundColor "$CorErro"
			}
		}
		Write-Host ""
		Write-Host "$Ajuda_InterfaceNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Interface"
		Write-Host "$Ajuda_RecursosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Recursos"
		Write-Host "$Ajuda_PoliticaSuporteNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " 3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Política de Suporte"
		Write-Host "  X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Retornar"
		Write-Host ""
		Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
		$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
		switch ($Comando) {
			1 {Ajuda_Interface}
			2 {Ajuda_Recursos}
			3 {Ajuda_PoliticaSuporte}
			X {}
			default {Erro}
		}
	} while ($Comando -ne "X")
}

function Ajuda_Interface {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Interface"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_InterfaceTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_InterfaceDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  TAGS" -ForegroundColor "$CorSecao"
	Write-Host "  São uma forma simples de compreender o progresso da execução de $SoftwareNome, identificando"
	Write-Host "  principalmente mensagens de progresso, interação, alerta e erro. Veja todas abaixo:"
	Write-Host ""
	Write-Host "$ElementoTitulo			Título"
	Write-Host "$ElementoDescricao			Descrição"
	Write-Host "$ElementoProgresso			Progresso"
	Write-Host "$ElementoInteracao			Interação"
	Write-Host "$ElementoSucesso			Sucesso"
	Write-Host "$ElementoAlerta			Alerta"
	Write-Host "$ElementoErro			Erro"
	Write-Host "$ElementoAtivo			Ativo"
	Write-Host "$ElementoInativo			Inativo"
	Write-Host ""
	Write-Host "  NAVBIT" -ForegroundColor "$CorSecao"
	Write-Host "  Representado pelo indicador " -NoNewline; Write-Host "$ElementoNavBitOn" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host ", o NavBit é exibido ao lado de opções em menus e submenus logo após"
	Write-Host "  serem ativadas pelo usuário como uma forma de identificar facilmente funcionalidades já executadas e"
	Write-Host "  telas visualizadas."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Ajuda_InterfaceNavBit = "$ElementoNavBitOn"
}

function Ajuda_Recursos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Recursos"
	}
	$EveOnlineStatus = "$ElementoAtivo"
	$SurvivingMarsStatus = "$ElementoAtivo"
	$AvenColonyStatus = "$ElementoAtivo"
	$IndustriesOfTitanStatus = "$ElementoAtivo"
	$DriversStatus = "$ElementoAtivo"
	$ExportarBackupsStatus = "$ElementoAtivo"
	$ExpurgarArquivosSistemaStatus = "$ElementoAtivo"
	$ExpurgarArquivosSoftwareStatus = "$ElementoAtivo"
	$ExpurgarArquivosUsuarioStatus = "$ElementoAtivo"
	$RelatorioBateriaStatus = "$ElementoAtivo"
	$RelatorioEficienciaEnergeticaStatus = "$ElementoAtivo"
	$VerificarSaudeDrivesStatus = "$ElementoAtivo"
	$VerificarSistemaArquivosStatus = "$ElementoAtivo"
	$GerenciarAplicativosStatus = "$ElementoAtivo"
	$DesfragmentarStatus = "$ElementoAtivo"
	$LimparCacheDNSStatus = "$ElementoAtivo"
	$GerenciarAdministradorStatus = "$ElementoAtivo"
	$VerificarImagemSistemaStatus = "$ElementoAtivo"
	$VerificarInstalacaoSistemaStatus = "$ElementoAtivo"
	$DispositivoStatus = "$ElementoAtivo"
	$ConfiguracoesStatus = "$ElementoAtivo"
	$SuporteStatus = "$ElementoAtivo"
	$AjudaStatus = "$ElementoAtivo"
	$SobreStatus = "$ElementoAtivo"
	if ($ElevacaoStatus -eq $False) {
		$RelatorioEficienciaEnergeticaStatus = "$ElementoInativo"
		$VerificarSistemaArquivosStatus = "$ElementoInativo"
		$DesfragmentarStatus = "$ElementoInativo"
		$GerenciarAdministradorStatus = "$ElementoInativo"
		$VerificarImagemSistemaStatus = "$ElementoInativo"
		$VerificarInstalacaoSistemaStatus = "$ElementoInativo"
	}
	if ($OneDriveStatus -eq 0) {
		$EveOnlineStatus = "$ElementoInativo"
		$SurvivingMarsStatus = "$ElementoInativo"
		$AvenColonyStatus = "$ElementoInativo"
		$IndustriesOfTitanStatus = "$ElementoInativo"
		$DriversStatus = "$ElementoInativo"
		$ExportarBackupsStatus = "$ElementoInativo"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_RecursosTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_RecursosDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  STATUS		NOME						DESCRIÇÃO" -ForegroundColor "$CorSecao"
	Write-Host "$EveOnlineStatus			EVE Online					$EveOnlineDescricao"
	Write-Host "$SurvivingMarsStatus			Surviving Mars					$SurvivingMarsDescricao"
	Write-Host "$AvenColonyStatus			Aven Colony					$AvenColonyDescricao"
	Write-Host "$IndustriesOfTitanStatus			Industries Of Titan				$IndustriesOfTitanDescricao"
	Write-Host "$DriversStatus			Drivers						$DriversDescricao"
	Write-Host "$ExportarBackupsStatus			Exportar Backups				$ExportarBackupsDescricao"
	Write-Host "$ExpurgarArquivosSistemaStatus			Expurgar Arquivos de Sistema			$ExpurgarArquivosSistemaDescricao"
	Write-Host "$ExpurgarArquivosSoftwareStatus			Expurgar Arquivos de Software			$ExpurgarArquivosSoftwareDescricao"
	Write-Host "$ExpurgarArquivosUsuarioStatus			Expurgar Arquivos de Usuário			$ExpurgarArquivosUsuarioDescricao"
	Write-Host "$RelatorioBateriaStatus			Relatório da Bateria				$RelatorioBateriaDescricao"
	Write-Host "$RelatorioEficienciaEnergeticaStatus			Relatório de Eficiência Energética		$RelatorioEficienciaEnergeticaDescricao"
	Write-Host "$VerificarSaudeDrivesStatus			Verificar Saúde dos Drives			$VerificarSaudeDrivesDescricao"
	Write-Host "$VerificarSistemaArquivosStatus			Verificar Sistema de Arquivos			$VerificarSistemaArquivosDescricao"
	Write-Host "$GerenciarAplicativosStatus			Gerenciar Aplicativos				$GerenciarAplicativosDescricao"
	Write-Host "$DesfragmentarStatus			Desfragmentar					$DesfragmentarDescricao"
	Write-Host "$LimparCacheDNSStatus			Limpar Cache DNS				$LimparCacheDNSDescricao"
	Write-Host "$GerenciarAdministradorStatus			Gerenciar Administrador				$GerenciarAdministradorDescricao"
	Write-Host "$VerificarImagemSistemaStatus			Verificar Imagem do Sistema			$VerificarImagemSistemaDescricao"
	Write-Host "$VerificarInstalacaoSistemaStatus			Verificar Instalação do Sistema			$VerificarInstalacaoSistemaDescricao"
	Write-Host "$DispositivoStatus			Dispositivo					$DispositivoDescricao"
	Write-Host "$ConfiguracoesStatus			Configurações					$ConfiguracoesDescricao"
	Write-Host "$SuporteStatus			Suporte						$SuporteDescricao"
	Write-Host "$AjudaStatus			Ajuda						$AjudaDescricao"
	Write-Host "$SobreStatus			Sobre						$SobreDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Ajuda_RecursosNavBit = "$ElementoNavBitOn"
}

function Ajuda_PoliticaSuporte {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Ajuda_Interface"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $Ajuda_PoliticaSuporteTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $Ajuda_PoliticaSuporteDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  1. O QUE SIGNIFICA FIM DE SUPORTE?" -ForegroundColor "$CorSecao"
	Write-Host "  Uma versão sem suporte não está sujeita à garantia de atualização de software. Estão incluídas"
	Write-Host "  atualizações de recursos, correções e otimizações que podem adicionar novas funcionalidades,"
	Write-Host "  corrigir problemas, e otimizar o desempenho e a confiabilidade geral do software."
	Write-Host ""
	Write-Host "  2. QUANDO TERMINA O SUPORTE À MINHA VERSÃO?" -ForegroundColor "$CorSecao"
	Write-Host "  Apenas as três versões recentes lançadas são cobertas pelo suporte e estão sujeitas à garantia"
	Write-Host "  de atualização de software. Se a versão instalada no seu dispositivo for compatível, instale as"
	Write-Host "  atualizações disponíveis. Por exemplo, se você estiver executando a versão 22.100.1 e a versão"
	Write-Host "  22.100.2 foi lançada, será necessário atualizar para a versão 22.100.2 para se qualificar para"
	Write-Host "  o suporte."
	Write-Host ""
	Write-Host "  3. EU AINDA PODEREI USAR O SOFTWARE APÓS O FIM DO SUPORTE?" -ForegroundColor "$CorSecao"
	Write-Host "  Sim. Se você usar uma versão sem suporte, ela ainda funcionará, mas se tornará suscetível a erros"
	Write-Host "  e incompatibilidades de software."
	Write-Host ""
	Write-Host "  4. COMO FAÇO PARA ATUALIZAR?" -ForegroundColor "$CorSecao"
	Write-Host "  Para receber atualizações basta estar conectado à internet. Ao iniciar o software buscará e"
	Write-Host "  instalará atualizações automaticamente. Se o suporte à versão instalada no seu dispositivo for"
	Write-Host "  encerrado, será necessário baixar e instalar a atualização manualmente."
	Write-Host ""
	Write-Host "  5. Como entrar em contato com o Suporte?" -ForegroundColor "$CorSecao"
	Write-Host "  Entre em contato via mensagem privada no Twitter https://twitter.com/hd53r7us3e. Sua resposta será"
	Write-Host "  direcionada o mais breve possível."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:Ajuda_PoliticaSuporteNavBit = "$ElementoNavBitOn"
}

function Sobre {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Sobre"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $SobreTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $SobreDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Write-Host "  SOFTWARE" -ForegroundColor "$CorSecao"
	Write-Host "  Interface				Cosmos"
	Write-Host "  Idioma				PT-BR"
	Write-Host "  Versão				$SoftwareVersao"
	Write-Host "  Status				$SoftwareStatus"
	Write-Host "  Suporte				$SoftwareSuporte"
	Write-Host "  Desenvolvimento			$SoftwareDesenvolvimento"
	Write-Host "  Site					https://www.github.com/2uj1m28ohz"
	Write-Host ""
	Write-Host "  LICENÇA" -ForegroundColor "$CorSecao"
	Write-Host "  Tipo					GNU General Public License v3.0"
	Write-Host "  Link					https://www.gnu.org/licenses/gpl-3.0.html"
	Write-Host "  Descrição				$SoftwareNome é um software desenvolvido para executar rotinas de backup e manutenção do sistema."
	Write-Host "  Copyright				Copyright (C) 2021-2022 David Camargo"
	Write-Host ""
	Write-Host "					Este programa é um software livre: você pode redistribuí-lo e/ou modificá-lo"
	Write-Host "					sob os termos da GNU General Public License conforme publicada pela"
	Write-Host "					Free Software Foundation, seja a versão 3 da Licença, ou"
	Write-Host "					(a seu critério) qualquer versão posterior."
	Write-Host ""
	Write-Host "					Este programa é distribuído na esperança de que seja útil,"
	Write-Host "					mas SEM QUALQUER GARANTIA; sem mesmo a garantia implícita de"
	Write-Host "					COMERCIALIZAÇÃO ou ADEQUAÇÃO A UM DETERMINADO FIM. Veja a"
	Write-Host "					GNU General Public License para mais detalhes."
	Write-Host ""
	Write-Host "					Você deve ter recebido uma cópia da GNU General Public License"
	Write-Host "					junto com este programa. Caso contrário, consulte https://www.gnu.org/licenses."
	Write-Host ""
	Write-Host "  INFORMAÇÕES LEGAIS" -ForegroundColor "$CorSecao"
	Write-Host "  Todas as outras marcas mencionadas são de propriedade de seus respectivos proprietários."
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	Read-Host -Prompt "$ElementoInteracao $ModuloRetornar"
	$script:SobreNavBit = "$ElementoNavBitOn"
}

# ------------------------------------------------------------------------------------------------ | MÓDULOS DE ENCERRAMENTO

function Encerrar {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Encerrar"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $EncerrarTitulo" -BackgroundColor "$CorTitulo"
	GerenciarItensLegados
	ExcluirRegistroEventos
	ExcluirArquivosTemporarios
	Set-Location $DiretorioUsuario
	Write-Host "$ElementoSucesso $ModuloConclusao" -ForegroundColor "$CorSucesso"
	Clear-Host
	$Terminal.WindowTitle = "$TerminalTitulo"
	exit
}

function GerenciarItensLegados {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout GerenciarItensLegados"
	}
	if ($SoftwareConfiguracoes.GerenciarItensLegadosVersao -ne $SoftwareVersao) {
		Write-Host "$ElementoProgresso Gerenciando itens legados"
		if ((Test-Path "$DiretorioUsuario\$SoftwareNome") -eq $True) {
			Remove-Item "$DiretorioUsuario\$SoftwareNome" -Recurse -Force | Out-Null
		}
		$script:SoftwareConfiguracoes.GerenciarItensLegadosVersao = $SoftwareVersao
		$SoftwareConfiguracoes | ConvertTo-Json | Out-File -FilePath "$DiretorioSoftware\$ArquivoConfiguracoes" -Force
	}
}

function ExcluirRegistroEventos {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout ExcluirRegistroEventos"
	}
	Write-Host "$ElementoProgresso Excluindo eventos"
	Get-ChildItem –Path "$DiretorioEventos" -Recurse -Force | Where-Object {($PSItem.LastWriteTime -lt (Get-Date).AddDays(-90))} | Remove-Item -Recurse -Force
}

# ------------------------------------------------------------------------------------------------ | MÓDULO MENU

CarregarNucleo
CarregarInterface
CriarEstruturaDiretorios
CarregarConfiguracoes
VerificarSistemaOperacional
VerificarPowerShell
VerificarSoftwares
VerificarElevacao
VerificarModulos
VerificarMetadados
VerificarInstalacao
VerificarAtualizacoes

function Menu {
	if ($SoftwareConfiguracoes.RegistrarEventosStatus -eq 1) {
		RegistrarEventos
		Add-Content -Path "$DiretorioEventos\$ArquivoEventos" -Value "$ArquivoEventosLayout Menu"
	}
	CarregarInterfaceCores
	Write-Host "$ElementoTitulo $MenuTitulo" -BackgroundColor "$CorTitulo"
	Write-Host "$ElementoDescricao $MenuDescricao" -BackgroundColor "$CorDescricao"
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
	if ($SoftwareProblemas -gt 0) {
		Write-Host "$ElementoAlerta $SoftwareProblemas $AlertaProblemasEncontrados." -ForegroundColor "$CorAlerta"
	}
	Write-Host ""
	Write-Host "  BACKUP E RESTAURAÇÃO" -ForegroundColor "$CorCategoria"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " A1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "EVE Online"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " A2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Surviving Mars"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " A3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Aven Colony"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " A4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Industries Of Titan"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " A5 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Drivers"
	Write-Host "$ExportarBackupsNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " A6 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Exportar Backups"
	Write-Host ""
	Write-Host "  DEPURAÇÃO DO SISTEMA" -ForegroundColor "$CorCategoria"
	Write-Host "$ExpurgarArquivosSistemaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " B1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Expurgar Arquivos de Sistema"
	Write-Host "$ExpurgarArquivosSoftwareNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " B2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Expurgar Arquivos de Software"
	Write-Host "$ExpurgarArquivosUsuarioNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " B3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Expurgar Arquivos de Usuário"
	Write-Host ""
	Write-Host "  DIAGNÓSTICO DO SISTEMA" -ForegroundColor "$CorCategoria"
	Write-Host "$RelatorioBateriaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " C1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Relatório da Bateria"
	Write-Host "$RelatorioEficienciaEnergeticaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " C2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Relatório de Eficiência Energética"
	Write-Host "$VerificarSaudeDrivesNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " C3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Verificar Saúde dos Drives"
	Write-Host "$VerificarSistemaArquivosNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " C4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Verificar Sistema de Arquivos"
	Write-Host ""
	Write-Host "  MANUTENÇÃO DO SISTEMA" -ForegroundColor "$CorCategoria"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " D1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Gerenciar Aplicativos"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " D2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Desfragmentar"
	Write-Host "$LimparCacheDNSNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " D3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Limpar Cache DNS"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " D4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Gerenciar Administrador"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " D5 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Verificar Imagem do Sistema"
	Write-Host "$VerificarInstalacaoSistemaNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " D6 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Verificar Instalação do Sistema"
	Write-Host ""
	Write-Host "  INFORMAÇÕES" -ForegroundColor "$CorCategoria"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " E1 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Dispositivo"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " E2 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Configurações"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " E3 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Suporte"
	Write-Host "$ElementoExpansor" -ForegroundColor "$CorExpansor" -NoNewline; Write-Host " E4 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Ajuda"
	Write-Host "$SobreNavBit" -ForegroundColor "$CorNavBit" -NoNewline; Write-Host " E5 " -ForegroundColor "$CorID" -NoNewline; Write-Host "Sobre"
	Write-Host ""
	Write-Host "   X " -ForegroundColor "$CorID" -NoNewline; Write-Host "Encerrar"
	Write-Host ""
	Write-Host "$ElementoDivisor" -ForegroundColor "$CorDivisor"
}

do {Menu
	$Comando = Read-Host -Prompt "$ElementoInteracao $ModuloSelecao"
	switch ($Comando) {
		A1 {EveOnline}
		A2 {SurvivingMars}
		A3 {AvenColony}
		A4 {IndustriesOfTitan}
		A5 {Drivers}
		A6 {ExportarBackups}
		B1 {ExpurgarArquivosSistema}
		B2 {ExpurgarArquivosSoftware}
		B3 {ExpurgarArquivosUsuario}
		C1 {RelatorioBateria}
		C2 {RelatorioEficienciaEnergetica}
		C3 {VerificarSaudeDrives}
		C4 {VerificarSistemaArquivos}
		D1 {GerenciarAplicativos}
		D2 {Desfragmentar}
		D3 {LimparCacheDNS}
		D4 {GerenciarAdministrador}
		D5 {VerificarImagemSistema}
		D6 {VerificarInstalacaoSistema}
		E1 {Dispositivo}
		E2 {Configuracoes}
		E3 {Suporte}
		E4 {Ajuda}
		E5 {Sobre}
		X {Encerrar}
		default {Erro}
	}
} while ($Comando -ne "X")

# ------------------------------------------------------------------------------------------------ | FIM
