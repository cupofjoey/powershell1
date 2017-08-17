These are some options for a request by my boss for a powershell script that can identify image files by their naming convention (that is to say, their date).
We'll see if this fits the bill but I think it's going somewhere. 

So far I have two options: 

1. Using regex, the script can parse the filename and see if it fits the requirements of the DayDate. I've tried to make it so that it will only recognize the folder created
the day before.

2. Using Get-ChildItem -Path I can splite the base name to see if it fits within the constraints. Going to see what Bill goes for. 