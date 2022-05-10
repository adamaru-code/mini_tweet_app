# coding: utf-8

# 投稿内容を１行ずつ記述して配列にまとめます。
posts = [
  '今日からRailsの学習を始めます。',
  '毎日Rails学習中！プログラミング楽しい！',
  'だんだん内容が難しくなってきたぞ・・・。',
  'レッスンで作っているアプリが形になってきたな〜、この調子だ！',
  'どこでもプログラミングできるように、ノートパソコン買っちゃおうかな。',
  'バナナ食べて勉強ガンバロウ',
  'CSSでデザインいじるの楽しいな〜',
  'カフェでプログラミングすると捗る〜',
  'この前買ったパソコンいい感じだ。',
  '友達もフリーエンジニアに興味があるみたい！',
  '干し草食べて勉強頑張ろう',
  'ついに私も月収５０万円に・・・！',
  '地道に続ければ、しっかり身につくことがわかった。',
]

# 投稿内容の配列を繰り返し処理して投稿データを作成します。
posts.each { |post| Post.create!(content: post) }

# ユーザーをひとりずつ作成します。
User.create!(name: 'フリーエンジニア君', email: 'engineer@email.com', image: 'user_1.png')
User.create!(name: 'フリーデザイナーさん', email: 'designer@email.com', image: 'user_2.png')
User.create!(name: 'アルパカさん', email: 'alpaca@email.com', image: 'user_3.png')
User.create!(name: 'ゴリラくん', email: 'gorilla@email.com', image: 'user_4.png')
User.create!(name: 'セレブエンジニアさん', email: 'celeb@email.com', image: 'user_5.png')