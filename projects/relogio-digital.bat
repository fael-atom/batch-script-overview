@echo off
title ^|   RELOGIO     ^|    BATCH-SATTI    ^|
setlocal enabledelayedexpansion enableextensions
mode con cols=88 lines=12 &color 2A
set PISCA=ON
 
 
:LIMPA
if %time:~0,2% GTR 9 (
    set TEMPO=%time:~0,5%
    ) else (
      set TEMPO=0%time:~1,4%
      )
 
if %PISCA%==ON (
    set X=_
    set "Y=(_)"
    set PISCA=OFF
    ) else (
      set "X= "
      set "Y=   "
      set PISCA=ON
      )
 
for /f "tokens=2,* delims=[]" %%§ in ('"%comspec% /u /c echo:%TEMPO%|more|find /n /v """') do call :MOSTRA_%%§
 
cls
echo. &echo                                       -= SEIK© =-
 
for /l %%§ in (1,1,8) do echo.     !LINHA_%%§!
 
for /l %%§ in (1,1,8) do set LINHA_%%§=
 
@ping localhost -n 1 >nul
goto :LIMPA
 
:MOSTRA_0
set "LINHA_1=%LINHA_1%     _  _  _     "
set "LINHA_2=%LINHA_2%   _(_)(_)(_)_   "
set "LINHA_3=%LINHA_3%  (_)       (_)  "
set "LINHA_4=%LINHA_4% (_)         (_) "
set "LINHA_5=%LINHA_5% (_)         (_) "
set "LINHA_6=%LINHA_6% (_)         (_) "
set "LINHA_7=%LINHA_7%  (_)_  _  _(_)  "
set "LINHA_8=%LINHA_8%    (_)(_)(_)    "
goto :EOF
 
:MOSTRA_1
set "LINHA_1=%LINHA_1%        _        "
set "LINHA_2=%LINHA_2%     _ (_)       "
set "LINHA_3=%LINHA_3%   _(_)(_)       "
set "LINHA_4=%LINHA_4%  (_)  (_)       "
set "LINHA_5=%LINHA_5%       (_)       "
set "LINHA_6=%LINHA_6%       (_)       "
set "LINHA_7=%LINHA_7%  _  _ (_) _  _  "
set "LINHA_8=%LINHA_8% (_)(_)(_)(_)(_) "
goto :EOF
 
:MOSTRA_2
set "LINHA_1=%LINHA_1%     _  _  _     "
set "LINHA_2=%LINHA_2%  _ (_)(_)(_) _  "
set "LINHA_3=%LINHA_3% (_)         (_) "
set "LINHA_4=%LINHA_4%           _ (_) "
set "LINHA_5=%LINHA_5%        _ (_)    "
set "LINHA_6=%LINHA_6%     _ (_)       "
set "LINHA_7=%LINHA_7%  _ (_) _  _  _  "
set "LINHA_8=%LINHA_8% (_)(_)(_)(_)(_) "
goto :EOF
 
:MOSTRA_3
set "LINHA_1=%LINHA_1%    _  _  _  _    "
set "LINHA_2=%LINHA_2%  _(_)(_)(_)(_)_  "
set "LINHA_3=%LINHA_3% (_)          (_) "
set "LINHA_4=%LINHA_4%          _  _(_) "
set "LINHA_5=%LINHA_5%         (_)(_)_  "
set "LINHA_6=%LINHA_6%  _           (_) "
set "LINHA_7=%LINHA_7% (_)_  _  _  _(_) "
set "LINHA_8=%LINHA_8%   (_)(_)(_)(_)   "
goto :EOF
 
:MOSTRA_4
set "LINHA_1=%LINHA_1%           _     "
set "LINHA_2=%LINHA_2%        _ (_)    "
set "LINHA_3=%LINHA_3%     _ (_)(_)    "
set "LINHA_4=%LINHA_4%  _ (_)   (_)    "
set "LINHA_5=%LINHA_5% (_) _  _ (_) _  "
set "LINHA_6=%LINHA_6% (_)(_)(_)(_)(_) "
set "LINHA_7=%LINHA_7%          (_)    "
set "LINHA_8=%LINHA_8%          (_)    "
goto :EOF
 
