echo Star of %0
set Configuration=%1
set ExternalTools=%2
set Output=%3
set version=%4
IF NOT "%version%" == "" set VersionAttr=;VersionAttr=%version%
set ProjectDir=%~dp0
set NuGet=%ExternalTools%\NuGet.exe
set Properties=Configuration=%Configuration%;Platform=x86%VersionAttr%

echo Properties=%Properties%

%NuGet% pack %ProjectDir%\XXLanguageXXVsPackage.nuspec -OutputDirectory %Output% -Properties "%Properties%" 
echo End of %0
