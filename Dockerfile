FROM nginx:alpine

COPY dist/ /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/

# 使用官方的Node.js运行时镜像作为基础
FROM node:16

# 设置工作目录
WORKDIR /app

# 复制package.json和package-lock.json
COPY package*.json ./

# 安装项目依赖
RUN npm install

# 复制项目文件
COPY . .

# 构建项目
RUN npm run build

# 暴露端口
EXPOSE 8000

# 启动项目
CMD ["npm", "start"]