# URLにアクセスするためのライブラリの読み込み
require 'open-uri'
# Nokogiriライブラリの読み込み
require 'nokogiri'

def engagement_count(target)
  url = "http://api.b.st-hatena.com/entry.count?url=http://#{target}"
  charset = nil
  html = open(url) do |f|
    charset = f.charset # 文字種別を取得
    f.read # htmlを読み込んで変数htmlに渡す
  end

  count = html.to_i
  count
end


p engagement_count('www.hatena.ne.jp/')

