FROM nginx:alpine

# 删除 nginx 默认配置
RUN rm /etc/nginx/conf.d/default.conf

# 复制构建产物到 nginx html 目录
COPY dist/ /usr/share/nginx/html/

# 暴露 80 端口
EXPOSE 80

# 启动 nginx
CMD ["nginx", "-g", "daemon off;"]