dir
@echo off
set /p proj_name="Enter project name : "
mkdir "%proj_name%" & cd "%proj_name%" &
npm create vite@latest "frontend" -- --template react --yes & cd frontend & npm install & type nul > .env & cd .. & mkdir backend & cd backend & npm init -y & npm install & npm i express cors dotenv & npm install --save-dev nodemon & type nul > index.js & type nul > .env & timeout /t 1 /nobreak >nul & powershell -ExecutionPolicy Bypass -File "..\..\update-package-json.ps1" & cd .. & git init & echo **/.env >> .gitignore & echo node_modules/ >> .gitignore & code .