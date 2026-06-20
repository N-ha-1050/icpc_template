---
title: ReadMe
author: N_ha
---

## 環境構築

1. 実行環境のインストール

   ICPC 2026 Yokohama 国内予選 の環境

   > - Python 3 (PyPy)
   >   - Python 3.11.11 (PyPy 7.3.18)
   >
   > <https://storage.googleapis.com/files.icpc.jp/domestic2026/judging-notes-ja.pdf> より抜粋

   上記の環境に合わせて <https://downloads.python.org/pypy/> から `PyPy 7.3.18 > Python 3.11.11` をダウンロードして、インストールする。

   1. 解凍する
      1. `C:\Users\%USERNAME%\AppData\Local\Programs\Python` が存在しなければ作成する
         - `AppData` フォルダは隠しフォルダなので、表示されていない場合は表示する必要があります
      2. `pypy3.11-v7.3.18-win64.zip` 内の `pypy3.11-v7.3.18-win64` フォルダを `C:\Users\%USERNAME%\AppData\Local\Programs\Python` にコピー(解凍)する
         - `C:\Users\%USERNAME%\AppData\Local\Programs\Python\pypy3.11-v7.3.18-win64\pypy3.exe` が存在すれば OK

      ※ 解凍先フォルダはここでなくても大丈夫です。次の環境変数の設定で、解凍先のパスを指定してください。

   2. 環境変数の設定
      1. 設定を開き、設定の検索から `環境変数を編集` を選択
      2. `ユーザー環境変数` の `Path` を選択し、`編集` をクリック
      3. `新規` をクリックして、以下のパスを追加
         - `C:\Users\%USERNAME%\AppData\Local\Programs\Python\pypy3.11-v7.3.18-win64`
      4. 昨年のICPC時のPyPyなど、他のバージョンのPyPyのパスがある場合は、それらを削除するか、今回追加したパスより下に移動させる
      5. `OK` をクリックして、設定を保存
   3. PowerShell を新しく開き、 `pypy3 -V` を実行して、バージョン( `Python 3.11.11` )が表示されれば OK
      - VSCode のターミナルの場合は VSCode の再起動も行ってから実行する

2. 仮想環境の構築

   ```powershell
   pypy3 -m venv .venv
   .venv\Scripts\Activate.ps1
   pypy3 -m pip install --upgrade pip
   pypy3 -m pip install black isort git+https://github.com/not522/ac-library-python
   ```

## 問題を解く

1. プログラムファイルの作成

   テンプレートを問題 ID にしてコピーします

   ```powershell
   .\create.ps1 {問題}
   .\create.ps1 A
   ```

2. 実行

   ```powershell
   .\run.ps1 {問題} {入力ファイル(デフォルト: in.txt)} {出力ファイル(デフォルト: out.txt)}
   .\run.ps1 A
   .\run.ps1 A in.txt out.txt
   ```
