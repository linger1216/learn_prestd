# 使用prest官方镜像
FROM alpine:latest

# 设置工作目录
WORKDIR /app

# 复制当前目录下的所有文件到工作目录
COPY . .

# 暴露9000端口
EXPOSE 3000

RUN chmod +x /app/prestd_linux_amd64

# 启动prestd
CMD ["/app/prestd_linux_amd64"]