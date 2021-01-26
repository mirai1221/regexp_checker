print 'テキストを入力してください:'
text = gets.chomp
begin
  print '正規表現のパターンを入力してください:'
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "無効なパターンです: #{e.message}"
  retry
end

# 入力された文字列と正規表現でマッチしたものを返す
matches = text.scan(regexp)
if matches.size > 0
  puts "一致しているのは: #{matches.join(',')}"
else
  puts "一致しているのはありません。"
end
