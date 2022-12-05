# apex
apex shutdown bug fix 

apex legendの終了が出来ないので、windowsのバッチをつくりました。まだバグがあるかもしれませんが、動きます。

[ファイルを保存](https://github.com/h-h/apex/blob/main/apex_exit.bat)
使い方: ファイルを実行

原因: EACがhostdllを見失うため、hostdllをキルするとapexが停止する。仕様なのかな？
