---
title: ReadMe
author: N_ha
---

## 環境構築

1. Python の仮想環境を構築

   ```shell
   cd icpc_template
   python3 -m venv .venv
   . .venv/bin/activate
   python -V
   ```

   Windows で Python ランチャーの場合(Powershellを使用)

   ```shell
   cd icpc_template
   py -3 -m venv .venv
   .\.venv\Scripts\Activate.ps1
   python -V
   ```

2. Python のライブラリをインストール

    基本は AtCoder に入っているもの
    (cppyy はインストールせず、torch はバージョン指定せずにインストール)

   ```shell
   python -m pip install --upgrade pip
   python -m pip install -r requirements.txt
   ```

3. C++ のAtCoder Library のインストール

   [このページ](https://atcoder.jp/posts/517)からZipファイルをダウンロードして、 `icpc_template/ac-library/` 以下に解凍
