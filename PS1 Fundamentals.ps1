#####################################################################################################
#                                           Commands General                                        #
#####################################################################################################

# Get-Process                                      # prints the process
# Get-Process | Short-Object -Property Handles     # prints and sorts based on the handles of the processes
# Get-Alias -Name dir                               
# Get-PSDrive                                       # displays the contents of the system
# Start-Transcript -Path C:\temp\file1.txt          # records anything is logged at the terminal and saves it in the file file1.txt
# Stop-Transcript                                   # stop the recording of the terminal
# Get-Command                                       # prints all commands
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                           Execution policy                                        #
#####################################################################################################

# Get-ExecutionPolicy                               # get ps1 file permissions
# Set-ExecutionPolicy RemoteSigned                  # for ps1 remote file permission 
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                           Alias Pushd and Popd                                    #
#####################################################################################################

# Get-Alias                                         # similar to linux ls. Returns the corresponding commands to ps
# Get-Alias | findstr /s pwd                        # shows the corresponding pwd command in powershell
# pushd c:\temp                                     # stores in a stack the path c:\temp
# popd                                              # switches to the path stored in the stack by pushd
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                         Dir and file listing using get-childitem and formating                    #
#####################################################################################################

# Get-ChildrenItem -path c:\temp                    # prints the processes running in c:\temp
# Get-EventLog -logname system -Entrytype Error     # prints the error of the eventlog called system
# Get-EventLog -logname system -Entrytype Error | format-list| more     # the same as above in a more legible form
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                       Get-Command / Measure-Object                                #
#####################################################################################################

# (Get-Command).count                               # counts the number of commands 
# Get-Command -CommandType cmdlet -Name *service*   # prints words containing the word service
# Measure-Object                                    # counts the number of commands 
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                           File Handling                                           #
#####################################################################################################

# New-Item C:\temp\PSscripts\NewFolder -type Directory  # creates a NewFolder folder in C:\temp\PSscripts\
# New-Item C:\temp\PSscripts\file1.ps1 -type file       # creates the file file1.ps1 in C:\temp\PSscripts\
# New-Item C:\temp\PSscripts\file1.ps1 -type file -force # creates the file file1.ps1 and if it exists, replaces it with a new empty file
# New-Item C:\temp\PSscripts\file1.ps1 -type file -force -value "(get-command).count" # creates the file file1.ps1 and if it exists, replaces it with a new empty file and writes into it (get-command).count

# Get-Content -Path C:\temp\PSscripts\file1.ps1         # prints the contents of the file1.ps1 file

# Remove-Item -path C:\temp\PSscripts\file1.ps1         # deletes the file file1.ps1
# Remove-Item -path C:\temp\PSscripts\* -Recurse        # deletes all files in the path 
# Remove-Item -path C:\temp\PSscripts\* -exclude *.mp3  # deletes all files in the path that are mp3
# Remove-Item -path C:\temp\PSscripts\* -include *.h    # deletes all files in the path except mp3

# Rename-Item C:\temp\PScripts\test.mp3 test.data       # renames the test.mp3 file to test.data
# Rename-Item C:\temp\PScripts\test1.mp3 C:\temp\PScripts\test2.mp3 # renames the same file type 

# Move-Item 'C:\temp\PScripts\test1.mp3' C:\temp        # transfers the file test1.mp3 to C:\temp

# Copy-Items C:\temp\file1.ps1 C:\temp\file2.ps1        # copies the file file1.ps1 and pastes the file with the name file2.ps1

# Test-Path C:\temp\PSscripts\file1.ps1                 # checks the route if it is true or false

# Get-History                                           # prints the history of the last commands
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                           Shorting and Grouping                                   #
#####################################################################################################

# Get-Process | Short-Object ID | more                 # sorts processes by ID 
# Get-EventLog -logname system -newest 20               # shows the last 20 Εvent logs of the system
#----------------------------------------------------------------------------------------------------

#####################################################################################################
#                                           Selecting objects                                       #
#####################################################################################################

# (Get-ChildItem).creationTime | Get-Member
# (Get-ChildItem).creationTime.Year                     # prints the year in which the processes were created
# Get-ChildItem C:\temp | select-object {write-host "the last access time is: " $_.lastaccesstime}  # prints the last connection
# Get-ChildItem *.exe                                   # prints all exe files
# Get-ChildItem *.exe | Group-Object -Property lenght   # prints all exe files based on their size
# (Get-Process -Name notepad).kill()                   # kills notepad process
# Write-Output "Hello word!"                            # prints the message within ""
#----------------------------------------------------------------------------------------------------
