FROM akimon658/go-mecab-neologd:latest

USER gitpod
RUN go get golang.org/x/tools/gopls@latest
