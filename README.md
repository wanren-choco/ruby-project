
# たのしいRuby 第6版

## 導入

- https://chocolatey.org/install

上を参考にChocolateyをインストールする。Windowsのソフトウェアをパッケージ管理するためのツール。Windows本体におけるgemと思えばよい。

- msys2: C言語で書かれた拡張ライブラリを仕様する際に使う。sqliteなど。

```
choco install ruby
choco install msys2
```

rubyとmsys2をインストールする。

## IDE

何でも良いが全言語対応、高カスタマイズ性、無償の万能IDEであるVisual Studio Codeを使用するのが世界標準となりつつある。

VSCodeを起動してextension一覧からRuby, Code Runnerをインストールする。

Ctrl + ` : VSCode内からコンソール起動するショートカット。irbやrubyコマンドはここからも打てる。

## gem

Rubyにおけるパッケージ管理ツール。詳細は追い追い触れる。

## 0章

- オブジェクト指向言語
- 手続き型言語

- スクリプト言語
- コンパイラ型言語

## 1章

```
irb(main):001:0> print('hoge')
hoge=> nil
```

「=> nil」は戻り値がnil(null)であるということ。printメソッドは文字を出力するが、メソッドとしては何も返さない。

- シングルクォート：特殊文字（改行文字等）をそのまま表示
- ダブルクォート：特殊文字を解釈して表示

```
irb(main):004:0> print "hoge\n", "piyo\n", "fuga\n"
hoge
piyo
fuga
=> nil
```

Rubyではメソッドの括弧を省略できる。また、引数をカンマで連結できる。

```
irb(main):005:0> p 100
100
=> 100
irb(main):006:0> p "100"
"100"
=> "100"
```

pメソッド：数値と文字列を区別して表示する。デバッグ用のメソッド。

```
// chap01.rb

hoge = 10
print "ほげ：#{hoge}\n"
```

`#{variable}`で変数をダブルクォートの中に埋め込める。

Code Runnerをインストールしておくと、rbファイルを簡単に実行できる。Ctrl + Shift + P -> Run Codeで実行。今後はこの方法で作成したコードを実行していく。

```
a = 10
if a >= 20 then
    puts "greater"
else
    print "smaller"
end
```

if文。thenは省略可能。

```
10.times do
    print "hoge"
end
```

timesメソッド。イテレータはRubyの特徴的な文法である。多分あとの方でちゃんと説明される。

## 第2章

### 配列

```
hoge = ["aaa", "bbb", "ccc"]
print hoge[1]
```

```
hoge = ["aaa", "bbb", "ccc"]

hoge.each do |n|
    puts n
end
```

eachメソッドはtimesメソッドと同じイテレータ。`|n|`は配列の中から一つずつ要素を変数として取り出している。Ruby独特の書き方。

### ハッシュ

```
sym = :foo
p sym.to_s
p "foo".to_sym
```

シンボル。名前を識別するためのラベル。Rubyではハッシュのキーにシンボルを使う。

```
hoge = {:name => "ほげ", :age => 30}
fuga = {name: "ふが", age: 29}

p hoge
p fuga
p hoge[:name]
p fuga[:name]
```

上下は同じ意味。下の記法でもハッシュのキーはシンボルになっており、取り出す際はシンボルを指定する必要がある。

```
hoge.each do |key, value|
    puts "#{key}: #{value}"
end
```

ハッシュをeachで回す際はkey, valueの二つの変数を取り出す。

### 正規表現

```
irb(main):003:0> /hoge/ =~ "hhhhhhhhogeeeee"
=> 7

irb(main):004:0> /hoge/ =~ "fuga"
=> nil
```

マッチした先頭位置を0番スタートで返す。マッチングしない場合はnilを返す。

正規表現はかなり難しいのだが、なぜこんな序盤に出してくるのか謎。追い追いやると思う。

## 第三章

```
num1 = ARGV[0]
num2 = ARGV[1]

puts "first: #{num1}"
puts num1.to_i + num2.to_i
```

```
(base) PS C:\Users\boundman\src\ruby> ruby .\chap03.rb 10 20
first: 10
30
```

ファイル実行時の引数を`ARGC[n]`の形式で取り出すことができる。

ほげほげ













