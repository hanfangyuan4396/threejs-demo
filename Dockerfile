FROM nginx:latest

# 复制构建产物到 nginx html 目录
COPY dist /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80
