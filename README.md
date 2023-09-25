# RoR_FullCalendar_ResponsiveVer
このリポジトリは、[こちら](https://github.com/ytojima/RoR_FullCalendar_Sample)で作成したFullCalendarのサンプルを、レスポンシブ対応にしたものです。

Dockerを使用してサンプルを作成しています。  
Dockerを使用しない場合は、appフォルダ以下で、コマンドを実行してください。

## Dockerでの起動

### 初回起動
```bash
docker compose run --rm app bundle install
docker compose run --rm app yarn install
docker compose run --rm app rails db:create
docker compose run --rm app rails db:migrate
docker compose up
```

#### 2回目以降の起動
```bash
docker-compose up
```