set pathMSBuild = "C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\MSBuild\Current\Bin\"

dotnet restore & %pathMSBuild%msbuild.exe RunReport.sln & bin\Debug\netcoreapp3.0\RunReport.exe files\Manufacturing.docx files\output.docx -xml:MANF_DATA_2009 files\Manufacturing.xml & pause