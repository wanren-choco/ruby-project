# �ƏK Ruby on Rails

## ����

### �p��

- �t���[�����[�N�F��҂́u�g�g�݁v�u�d�g�݁v�ɏ]���ĊJ�����邱�ƂŊJ�����������ł���
- DRY: Don't Repeat Yourself
- CoC: Convention Over Configuration
- �u�ݒ���K��v�F�悭�g�������͂��炩���ߎ����ς݁B�J���҂��]�v�Ȏ������s���K�v���Ȃ�

- ���\�[�X�t�����[�e�B���O
- �I�u�W�F�N�g�w��
- MVC

### ���\�z(WSL2)

- Vagrant: Windows�̒���Linux�̉��z��(VM)�����āA���̒���Ruby���̎��s���̑������T�[�o���\�z����

�{���Ŏg�p����Ă���Vagrant�͏d�v�ȋZ�p�ł͂��邪�A�኱����x��ɂȂ����̂Ŗ{�׋���ł�WSL2���g�p����B

�u�v���O�����Ƌ@�\�v �� �uHyper-V�v�uWindows Subsystem for Linux�v�Ƀ`�F�b�N�B���Ԃ�ċN�����K�v�B

Windows�X�g�A����uUbuntu�v�i�����̏����Ă��Ȃ����́j���C���X�g�[���B

- https://github.com/mintty/wsltty/releases

WSL�̕W���R���\�[���͌��h���̂�wsltty���������߁B

```
sudo apt install git g++ make vim libreadline-dev -y
sudo apt install libssl-dev zlib1g-dev nodejs -y
```

�K�v�ȃp�b�P�[�W�Q������B`choco install`�Ƃ���Ă��邱�Ƃ͓����B

```
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="~/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
. ~/.bashrc
```

rbenv������B

```
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
```

ruby-build������B

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

�C���X�g�[���\��Ruby�ꗗ�B2.7.1������B

```
rbenv install 2.7.1
rbenv global 2.7.1
rbenv rehash
sudo apt install ruby-railties -y
```
