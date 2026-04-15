#!/bin/bash

# GitHub Pages 自动部署脚本
# 使用方法：./deploy.sh "提交信息"

echo "🚀 开始部署到 GitHub Pages..."

# 检查是否提供了提交信息
if [ -z "$1" ]; then
    echo "❌ 错误：请提供提交信息"
    echo "用法: ./deploy.sh \"你的提交信息\""
    exit 1
fi

# 设置变量
COMMIT_MESSAGE="$1"
GITHUB_USERNAME="kevinxwu" # 您的GitHub用户名
REPO_NAME="$GITHUB_USERNAME.github.io"

echo "📦 准备文件..."

# 检查文件是否存在
if [ ! -f "index.html" ]; then
    echo "❌ 错误：index.html 文件不存在"
    exit 1
fi

if [ ! -f "styles.css" ]; then
    echo "❌ 错误：styles.css 文件不存在"
    exit 1
fi

echo "🔧 初始化Git仓库..."

# 初始化Git（如果尚未初始化）
if [ ! -d ".git" ]; then
    git init
    echo "✅ Git仓库初始化完成"
fi

# 添加远程仓库（如果尚未添加）
if ! git remote | grep -q "origin"; then
    git remote add origin "https://github.com/$GITHUB_USERNAME/$REPO_NAME.git"
    echo "✅ 远程仓库连接设置完成"
fi

echo "📝 添加文件到Git..."

# 添加所有文件
git add .

echo "💾 提交更改..."

# 提交更改
git commit -m "$COMMIT_MESSAGE"

if [ $? -eq 0 ]; then
    echo "✅ 提交成功"
else
    echo "⚠️  没有需要提交的更改"
fi

echo "🚀 推送到GitHub..."

# 推送到GitHub
git push -u origin main

if [ $? -eq 0 ]; then
    echo "🎉 部署成功！"
    echo "🌐 您的网站将在几分钟后可用："
    echo "   https://$GITHUB_USERNAME.github.io"
    echo "   https://$GITHUB_USERNAME.github.io/login.html"
else
    echo "❌ 推送失败，请检查："
    echo "   1. GitHub仓库是否存在"
    echo "   2. 网络连接是否正常"
    echo "   3. 权限设置是否正确"
    exit 1
fi

echo ""
echo "📋 下一步："
echo "   1. 访问 https://github.com/$GITHUB_USERNAME/$REPO_NAME/settings/pages"
echo "   2. 确保Source设置为 'Deploy from branch'"
echo "   3. 选择 'main' 分支"
echo "   4. 点击 'Save'"
echo ""
echo "⏰ 等待1-2分钟让更改生效..."