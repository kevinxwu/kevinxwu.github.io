# 个人主页项目

这是一个基于GitHub Pages的个人主页项目，采用现代响应式设计，适合展示个人简介、项目作品和技能专长。

## 功能特性

- 📱 完全响应式设计，支持移动端
- 🎨 现代化UI设计，渐变色彩和卡片布局
- ⚡ 轻量级，加载速度快
- 🎯 清晰的导航和内容结构
- 🔧 易于自定义和扩展

## 项目结构

```
├── index.html      # 主页面文件
├── styles.css      # 样式文件
├── login.html      # 登录页面
├── deploy.bat      # Windows部署脚本
├── deploy.sh       # Linux/Mac部署脚本
├── DEPLOYMENT_GUIDE.md # 详细部署指南
└── README.md       # 项目说明文档
```

## 快速开始

### 1. 部署到GitHub Pages

1. 在GitHub上创建新仓库，命名为：`你的用户名.github.io`
2. 将本项目的所有文件上传到仓库
3. 进入仓库设置 → Pages → 选择分支（main/master）
4. 保存设置，等待几分钟部署完成
5. 访问 `https://你的用户名.github.io`

### 2. 本地预览

直接在浏览器中打开 `index.html` 文件，或使用本地服务器：

```bash
# 使用Python内置服务器
python -m http.server 8000

# 或使用Node.js http-server
npx http-server
```

然后访问 `http://localhost:8000`

## 自定义内容

### 修改个人信息
编辑 `index.html` 文件中的以下部分：

1. **头部标题**：修改 `<h1>` 和 `<p>` 标签中的文字
2. **关于我**：在 `#about` 部分更新个人介绍
3. **项目展示**：在 `#projects` 部分添加实际项目
4. **技能列表**：在 `#skills` 部分更新技能项
5. **联系方式**：在 `#contact` 部分更新联系信息

### 修改样式
编辑 `styles.css` 文件来自定义：

- 颜色主题（修改CSS变量）
- 字体和排版
- 布局和间距
- 动画效果

### 添加新页面
1. 创建新的HTML文件
2. 复制现有页面的结构和样式
3. 更新导航菜单链接
4. 添加新内容

## 浏览器支持

- Chrome (推荐)
- Firefox
- Safari
- Edge

## 技术栈

- HTML5
- CSS3 (Flexbox, Grid, 响应式设计)
- 原生JavaScript（可扩展）

## 许可证

MIT License - 可自由使用和修改

## 贡献

欢迎提交Issue和Pull Request来改进这个项目！

## 部署脚本使用

### Windows系统
```cmd
# 使用部署脚本
deploy.bat "初始提交：添加个人主页"

# 或者手动Git命令
git add .
git commit -m "提交信息"
git push origin main
```

### Linux/Mac系统
```bash
# 给脚本执行权限
chmod +x deploy.sh

# 使用部署脚本
./deploy.sh "初始提交：添加个人主页"
```

### 重要提示
使用脚本前请修改脚本中的 `GITHUB_USERNAME` 为您的实际GitHub用户名

## 更新日志

- 2025-01-01：初始版本发布
- 包含基础响应式布局和现代设计风格
- 添加登录页面功能
- 提供自动化部署脚本