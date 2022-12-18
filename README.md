## 用途  

Amazon Photoに大量のお気に入り画像をアップロードする  
odrive_backup.bat：8行目で指定されたパス配下のファイルのバックアップを開始  

Amazon PhotoのAPIが現在受付終了した為、odriveを利用しCLIでバックアップする(GUIソフトのインストールは不要)

## セットアップ  

※初期セットアップ部分うろ覚えの為、詰まった場合は以下リンク参照  
https://tech.blog.uribou.me/acd_with_odrive/
https://docs.odrive.com/docs/odrive-sync-agent



1．odriveアカウントを作成  
https://www.odrive.com/account/myodrive

2．Amazonアカウントと連携する  

3．Amazon DriveのAuth Keysを確認し控えておく  
https://www.odrive.com/account/authcodes

4．setup.txtの4行目[auth-code]に確認したコードを入力する([]は不要)  

5．管理者権限でpowershellを開き、setup.txtのコマンドを上から順に実施  

6．以下コマンドを実施し、hasSession:Trueであれば完了
```
python "$HOME/.odrive-agent/bin/odrive.py status"
```

## 使い方  

odrive_backup.batを実行する  

## 注意点  

odrive_backup.batは開始時に以前のbackup jobを消して新規にbackupコマンドを実行しているが、  
これはあくまで「jobを追加しているだけ」なのでbat処理完了＝アップロード完了ではない。  
bat自体はjob追加完了後すぐ閉じて良いが、アップロード中に端末が通信不能になるとアップロードは中断される。

## その他  

- backupが終わったかどうかをどう判断すれば良い？  
 - タスクマネージャー等で上り帯域をモニターするして判断するしかない  

- 端末再起動後コマンドが使えなくなった  
 - ダウンロードされているはずのodriveagent.exeを再実行する必要があるかもしれない  

- ファイルのダウンロードは不可？  
 - syncで可能なはずだがファイル操作ができなかった為一旦諦め。  
 - 幸いAmazon Photoで検索(前方一致)が機能するので、現状DLしたいファイルの連番抜き等で  

- ファイルリストは取得できない？  
 - できないらしい。  

- Amazon Driveであってもアップロードファイルが画像であればフォルダ分けすることが可能。対応した方が便利では？  
 - 2023年からAmazon Driveが廃止されるらしいので諦め。Amazon DriveのAPIが完全に使えなくなるだろうからこれも使えなくなるかも。  
