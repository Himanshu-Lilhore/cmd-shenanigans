dir
@echo off
set /p proj_name="Enter project name : "

npm create vite@latest "%proj_name%" -- --template react --yes & cd "%proj_name%" & npm install & code . & npm run dev
pause