:MOSTRA_5
set "LINHA_1=%LINHA_1%  _  _  _  _  _  "
set "LINHA_2=%LINHA_2% (_)(_)(_)(_)(_) "
set "LINHA_3=%LINHA_3% (_) _  _  _     "
set "LINHA_4=%LINHA_4% (_)(_)(_)(_) _  "
set "LINHA_5=%LINHA_5%             (_) "
set "LINHA_6=%LINHA_6%  _          (_) "
set "LINHA_7=%LINHA_7% (_) _  _  _ (_) "
set "LINHA_8=%LINHA_8%    (_)(_)(_)    "
goto :EOF
 
:MOSTRA_6
set "LINHA_1=%LINHA_1%      _  _  _   "
set "LINHA_2=%LINHA_2%    _(_)(_)(_)  "
set "LINHA_3=%LINHA_3%  _(_)          "
set "LINHA_4=%LINHA_4% (_) _  _  _    "
set "LINHA_5=%LINHA_5% (_)(_)(_)(_)_  "
set "LINHA_6=%LINHA_6% (_)        (_) "
set "LINHA_7=%LINHA_7% (_)_  _  _ (_) "
set "LINHA_8=%LINHA_8%   (_)(_)(_)    "
goto :EOF
 
:MOSTRA_7
set "LINHA_1=%LINHA_1%  _  _  _  _  _  "
set "LINHA_2=%LINHA_2% (_)(_)(_)(_)(_) "
set "LINHA_3=%LINHA_3%           _(_)  "
set "LINHA_4=%LINHA_4%         _(_)    "
set "LINHA_5=%LINHA_5%       _(_)      "
set "LINHA_6=%LINHA_6%     _(_)        "
set "LINHA_7=%LINHA_7%   _(_)          "
set "LINHA_8=%LINHA_8%  (_)            "
goto :EOF
 
:MOSTRA_8
set "LINHA_1=%LINHA_1%    _  _  _  _    "
set "LINHA_2=%LINHA_2%  _(_)(_)(_)(_)_  "
set "LINHA_3=%LINHA_3% (_)          (_) "
set "LINHA_4=%LINHA_4% (_)_  _  _  _(_) "
set "LINHA_5=%LINHA_5%  _(_)(_)(_)(_)_  "
set "LINHA_6=%LINHA_6% (_)          (_) "
set "LINHA_7=%LINHA_7% (_)_  _  _  _(_) "
set "LINHA_8=%LINHA_8%   (_)(_)(_)(_)   "
goto :EOF
 
:MOSTRA_9
set "LINHA_1=%LINHA_1%     _  _  _     "
set "LINHA_2=%LINHA_2%  _ (_)(_)(_) _  "
set "LINHA_3=%LINHA_3% (_)         (_) "
set "LINHA_4=%LINHA_4% (_) _  _  _ (_) "
set "LINHA_5=%LINHA_5%    (_)(_)(_)(_) "
set "LINHA_6=%LINHA_6%            _(_) "
set "LINHA_7=%LINHA_7%    _  _  _(_)   "
set "LINHA_8=%LINHA_8%   (_)(_)(_)     "
goto :EOF
 
:MOSTRA_:
set "LINHA_1=%LINHA_1%         "
set "LINHA_2=%LINHA_2%         "
set "LINHA_3=%LINHA_3%    %X%    "
set "LINHA_4=%LINHA_4%   %Y%   "
set "LINHA_5=%LINHA_5%    %X%    "
set "LINHA_6=%LINHA_6%   %Y%   "
set "LINHA_7=%LINHA_7%         "
set "LINHA_8=%LINHA_8%         "
goto :EOF