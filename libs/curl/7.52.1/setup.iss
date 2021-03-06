; ==========================================================================
; External dep - cURL 7.52.1
; ==========================================================================

[Components]
Name: "External\curl\v7_52_1"; Description: "7.52.1"; Flags: exclusive
Name: "External\curl\v7_52_1\sspi"; Description: "DLL WinSSPI"; Flags: exclusive;
Name: "External\curl\v7_52_1\ossl"; Description: "DLL OpenSSL"; Flags: exclusive;

[Files]
Source: "{#ROOT}\libs\curl\7.52.1\lic\*"; DestDir: "{app}\{#Arch}\external\lic\curl"; Flags: recursesubdirs; Components: External\curl\v7_52_1
Source: "{#ROOT}\libs\curl\7.52.1\include\*"; DestDir: "{app}\{#Arch}\external\include"; Flags: recursesubdirs; Components: External\curl\v7_52_1

; External dep - curl OpenSSL
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL OpenSSL\curl.exe"; DestDir: "{app}\{#Arch}\external\bin"; Components: External\curl\v7_52_1\ossl
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL OpenSSL\libcurl.dll"; DestDir: "{app}\{#Arch}\external\bin"; Components: External\curl\v7_52_1\ossl
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL OpenSSL\libcurl.lib"; DestDir: "{app}\{#Arch}\external\lib"; Components: External\curl\v7_52_1\ossl

; External dep - curl WinSSPI
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL Windows SSPI\curl.exe"; DestDir: "{app}\{#Arch}\external\bin"; Components: External\curl\v7_52_1\sspi
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL Windows SSPI\libcurl.dll"; DestDir: "{app}\{#Arch}\external\bin"; Components: External\curl\v7_52_1\sspi
Source: "{#ROOT}\libs\curl\7.52.1\{#ArchName}\{#RT}\DLL Release - DLL Windows SSPI\libcurl.lib"; DestDir: "{app}\{#Arch}\external\lib"; Components: External\curl\v7_52_1\sspi
