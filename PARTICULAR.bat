
Ol�, amigos da Microsoft, por favor me ajudem. Eu preciso saber se o c�digo escrito abaixo dessa pergunta � malicioso ou n�o. Tem muitos sites na internet que ensinam a inserir senhas em pastas criadas no Windows. As instru��es dadas por eles, de uma forma muito resumida s�o as seguintes:

1. Escrever o c�digo no Bloco de Notas e salv�-lo como: 'todos os arquivos'

2. Esse c�digo  criar� um arquivo .bat que proteger� com senha uma pasta espec�fica criada para essa finalidade (sabemos o quanto s�o suspeitos os .bat)

3. O arquivo .bat exigir� uma senha toda vez que algu�m tentar abrir a pasta protegida por ele.

Eu uso Windows 10 e gostaria de saber se eu posso usar esse m�todo no Windows 10. Eu desconfiei que esse c�digo ou comando seja uma armadilha de hacker. Isso � uma armadilha de hacker? Isso pode prejudicar o computador? Eu coloco abaixo links para alguns sites que ensinam esse m�todo:

http://www.techtudo.com.br/dicas-e-tutoriais/noticia/2012/02/como-colocar-senhas-em-pastas-do-windows.html

https://www.youtube.com/watch?v=tIFxEgkSBa8

http://ogestor.eti.br/aprenda-como-colocar-senha-em-pastas-no-windows/



cls
@ECHO OFF
title www.seututorial.com
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Tem certeza de que deseja bloquear a pasta (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Digite a senha para desbloquear pasta
set/p "pass=>"
if NOT %pass%== 0398 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder Unlocked successfully
goto End
:FAIL
echo Senha Invalida
goto end
:MDLOCKER
md Private
echo Private foi criada com sucesso
goto End
:End



FONTE
https://www.seututorial.com/2011/04/como-colocar-senha-em-pastas-sem-usar.html