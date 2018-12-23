# 脳画像解析に役立つコマンド一覧
一部の説明は http://www.codereading.com/unix-tutorial/ より引用しています。

## ファイルの移動
- ls
    - ファイルとディレクトリの一覧を表示
- ls -a
    - 全てのファイルとディレクトリの一覧を表示
- mkdir
    - ディレクトリを作成
- cd directory
    - 指定したディレクトリに移動
- cd
    - ホームディレクトリに移動
- cd ~
    - ホームディレクトリに移動
- cd ..
    - 親ディレクトリに移動
- pwd
    - 現在のディレクトリのパスを表示
    
## ファイルのコピー、移動、表示、検索
- cp file1 file2
    - file1 を file2 という名前でコピーする
- mv file1 file2
    - file1 を file2 に移動または名前変更する
- rm file
    - file を削除する
- rmdir directory
    - directory を削除する
- cat file
    - file の内容を表示する
- less file
    - file の内容を1ページごとに表示する
- head file
    - file の先頭から数行を表示する
- tail file
    - file の最後から数行を表示する
- grep 'keyword' file
    - file から keyword を探す
- wc file
    - file の行数/単語数/文字数を数える

## 標準入出力とリダイレクション、パイプライン
- command > file
    - 標準出力を file にリダイレクトする
- command >> file
    - 標準出力を file に追記する
- command < file
    - 標準入力を file に変える
- command1 | command2
    - command1 の出力を command2 に入力としてパイプで送る
- cat file1 file2 > file0
    - file1 と file2 を連結して file0 に送る
- sort
    - データを並べる
- who
    - ログイン中のユーザーの一覧を表示する

## ワイルドカード、ファイル名の規則、マニュアル
- `*`
    - 任意の数の文字と一致する
- ?
    - 1文字と一致する
- man command
    - command のマニュアルページを見る
- whatis command
    - command の簡単な説明を見る
- apropos keyword
    - keyword が man ページに含まれているコマンドを表示する

## ファイルシステムのセキュリティ(アクセス権限)
- ls -lag
    - 全てのファイルのアクセス権限を表示する
- chmod [ options ] file
    - file のアクセス権限を変更する
- command &
    - command をバックグラウンドで実行する
- ^C
    - フォアグラウンドで実行中のジョブを中止する
- ^Z
    - フォアグラウンドで実行中のジョブを一時停止する
- bg
    - 一時停止されたジョブをバックグラウンドで実行する
- jobs
    - ジョブの一覧を表示する
- fg %1
    - 1番目のジョブをフォアグラウンドで実行する
- kill %1
    - 1番目のジョブを中止する
- ps
    - 実行中プロセスの一覧を表示する
- kill 26152
    - プロセス番号 26152 を中止する
