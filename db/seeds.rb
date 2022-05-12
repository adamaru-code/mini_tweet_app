# coding: utf-8

# ユーザーに紐づいた投稿を作成します。

Post.create!(content: '今度の案件も頑張るぞ〜', user_id: 1)
Post.create!(content: '今日作業しているカフェ静かでいい感じ', user_id: 2)
Post.create!(content: 'IT業界未経験ですが、プログラミングやってみます！', user_id: 3)
Post.create!(content: 'フリーエンジニア目指し始めました。', user_id: 4)
Post.create!(content: '最近はプログラミング始める人も多い、僕も頑張ろう。', user_id: 5)
Post.create!(content: '今度アルパカ君とゴリラとご飯食べに行くことに。楽しみ！', user_id: 1)

# ユーザーをひとりずつ作成します。

User.create!(name: 'フリーエンジニア君', email: 'engineer@email.com', image: 'user_1.png', password: 'foobar')
User.create!(name: 'フリーデザイナーさん', email: 'designer@email.com', image: 'user_2.png', password: 'foobar')
User.create!(name: 'アルパカさん', email: 'alpaca@email.com', image: 'user_3.png', password: 'foobar')
User.create!(name: 'ゴリラくん', email: 'gorilla@email.com', image: 'user_4.png', password: 'foobar')
User.create!(name: 'セレブエンジニアさん', email: 'celeb@email.com', image: 'user_5.png', password: 'foobar')