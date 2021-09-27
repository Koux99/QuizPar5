# アプリ名
QuizPar5 (クイズパーファイブ)

# 概要
 - ゴルフのクイズが出題されるクイズアプリとなっています
   - レベルが1〜３まで用意されており、各5問ずつ出題されます
   - 1つの問題に対し答えが4択で用意されています
   - 4択の中から解答を選んでいただくと、答えと解説が表示される仕様になっています


# 本番環境
  現在リリースに向けて準備中です

# GitHub リポジトリ
  https://github.com/Koux99/QuizPar5


# 制作背景
ここ2,3年でゴルフ人口が一気に増えました。特に自分と同じ若い世代の人たちが増えてきたという印象があります。
ゴルフを始められた方に、ゴルフ自体の楽しさ以外の部分でもさらに楽しんでいただき、もっとゴルフの魅力にハマっていただきたいという思いからこのアプリを開発しました。
たくさんの選手にまつわるお話、面白いコースや記録等クイズ形式で楽しんでいただけたら幸いです。

# DEMO
## ①Launch画面
[![Image from Gyazo](https://i.gyazo.com/a779ddbd08142fa60b4b2bc5fb91834b.gif)](https://gyazo.com/a779ddbd08142fa60b4b2bc5fb91834b)

- Quizのロゴが、アプリ立ち上がり時に表示される
- トップ画面に自動遷移する

## ②トップ画面
[![Image from Gyazo](https://i.gyazo.com/baf8a6c0cdf9368a8a50524e7c138492.gif)](https://gyazo.com/baf8a6c0cdf9368a8a50524e7c138492)

- トップページにてスタートボタンを押すことで、レベル選択画面へ遷移する

## ③レベル選択画面
[![Image from Gyazo](https://i.gyazo.com/fcbb93492b5614251bb7a23426f17ea9.gif)](https://gyazo.com/fcbb93492b5614251bb7a23426f17ea9)

- 3つのレベルのうち1つ選択する
- 選択したレベルに応じた問題出題ページへ遷移する


## ④クイズ出題画面
[![Image from Gyazo](https://i.gyazo.com/45b0f73503b2a4515bf1be373b558542.gif)](https://gyazo.com/45b0f73503b2a4515bf1be373b558542)

- csvファイルを読み取って、ランダムに問題を出題する仕様となっている
- 解答すると正解なら○、不正解ならxが問題文に重なって表示される
- 解答すると解説画面がモーダル遷移で出てくる

## ⑤クイズ解説画面
[![Image from Gyazo](https://i.gyazo.com/985581ec38d4ade4bd055c06a9d83119.gif)](https://gyazo.com/985581ec38d4ade4bd055c06a9d83119)

- モーダル遷移で出題画面に被さるように出てくる
- 問題文・正解・解説を表示する
- ナビゲーションバーの「閉じる」ボタンを押すことで閉じる
- 次の出題画面が表示される

## ⑥スコア画面
[![Image from Gyazo](https://i.gyazo.com/1fc47e88833c5347684fb151214c6507.gif)](https://gyazo.com/1fc47e88833c5347684fb151214c6507)

- 5問解き終わると正解数が表示される
- 「トップに戻る」ボタンでトップ画面に戻る

## ⑦シェア機能
[![Image from Gyazo](https://i.gyazo.com/bede34d8bb6071a0d4087ce792a3face.png)](https://gyazo.com/bede34d8bb6071a0d4087ce792a3face)

- スコア画面にて、「結果をシェアする」ボタンを押すと各種SNSにてアプリでのスコアをシェアすることができる


# 使用技術
## フロントエンド
Swift, Storyboard

## ソース管理
GitHub, GitHubDesktop

## エディタ
XCode
