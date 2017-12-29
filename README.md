# README.md

## いい感じのブログ作った

![this is my soul world](./public/images/top.png)

和歌山な感じで叙情的で優しい感じのホームページを作りたった

元ネタは2013年に自作したホームページ

失われたコードを書き直した感じ

## 使い方

主にDocker化してるので

```
docker-compose up --build -d
docker-compose exec app rails db:migrate
```

で動く


## やばい

多分テスト書いてない

ビュー主体すぎて書いたなかった

悪かったと思ってる
