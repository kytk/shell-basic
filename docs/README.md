# 脳画像解析のためのコマンドライン習得勉強会

2019年02月10日に開催予定である<strong>『脳画像解析のためのコマン
ドライン習得勉強会』</strong>の受講者を対象とした情報提供サイトです。新しい情報
があれば、随時このサイトへ追加していきますので、定期的にアクセスするようにして下さい。

    <h3>● 新着情報 </h3>
<ul>
<li>2018.12.23: Lin4Neuro/Macの環境を構築するための資料を準備しました。</li>
<li>2018.12.01: 勉強会用ウェブサイトを立ち上げました。</li>
</ul>

    <h3>● 会場案内</h3>
    <p><a href="https://www.officetokyo.net/" target="_blank">オフィス東京</a>

    <h3>● チュートリアル当日のお願い</h3>
      <ul>
<p>
      <li>会場は、飲食可能です。しかし、コンピュータを使いますので、コーヒーをキーボードの上にこぼすといった悲劇が起こらないよう、ふたのついた飲み物の持ち込みにご協力ください。昼食は、会場内で召し上がっていただいてかまいません。</li>
      <li>開場時間は <font color="#FF0000">08:30 </font>です。いろいろ不安な方は早めにお越しいただき、講師やチューターとコミュニケーションをとっておくことをお勧めします。</li>
      <li>会場に到着したら、まず受付をお願いします。</li>
      </ul><br />

    <h3>● 勉強会までの予定</h3>
<ul>
<li>2018.12.10: 2ヶ月前までにLin4Neuro/Macの環境を構築できるように資料を準備します。</li>
<li>2019.01.10: 1ヶ月前までに勉強会のテキストやデータを配布します。</li>
</ul>

    <h3>● 勉強会のスケジュール(予定)</h3>
    <blockquote>
      <table width="600" border="0" align="center">
        <tr>
          <td width="120" align="left" valign="top">事前予習</td>
          <td width="470">ファイル処理: pwd, cd, ls, mv, cp, rm, mkdir, rmdir</td>
        </tr>
        <tr>
          <td width="120" align="left" valign="top">08:30</td>
          <td width="470">開場</td>
        </tr>
        <tr>
          <td width="120" align="left" valign="top">09:00-09:05</td>
          <td width="470">開会</td>
        </tr>
        <tr>
          <td align="left" valign="top">09:05-09:50</td>
          <td>UNIX系OSでコマンドラインを使うときのお作法<td>
        </tr>
        <tr>
          <td align="left" valign="top">10:00-10:45</td>
          <td>テキスト処理(1): cat, less, head, tail, wc<td>
        </tr>
        <tr>
          <td align="left" valign="top">10:55-11:40</td>
          <td>テキスト処理(2): grep, sed, awk</td>
        </tr>
        <tr>
          <td align="left" valign="top">11:50-12:35</td>
          <td>テキスト処理(3): paste join cut</td>
        </tr>
        <tr>
          <td align="left" valign="top">12:35-13:15</td>
          <td>-- 昼食 --</td>
        </tr>
        <tr>
          <td align="left" valign="top">13:15-14:00</td>
          <td>画像解析系コマンド: dcm2nii(x), FSLUTILS</td>
        </tr>
        <tr>
          <td align="left" valign="top">14:10-14:55</td>
          <td>シェルスクリプト(1): 繰り返し for, while</td>
        </tr>
        <tr>
          <td align="left" valign="top">15:05-15:50</td>
          <td>シェルスクリプト(2): 条件分岐 if</td>
        </tr>
        <tr>
          <td align="left" valign="top">16:00-17:00</td>
          <td>演習</td>
        </tr>
        <tr>
          <td align="left" valign="top">17:00-17:30</td>
          <td>閉会・質疑応答</td>
        </tr>
      </table>
    </blockquote>

</p>
    <br />
    <h3>● パソコンの持参について</h3>
    <p>FreeSurfer勉強会では、受講者にPCを持参して頂き、実際にデータを操作しながらFreeSurferの使い方について学んでいきます。PCのスペックについては、以下の<strong>推奨条件</strong>を参考にして下さい：</p>
    <h4 style="padding-left:2em">Windowsユーザー</h4>
    <ul style="padding-left:4em">
      <li>Windows 7以降 <strong>64bit版</strong></li>
      <li>メモリ：8GB以上</li>
      <li>ハードディスク：100GB以上の空き容量</li>
      <li>2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）</li>
    </ul>
    <h4 style="padding-left:2em">Macユーザー</h4>
    <ul style="padding-left:4em">
      <li>MacOS 10.11(El Captain)以降</li>
      <li>メモリ：8GB以上</li>
      <li>ハードディスク：100GB以上の空き容量</li>
      <li>2ボタン以上のUSBマウス（必須ではありませんが、持っていると便利です）</li>
    </ul>
    <br />

    <h3>● 事前準備</h3>
    <h4>（０）想定パターン</h4>
    <p>今回、以下のパターンを想定しています。
        <ul>
        <li>Mac, Winを問わず、VirtualBoxおよびLin4Neuroを準備してチュートリアルに参加する場合</li>

勉強会は、Lin4Neuro上でターミナルを動かしていきます。
講師と同じ環境を再現したい場合は、Lin4Neuro上で作業することを推奨します。
このメリットは、研究室に戻った際に、Windowsのワークステーションなどでも
同様の環境を簡単に構築できることです。

        <li>自前のMac解析環境またはLinux解析環境でチュートリアルに参加する場合</li>

FSL, mricron, gitを自前でセットアップ可能なら、自前のMacまたはLinuxで参加いただけます。その場合、事前サポートは限られることをご了承ください。セットアップに自信がない場合は、VirtualBox + Lin4Neuro で参加することをお勧めします。

</ul>

    <h4>（１）Lin4Neuroを使って参加する場合(推奨)</h4>
        <ul>
        <li>Lin4Neuro仮想マシンのダウンロード</li>
以下の文書を参考に、ご自分のパソコンに<strong>Lin4Neuro</strong>環境を作成して下さい。</strong><br>
<ul style="padding-left:4em">
  <li>Macユーザー：<a href="pdf/L4N_on_Mac_Install.pdf" target="_blank">VirtualboxへのLin4Neuroのインストール-Mac編-</a></li>
  <li>Windowsユーザー：<a href="pdf/L4N_on_Win_Install.pdf" target="_blank">VirtualboxへのLin4Neuroのインストール-Windows編-</a></li>
	</ul>

</ul>
<p>

    <h4>（２）自前の解析環境で参加する場合</h4>
    <p>ご自身でMacを操作する方は、下記を参考に、FSL と MRIcronを下記を参考に各自セットアップしてきてください。</p>
        <ul>
<li>FSL</li>
<a href="http://www.nemotos.net/?p=243">FSLのMacOSへのインストール方法</a>

<li>MRIcron</li>
<a href="http://www.nemotos.net/?p=1159">MRIcronのMacOSへのインストール方法</a>

	</ul>

    <h3>● 問い合わせ</h3>
    <p>準備がうまくいかない時のために、問い合わせフォームを準備しています
。こちらからご質問ください。数日以内に担当者から返信させていただきます。<br />
    <a href="https://goo.gl/forms/iE5SCx9GWKIwIreK2" target="_blank">問い合わせ
フォームはこちら</a>


    <br />

    <p align="right"><em>Last Update: 2018.12.23</em></p>

Copyright(C) 2017-8 脳画像解析勉強会 All Rights Reserved.

</body>
</html>