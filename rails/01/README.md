# 独習 Ruby on Rails

## 第一章

### 用語

- フレームワーク：作者の「枠組み」「仕組み」に従って開発することで開発を効率化できる
- DRY: Don't Repeat Yourself
- CoC: Convention Over Configuration
- 「設定より規約」：よく使う処理はあらかじめ実装済み。開発者が余計な実装を行う必要がない

- リソースフルルーティング
- オブジェクト指向
- MVC

### 環境構築(WSL2)

- Vagrant: Windowsの中にLinuxの仮想環境(VM)を入れて、その中にRuby等の実行環境の揃ったサーバを構築する

本書で使用されているVagrantは重要な技術ではあるが、若干時代遅れになりつつあるので本勉強会ではWSL2を使用する。

「プログラムと機能」 → 「Hyper-V」「Windows Subsystem for Linux」にチェック。たぶん再起動が必要。

Windowsストアから「Ubuntu」（数字の書いていないもの）をインストール。

- https://github.com/mintty/wsltty/releases

WSLの標準コンソールは見辛いのでwslttyがおすすめ。

```
sudo apt install git g++ make vim libreadline-dev -y
sudo apt install libssl-dev zlib1g-dev nodejs -y
```

必要なパッケージ群を入れる。`choco install`とやっていることは同じ。

```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="~/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
. ~/.bashrc
```

rbenvを入れる。

```
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

ruby-buildを入れる。

```
$ rbenv install -l
2.5.8
2.6.6
2.7.1
jruby-9.2.11.1
maglev-1.0.0
mruby-2.1.1
rbx-5.0
truffleruby-20.1.0
```

インストール可能なRuby一覧。2.7.1を入れる。

```
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash
sudo apt install ruby-railties -y
```
