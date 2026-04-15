# GitHub Pages 部署详细指南

## 🚀 快速部署步骤

### 方法一：使用GitHub网页端（推荐新手）

#### 第一步：创建GitHub仓库
1. 访问 [GitHub.com](https://github.com) 并登录您的账户
2. 点击右上角"+" → "New repository"
3. 设置仓库名称：`你的用户名.github.io`（必须精确匹配）
4. 描述："My Personal Website"
5. 选择"Public"（公开）
6. 勾选"Add a README file"
7. 点击"Create repository"

#### 第二步：上传文件
1. 进入新创建的仓库页面
2. 点击"Add file" → "Upload files"
3. 将以下文件拖拽到上传区域：
   - `index.html`
   - `styles.css` 
   - `login.html`
   - `README.md`
4. 点击"Commit changes"

#### 第三步：启用GitHub Pages
1. 进入仓库 → Settings → Pages
2. 在"Source"部分选择"Deploy from a branch"
3. 分支选择"main"（或"master"）
4. 文件夹选择"/(root)"
5. 点击"Save"

#### 第四步：访问您的网站
等待1-2分钟，访问：`https://你的用户名.github.io`

### 方法二：使用Git命令行（推荐开发者）

#### 第一步：安装Git
1. 下载Git: https://git-scm.com/downloads
2. 安装并配置Git：
   ```bash
   git config --global user.name "您的姓名"
   git config --global user.email "您的邮箱"
   ```

#### 第二步：初始化Git仓库
```bash
# 进入项目目录
cd d:\code\webpage

# 初始化Git
git init

# 添加所有文件
git add .

# 提交更改
git commit -m "初始提交：添加个人主页"
```

#### 第三步：连接到GitHub
```bash
# 创建远程仓库连接
git remote add origin https://github.com/你的用户名/你的用户名.github.io.git

# 推送代码到GitHub
git branch -M main
git push -u origin main
```

#### 第四步：启用GitHub Pages
1. 按照方法一的第三步操作
2. 或者在命令行创建gh-pages分支：
   ```bash
   git checkout -b gh-pages
   git push origin gh-pages
   ```

## 🔑 GitHub 访问令牌设置（可选）

如果您想使用命令行更安全地操作：

1. 访问 GitHub Settings → Developer settings → Personal access tokens
2. 点击"Generate new token"
3. 设置权限：repo（全选）、workflow（可选）
4. 生成令牌并妥善保存
5. 使用令牌代替密码：
   ```bash
   git remote set-url origin https://令牌@github.com/你的用户名/你的用户名.github.io.git
   ```

## 📱 移动端GitHub App

您也可以使用GitHub移动端App：
1. 下载GitHub App
2. 登录您的账户
3. 点击"+"创建新仓库
4. 上传文件并启用Pages

## 🛠️ 故障排除

### 常见问题

1. **404错误**：确保仓库名正确：`用户名.github.io`
2. **页面不更新**：等待1-2分钟或强制刷新（Ctrl+F5）
3. **样式丢失**：检查CSS文件路径是否正确

### 调试步骤

1. 检查仓库设置中的Pages配置
2. 查看Actions标签页中的部署状态
3. 使用浏览器开发者工具检查控制台错误

## 🌐 自定义域名（可选）

如果您有自己的域名：
1. 在仓库Settings → Pages → Custom domain
2. 输入您的域名
3. 在域名注册商处配置CNAME记录

## 📊 访问统计

启用GitHub Pages后，您可以在仓库的Insights标签页查看访问统计。

## 🔒 安全提示

- 不要分享您的GitHub密码
- 使用访问令牌代替密码
- 定期检查仓库的访问权限

## 💡 提示

部署完成后，您的个人主页将可以通过以下地址访问：
- `https://你的用户名.github.io`（主页面）
- `https://你的用户名.github.io/login.html`（登录页面）

如果需要进一步帮助，请参考GitHub官方文档或联系GitHub支持。