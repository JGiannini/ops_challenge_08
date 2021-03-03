@echo off
::========================================================================================================================================================================================================================================================== 
:: [X] Automate a recursive copy operation for a client who writes:
:: "Hello IT team, thanks for setting up my new internal hard drive last week. It works great, and I've been manually copying my work files on the desktop every night before I head home. I was curious if there's a way to automate this process? Thanks!"
:: [X] Schedule the script to execute every night at midnight (Configured using Task Scheduler
:: [X] Have the script generate a log file of what took place
::==========================================================================================================================================================================================================================================================

Robocopy "C:\Users\j.thompson\Desktop\My Project Files" "J:\My Project Files" /MIR 
::Using MIR makes sure we copy over all folders and subfolders to our backup drive and is a shorter way of using /E and /PURGE

echo [X] My Project Files backup performed on %DATE% at %TIME% > "J:\Backup_Log.txt"
::Generates a log file and I included some timestamp info for troubleshooting