# 脳画像解析のためのコマンドライン習得勉強会

2019年02月10日に開催予定である **『脳画像解析のためのコマン
ドライン習得勉強会』** の受講者を対象とした情報提供サイトです。新しい情報
があれば、随時このサイトへ追加していきますので、定期的にアクセスするようにして下さい。

## 新着情報
- 2019.01.24: 第1部〜第4部のテキストをすべて改訂し、表紙にバージョンをつけました。Ver.1.2.20190123 となります。
- 2019.01.20: 第2部および第4部のテキストおよび関連するスクリプトを修正しました。
- 2019.01.11: 第4部のテキストをアップロードしました。
- 2019.01.10: 第3部のテキストをアップロードしました。 
- 2019.01.04: macOSへのdcm2niixのインストール方法についての説明リンクを追記しました。
- 2019.01.03: 勉強会で使用するデータおよび第1部、第2部のテキストをアップロードしました。
- 2019.01.02: データのダウンロード方法について記載しました。
- 2018.12.24: ページを大幅に改変しました。
- 2018.12.23: Lin4Neuro/Macの環境を構築するための資料を準備しました。
- 2018.12.01: 勉強会用ウェブサイトを立ち上げました。

## 会場案内
- [オフィス東京](https://www.officetokyo.net/)

## チュートリアル当日のお願い
- 会場は、飲食可能です。しかし、コンピュータを使いますので、コーヒーをキーボードの上にこぼすといった悲劇が起こらないよう、ふたのついた飲み物の持ち込みにご協力ください。昼食は、会場内で召し上がっていただいてかまいません。
- 開場時間は **08:30** です。いろいろ不安な方は早めにお越しいただき、講師やチューターとコミュニケーションをとっておくことをお勧めします。
- 会場に到着したら、まず受付をお願いします。

## 勉強会までの予定
- 2018.12.10: 2ヶ月前までにLin4Neuro/Macの環境を構築できるように資料を準備します。
- 2019.01.10: 1ヶ月前までに勉強会のテキストやデータを配布します。


## 勉強会のスケジュール(予定)

| 時間        | 内容                                                |
| 事前予習    | ファイル処理: pwd, cd, ls, mv, cp, rm, mkdir, rmdir |
| 08:30       | 開場                                                |
| 09:00-09:05 | 開会                                                |
| 09:05-10:15 | 第1部: UNIX系OSのお作法                             |
| 10:25-12:00 | 第2部: 画像解析ソフトのコマンド                     |
| 12:00-13:00 | -- 昼食 --                                          |
| 13:00-14:50 | 第3部: テキスト処理                                 |
| 15:00-17:00 | 第4部: シェルスクリプト                                    |
| 17:00-17:30 | 閉会・質疑応答                                      |

## パソコンの持参について
- 勉強会では、受講者にPCを持参して頂き、実際に操作しながらコマンドラインについて学んでいきます。PCのスペックについては、以下の**推奨条件**を参考にして下さい
	- Windowsユーザー
		- Windows 7以降 **64bit版**
		- メモリ：8GB以上
		- ハードディスク：100GB以上の空き容量
		- 2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）
    
	- Macユーザー
		- macOS 10.11(El Captain)以降
		- メモリ：8GB以上
		- ハードディスク：100GB以上の空き容量
		- 2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）
    

## 事前準備

### 想定パターン
今回、以下のパターンを想定しています。
        
- Mac, Winを問わず、VirtualBoxおよびLin4Neuroを準備してチュートリアルに参加する場合

勉強会は、Lin4Neuro上でターミナルを動かしていきます。
講師と同じ環境を再現したい場合は、Lin4Neuro上で作業することを推奨します。
このメリットは、研究室に戻った際に、Windowsのワークステーションなどでも
同様の環境を簡単に構築できることです。

- 自前のMac解析環境またはLinux解析環境でチュートリアルに参加する場合

FSL, MRIcroGL, gitを自前でセットアップ可能なら、自前のMacまたはLinuxで参加いただけます。その場合、事前サポートは限られることをご了承ください。セットアップに自信がない場合は、VirtualBox + Lin4Neuro で参加することをお勧めします。

### (1) Lin4Neuroを使って参加する場合(推奨)
- Lin4Neuro仮想マシンのダウンロード
以下の文書を参考に、ご自分のパソコンに**Lin4Neuro**環境を作成して下さい。

	- Macユーザー：[VirtualboxへのLin4Neuroのインストール-Mac編-](https://github.com/kytk/shell-basic/raw/master/docs/pdf/L4N_on_Mac_Install.pdf)
	- Windowsユーザー：[VirtualboxへのLin4Neuroのインストール-Windows編-](https://github.com/kytk/shell-basic/raw/master/docs/pdf/L4N_on_Win_Install.pdf)
	
### (2) 自前のmacOS環境で参加する場合

- ご自身でMacを操作する方は、下記を参考に、FSL と MRIcroGLを下記を参考に各自セットアップしてきてください。
        
	- FSL: [FSLのmacOSへのインストール方法](http://www.nemotos.net/?p=243)

	- MRIcroGL: [MRIcroGL および dcm2niix の macOSでのセットアップ方法](http://www.nemotos.net/?p=2946)

- FSL のセットアップ確認

ターミナルから以下のコマンドをタイプしてください。

```
imglob
```

以下の表示がなされていれば、FSLは正しくインストールされています。

> Usage: imglob [-extension/extensions] <list of names>
>        -extension for one image with full extension
>        -extensions for image list with full extensions

もし、

> imglob: command not found

という表示が出たら、[FSL で imglob: command not found と出た時の対処方法](http://www.nemotos.net/?p=2964) に従って、問題を解決してください。

### (3) テキストおよびデータのダウンロード

#### Lin4Neuroで参加する方

- ターミナルを起動し、以下のようにタイプしてください。

```
cd ~/git
git clone https://github.com/kytk/shell-basic.git
```

以降、アナウンスがあった際には以下のようにして更新します。

```
cd ~/git/shell-basic
git pull
```

#### Macの環境で参加する方

- ターミナルを起動し、以下のようにタイプしてください。

```
cd ~/git
```

- もし、ここで、「そのようなファイルやディレクトリはありません」と言われたら、以下のコマンドで作成します

```
mkdir ~/git
cd git
```

- そのうえで、以下のコマンドをタイプします。

```
git clone https://github.com/kytk/shell-basic.git
```

以降、アナウンスがあった際には以下のようにして更新します。

```
cd ~/git/shell-basic
git pull
```

	
## 問い合わせ
準備がうまくいかない時のために、問い合わせフォームを準備しています
。こちらからご質問ください。数日以内に担当者から返信させていただきます。

[問い合わせフォーム](https://goo.gl/forms/iE5SCx9GWKIwIreK2)


-----

# Command line workshop for neuroimaging analysis

This is the web page for **"Command line workshop for neuroimaging analysis"**.
Please prepare your PC with the information below.

## Venue
- [Office Tokyo](https://www.officetokyo.net/)

## Notes
- You can bring in beverage and foods and have lunch in the seminar room. Please make sure to bring in the beverage with lids so that you don't mess up your computer.

- The room will open at **08:30 a.m.** If you are concerned about your circumstance, please come earlier and resolve your concerns beforehand.
- Please register first when you get to the seminar room.

## Timetable

| Time        | Contents                                            |
| Prep        | pwd, cd, ls, mv, cp, rm, mkdir, rmdir               |
| 08:30       | Registration open                                   |
| 09:00-09:05 | Opening                                             |
| 09:05-10:15 | Session 1: Things to know about UNIX-like OS        |
| 10:25-12:00 | Session 2: Basic commands for neuroimaging analysis |
| 12:00-13:00 | -- Lunch --                                         |
| 13:00-14:50 | Session 3: Text processing                          |
| 15:00-17:00 | Session 4: Shell scripts                            |
| 17:00-17:30 | Closing; Q&A                                        |

## Computer to bring 
- In this seminar, you will learn about command line with your own computer. Recommendations are as follows;
	- Windows
		- Windows 7 **64bit Edition** or later
		- Memory: more than 8GB (You need at least 8GB)
		- Hard disk: Free space more than 100GB
    
	- Mac
		- macOS 10.11(El Captain) or later
		- Memory: more than 8GB (You need at least 8GB)
		- Hard disk: Free space more than 100GB
    

## Preparation

You have two options for preparation

- Lin4Neuro (Mac/Win)

Lin4Neuro Virtual Machine is provided for this seminar. All software is already setup in this virtual machine. If you are newbie or feel uncomfortable setting up the environment, use Lin4Neuro. You can have VM on either Mac or Windows.

- Mac with FSL, MRIcroGL

If you are able to install FSL and MRIcroGL by yourself, you can participate with your own Mac. 

### (1) Lin4Neuro (recommended)
- Download Lin4Neuro virtual machine
Please read the document below (it's written in Japanese) and have **Lin4Neuro** virtual machine on your computer.

	- Mac：[VirtualboxへのLin4Neuroのインストール-Mac編-](https://github.com/kytk/shell-basic/raw/master/docs/pdf/L4N_on_Mac_Install.pdf)
	- Windowsユーザー：[VirtualboxへのLin4Neuroのインストール-Windows編-](https://github.com/kytk/shell-basic/raw/master/docs/pdf/L4N_on_Win_Install.pdf)
	
### (2) macOS

- If you want to participate with your own Mac, please set up FSL and MRIcroGL with the document below (written in Japanese).
        
	- FSL: [FSLのmacOSへのインストール方法](http://www.nemotos.net/?p=243)

	- MRIcroGL: [MRIcroGL および dcm2niix の macOSでのセットアップ方法](http://www.nemotos.net/?p=2946)

- Checking FSL installation

Open terminal and type the following;

```
imglob
```

If you see the message below, FSL is installed properly.

> Usage: imglob [-extension/extensions] <list of names>
>        -extension for one image with full extension
>        -extensions for image list with full extensions

If you see

> imglob: command not found

then, you need to resolve the problem with the following link [FSL で imglob: command not found と出た時の対処方法](http://www.nemotos.net/?p=2964).

### (3) Download textbook and data

#### Lin4Neuro

- Open terminal and type the following;

```
cd ~/git
git clone https://github.com/kytk/shell-basic.git
```

If you want to update, type the following;

```
cd ~/git/shell-basic
git pull
```

#### Mac

- Open terminal and type the following;

```
cd ~/git
```

- If you see an error message like "No such files or directories", make git directory with the following command.

```
mkdir ~/git
cd git
```

- Then re-type the following command:

```
git clone https://github.com/kytk/shell-basic.git
```

When you update, type the following:

```
cd ~/git/shell-basic
git pull
```

	
## Questions
If you have technical difficulties, please use the inquiry form.

[Inquiry form](https://goo.gl/forms/iE5SCx9GWKIwIreK2)

----

Copyright(C) 2017-8 脳画像解析勉強会 All Rights Reserved.

