email = 'test@example.com'
password = 'password'

# users テーブルを再生成（関連付いたテーブルを含む）
ActiveRecord::Base.connection.execute('TRUNCATE TABLE users RESTART IDENTITY CASCADE')

# 以下，開発用の初期データ
user1 = User.create!(email: 'satou@example.com', password: 'password')
user2 = User.create!(email: 'suzuki@example.com', password: 'password')
user3 = User.create!(email: 'tanaka@example.com', password: 'password')

Post.create!(content: 'おはよう', title: '挨拶', user_id: user2.id)
Post.create!(content: 'ペンギン', title: '動物', user_id: user3.id)
Post.create!(content: 'バスケットボール', title: '球技', user_id: user3.id)

# ログイン時に使用するアカウント（変数への代入は不要）
User.create!(email: email, password: password)

puts '初期データの投入に成功しました！'
