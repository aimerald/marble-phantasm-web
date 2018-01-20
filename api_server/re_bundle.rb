path = './result'

# Bundleの結果をFILEへ書き込む
def bundle_go(path)
  begin
    File.delete(path)
  rescue StandardError => e
    puts e
  end
  `bundle > result`
end

# 引数LINEに書いてある内容を分解してインストールされていないGEMを割り出す
def parse_installing(line)
  lines = line.split ' '
  `sudo gem i #{lines[1]} -v #{lines[2]}`
end

# インストールされていないGEMを格納する
# カウンター的意味合い
installing_now = []

# 実際にFILEを一行ずつ読み込む
File.open(path, 'a+') do |f|
  # Do~While文的書き方で処理を行う
  begin
    bundle_go(path)
    installing_now = []
    f.each_line do |line|
      if line.include? 'Installing'
        installing_now << line
        parse_installing(line)
      end
    end
  end while !installing_now.empty? # 条件はInstallngという文言を含んだ行がないこと
end

puts 'おわり(*´∀｀*)'
