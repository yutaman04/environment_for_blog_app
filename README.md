# environment_for_blog_app
ブログアプリの環境

## 環境構築手順
1. 本環境をclone
```
git clone https://github.com/yutaman04/environment_for_blog_app.git
```

2. frontendフォルダにfrontendアプリをcloneする
```
cd frontend
git clone https://github.com/yutaman04/frontend_for_blog_app.git .
```

3. backendフォルダにbackendアプリをcloneする
```
cd frontend
git clone https://github.com/yutaman04/backend_for_blog_app.git .
```

4. frontendアプリのnode_moduleを取得
```
cd frontend
npm install
```

5. 環境の立ち上げ
```
docker-compose build
docker-compose up -d
又は
docker-compose up
```

6. 動作確認
- コンテナ
```
docker-compose ps
```
```
       Name                      Command               State                    Ports                  
-------------------------------------------------------------------------------------------------------
blog_app_backend_1    uvicorn main:app --reload  ...   Up      0.0.0.0:8080->8080/tcp,:::8080->8080/tcp
blog_app_frontend_1   docker-entrypoint.sh sh -c ...   Up      0.0.0.0:3000->3000/tcp,:::3000->3000/tcp
blog_app_nginx_1      /docker-entrypoint.sh ngin ...   Up      0.0.0.0:80->80/tcp,:::80->80/tcp   
```
- frontend
以下をブラウザのURLバーに入力してNextアプリが表示されることを確認
``
http://localhost/
``
- backend
以下のURLへブラウザ又はpostman等のツール（GET）でアクセス
``
http://localhost:8080/api
``
以下のレスポンスが返ってくれば動作OK
``
{"message":"Hello World"}
``
