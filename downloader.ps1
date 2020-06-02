
# create a new folder
New-Item -Path 'C:\temp\Test' -ItemType Directory

# create a new file 
New-item C:\temp\Test\download.txt

# invoke the web request 

Invoke-WebRequest http://humanstxt.org/humans.txt -Outfile C:\temp\Test\download.txt

# execute the file 
Invoke-Item "C:\temp\test\download.txt"


