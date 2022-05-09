# coding: utf-8

# 投稿内容を1行ずつ記述して配列にまとめます。
posts = [
  '今日からRailsの学習を始めます。',
  '毎日Rails学習中！プログラミング楽しい！',
  'だんだん内容が難しくなってきたぞ。',
  'レッスンで作っているアプリが形になってきたな〜、この調子だ！',
  'どこでもプログラミングできるように、ノートパソコン買っちゃおうかな。',
]

# 投稿内容の配列を繰り返し処理して投稿データを作成します。
posts.each { |post| Post.create!(content: post) }

# ユーザーをひとりずつ作成します。
User.create!(name: 'フリーエンジニア君', email: 'engineer@email.com')
User.create!(name: 'フリーデザイナー君', email: 'designer@email.com')
User.create!(name: 'アルパカさん', email: 'alpaca@email.com')
User.create!(name: 'ゴリラくん', email: 'gorilla@email.com')
User.create!(name: 'セレブエンジニアさん', email: 'celeb@email.com')