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

   ```powershell
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

## 問題を解く

1. プログラムファイルの作成

   テンプレートを問題IDにしてコピーします

   ```shell
   . create.sh {言語} {問題}
   . create.sh py A
   . create.sh cpp B
   ```

   Windows (PowerShell) の場合

   ```powershell
   .\create.ps1 {言語} {問題}
   .\create.ps1 py A
   .\create.ps1 cpp B
   ```

2. 実行

   1. Python

      ```shell
      . py.sh {問題} {問題ケース(デフォルト: _.txt)}
      . py.sh A
      . py.sh A A1

      ```

      Windows (PowerShell) の場合

      ```powershell
      .\py.ps1 {問題} {問題ケース(デフォルト: _.txt)}
      .\py.ps1 A
      .\py.ps1 A A1
      ```

   2. C++

      ```shell
      . cpp.sh {問題} {問題ケース(デフォルト: _.txt)}
      . cpp.sh A
      . cpp.sh A A1

      ```

      Windows (PowerShell) の場合

      ```powershell
      .\cpp.ps1 {問題} {問題ケース(デフォルト: _.txt)}
      .\cpp.ps1 A
      .\cpp.ps1 A A1
      ```
