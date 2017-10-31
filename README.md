# Apache＋PHP5.6 Server - Debian

docker-composeコマンドを使っての操作方法を記載します。

## 起動方法について（ RUN ）

下記のコマンドにてコンテナを起動します。 (port 80 is available)

※ メール送信を使う場合は、php-ssmtp.conf内にgmailのID,PWDを設定してください。

```
$ git clone https://github.com/reflet/server-debian8-httpd-php56.git .
$ cd docker
$ docker-compose up -d
```

コンテナの起動状況は下記コマンドにて確認ください。

```
$ docker-compose ps
```

## テストについて（ TEST ）

下記コマンドにて、結果が返ってきたら問題ありません。

```
$ curl http://{localhost}/
```

※localhostの部分は、環境に合わせて変更ください。

例) vagrantにて192.168.33.10にサーバ起動 (localhost -> 192.168.33.10)

## メール送信について
 
mailCatcherを利用しています。

送信したメールは、実際には送信されず、mailCatcherに保管されており、下記WebUIで確認できます。

http://{localhost}:1080

※localhostの部分は、環境に合わせて変更ください。

例) vagrantにて192.168.33.10にサーバ起動 (localhost -> 192.168.33.10)

## メンテナンスについて（ EXEC ）

コンテナ内に入って操作したい場合は、下記コマンドにて接続ください。

※操作を終了する場合は、「exit」でコンソールを抜けられます。

```
$ docker exec -u "www-data" -it php /bin/bash
```
