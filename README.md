
# ���̂���Ruby ��6��

## ����

- https://chocolatey.org/install

����Q�l��Chocolatey���C���X�g�[������BWindows�̃\�t�g�E�F�A���p�b�P�[�W�Ǘ����邽�߂̃c�[���BWindows�{�̂ɂ�����gem�Ǝv���΂悢�B

- msys2: C����ŏ����ꂽ�g�����C�u�������d�l����ۂɎg���Bsqlite�ȂǁB

```
choco install ruby
choco install msys2
```

ruby��msys2���C���X�g�[������B

## IDE

���ł��ǂ����S����Ή��A���J�X�^�}�C�Y���A�����̖��\IDE�ł���Visual Studio Code���g�p����̂����E�W���ƂȂ����B

VSCode���N������extension�ꗗ����Ruby, Code Runner���C���X�g�[������B

Ctrl + ` : VSCode������R���\�[���N������V���[�g�J�b�g�Birb��ruby�R�}���h�͂���������łĂ�B

## gem

Ruby�ɂ�����p�b�P�[�W�Ǘ��c�[���B�ڍׂ͒ǂ��ǂ��G���B

## 0��

- �I�u�W�F�N�g�w������
- �葱���^����

- �X�N���v�g����
- �R���p�C���^����

## 1��

```
irb(main):001:0> print('hoge')
hoge=> nil
```

�u=> nil�v�͖߂�l��nil(null)�ł���Ƃ������ƁBprint���\�b�h�͕������o�͂��邪�A���\�b�h�Ƃ��Ă͉����Ԃ��Ȃ��B

- �V���O���N�H�[�g�F���ꕶ���i���s�������j�����̂܂ܕ\��
- �_�u���N�H�[�g�F���ꕶ�������߂��ĕ\��

```
irb(main):004:0> print "hoge\n", "piyo\n", "fuga\n"
hoge
piyo
fuga
=> nil
```

Ruby�ł̓��\�b�h�̊��ʂ��ȗ��ł���B�܂��A�������J���}�ŘA���ł���B

```
irb(main):005:0> p 100
100
=> 100
irb(main):006:0> p "100"
"100"
=> "100"
```

p���\�b�h�F���l�ƕ��������ʂ��ĕ\������B�f�o�b�O�p�̃��\�b�h�B

```
// chap01.rb

hoge = 10
print "�ق��F#{hoge}\n"
```

`#{variable}`�ŕϐ����_�u���N�H�[�g�̒��ɖ��ߍ��߂�B

Code Runner���C���X�g�[�����Ă����ƁArb�t�@�C�����ȒP�Ɏ��s�ł���BCtrl + Shift + P -> Run Code�Ŏ��s�B����͂��̕��@�ō쐬�����R�[�h�����s���Ă����B

```
a = 10
if a >= 20 then
    puts "greater"
else
    print "smaller"
end
```

if���Bthen�͏ȗ��\�B

```
10.times do
    print "hoge"
end
```

times���\�b�h�B�C�e���[�^��Ruby�̓����I�ȕ��@�ł���B�������Ƃ̕��ł����Ɛ��������B

## ��2��

### �V���{��

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

each���\�b�h��times���\�b�h�Ɠ����C�e���[�^�B`|n|`�͔z��̒��������v�f��ϐ��Ƃ��Ď��o���Ă���BRuby�Ɠ��̏������B

### �n�b�V��

```
sym = :foo
p sym.to_s
p "foo".to_sym
```

�V���{���B���O�����ʂ��邽�߂̃��x���BRuby�ł̓n�b�V���̃L�[�ɃV���{�����g���B

```
hoge = {:name => "�ق�", :age => 30}
fuga = {name: "�ӂ�", age: 29}

p hoge
p fuga
p hoge[:name]
p fuga[:name]
```

�㉺�͓����Ӗ��B���̋L�@�ł��n�b�V���̃L�[�̓V���{���ɂȂ��Ă���A���o���ۂ̓V���{�����w�肷��K�v������B

```
hoge.each do |key, value|
    puts "#{key}: #{value}"
end
```

�n�b�V����each�ŉ񂷍ۂ�key, value�̓�̕ϐ������o���B

### ���K�\��

```
irb(main):003:0> /hoge/ =~ "hhhhhhhhogeeeee"
=> 7

irb(main):004:0> /hoge/ =~ "fuga"
=> nil
```

�}�b�`�����擪�ʒu��0�ԃX�^�[�g�ŕԂ��B�}�b�`���O���Ȃ��ꍇ��nil��Ԃ��B

���K�\���͂��Ȃ����̂����A�Ȃ�����ȏ��Ղɏo���Ă���̂���B�ǂ��ǂ����Ǝv���B

## ��O��

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

�t�@�C�����s���̈�����`ARGC[n]`�̌`���Ŏ��o�����Ƃ��ł���B













