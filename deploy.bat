@echo off
chcp 65001 >nul

echo 🚀 GitHub Pages 自动部署脚本
echo.

:: 检查是否提供了提交信息
if "%1"=="" (
    echo ❌ 错误：请提供提交信息
    echo 用法: deploy.bat "你的提交信息"
    pause
    exit /b 1
)

set COMMIT_MESSAGE=%1
set GITHUB_USERNAME=kevinxwu
set REPO_NAME=%GITHUB_USERNAME%.github.io

echo 📦 准备文件...

:: 检查文件是否存在
if not exist "index.html" (
    echo ❌ 错误：index.html 文件不存在
    pause
    exit /b 1
)

if not exist "styles.css" (
    echo ❌ 错误：styles.css 文件不存在
    pause
    exit /b 1
)

echo 🔧 初始化Git仓库...

:: 初始化Git（如果尚未初始化）
if not exist ".git" (
    git init
    echo ✅ Git仓库初始化完成
)

:: 添加远程仓库（如果尚未添加）
git remote > temp.txt 2>&1
findstr /i "origin" temp.txt >nul
if errorlevel 1 (
    git remote add origin https://github.com/%GITHUB_USERNAME%/%REPO_NAME%.git
    echo ✅ 远程仓库连接设置完成
)
del temp.txt

echo 📝 添加文件到Git...

:: 添加所有文件
git add .

echo 💾 提交更改...

:: 提交更改
git commit -m "%COMMIT_MESSAGE%"

if %errorlevel% equ 0 (
    echo ✅ 提交成功
) else (
    echo ⚠️  没有需要提交的更改
)

echo 🚀 推送到GitHub...

:: 推送到GitHub
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo 🎉 部署成功！
    echo 🌐 您的网站将在几分钟后可用：
    echo    https://%GITHUB_USERNAME%.github.io
    echo    https://%GITHUB_USERNAME%.github.io/login.html
    echo.
    echo 📋 下一步：
    echo    1. 访问 https://github.com/%GITHUB_USERNAME%/%REPO_NAME%/settings/pages
    echo    2. 确保Source设置为 "Deploy from branch"
    echo    3. 选择 "main" 分支
    echo    4. 点击 "Save"
    echo.
    echo ⏰ 等待1-2分钟让更改生效...
) else (
    echo.
    echo ❌ 推送失败，请检查：
    echo    1. GitHub仓库是否存在
    echo    2. 网络连接是否正常  
    echo    3. 权限设置是否正确
    echo    4. 是否已安装Git
)

echo.
pause