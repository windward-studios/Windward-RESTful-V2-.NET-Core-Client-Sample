if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Community\" (
set "pathMSBuild=%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin")
if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Enterprise" (
set "pathMSBuild=%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Enterprise\MSBuild\Current\Bin"
)
if exist "%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Professional" (
set "pathMSBuild=%ProgramFiles(x86)%\Microsoft Visual Studio\2019\Professional\MSBuild\Current\Bin"
)

echo MS BUILD PATH %pathMSBuild%
set "execpath=%pathMSBuild%\MSBuild.exe"
dotnet restore & "%execpath%" RunReport.sln & bin\Debug\netcoreapp3.0\RunReport.exe files\Manufacturing.docx files\output.docx -xml:MANF_DATA_2009 files\Manufacturing.xml & pause