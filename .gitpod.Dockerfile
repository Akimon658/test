FROM akimon658/go-mecab-neologd:1.17.5-bullseye

RUN go install golang.org/x/tools/gopls@latest
