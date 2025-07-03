---
title: ReadMe
author: N_ha
---

## 環境構築

1. 実行環境のインストール

   ICPC 2025 Yokohama 国内予選 の環境

   > - Python 3 (PyPy)
   >   - Python 3.9.18 (PyPy 7.3.15 with GCC 10.2.1 20210130 (Red Hat 10.2.1-11))
   >
   > <https://storage.googleapis.com/files.icpc.jp/domestic2025/judging-notes-ja.pdf> より抜粋

   上記の環境に合わせて <https://downloads.python.org/pypy/> から `PyPy 7.3.15 > Python 3.9` をダウンロードして、インストールする。

   - Windows の場合

     1. 解凍する

        1. `C:\Users\nagano\AppData\Local\Programs\Python` が存在しなければ作成する
           - `AppData` フォルダは隠しフォルダなので、表示されていない場合は表示する必要があります
        2. `pypy3.9-v7.3.15-win64.zip` 内の `pypy3.9-v7.3.15-win64` フォルダを `C:\Users\nagano\AppData\Local\Programs\Python` に移動(解凍)する
           - `C:\Users\nagano\AppData\Local\Programs\Python\pypy3.9-v7.3.15-win64\pypy3.exe` が存在すれば OK

     2. 環境変数の設定
        1. 設定を開き、設定の検索から `環境変数を編集` を選択
        2. `ユーザー環境変数` の `Path` を選択し、`編集` をクリック
        3. `新規` をクリックして、以下のパスを追加
           - `C:\Users\nagano\AppData\Local\Programs\Python\pypy3.9-v7.3.15-win64`
        4. `OK` をクリックして、設定を保存
     3. PowerShell を新しく開き、 `pypy3 -V` を実行して、バージョンが表示されれば OK
     4. pip のインストール
        1. `pypy3 -m ensurepip` を実行
        2. `pypy3 -m pip install --upgrade pip` を実行して、pip を最新に更新

2. 仮想環境の構築

   - Windows の場合

     ```powershell
     pypy3 -m venv .venv
     .venv\Scripts\Activate.ps1
     pypy3 -m pip install -r .\requirements.txt
     ```

## 問題を解く

1. プログラムファイルの作成

   テンプレートを問題 ID にしてコピーします

   ```shell
   . create.sh {問題}
   . create.sh A
   ```

   Windows (PowerShell) の場合

   ```powershell
   .\create.ps1 {問題}
   .\create.ps1 A
   ```

2. 実行

   ```shell
   . run.sh {問題} {入力ファイル(デフォルト: in.txt)} {出力ファイル(デフォルト: out.txt)}
   . run.sh A
   . run.sh A in.txt out.txt
   ```

   Windows (PowerShell) の場合

   ```powershell
   .\run.ps1 {問題} {入力ファイル(デフォルト: in.txt)} {出力ファイル(デフォルト: out.txt)}
   .\run.ps1 A
   .\run.ps1 A in.txt out.txt
   ```
