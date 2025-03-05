# nextjs-docker
developing nextjs with docker example

# dockerfileのみで開発するとき
build docker image
```sh
$ docker build ./ -t <container name>

# container name is what you want
$ docker run -v ./:/app -p 3000:3000 -it <container name>
# -vでmountすると、ホットリロードが効くので開発用に使えます。
```

# この環境を自作する場合
とりあえずnext.jsを建てる
```sh
$ npx create-next-app@latest
```
`compose.yml`と`Dockerfile`と`.dockerignore`をrootにおいて完成！
