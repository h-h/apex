# apex
apex shutdown bug fix 

apex legendの終了が出来ないので、windowsのバッチをつくりました。まだバグがあるかもしれませんが、動きます。

2022/12/06 18:05 ファイルを更新 new
DLLHOSTをキルした後、５秒のスリープを入れました。
(あまりに早いとr5apex.exeが残ってしまうため)
(timeout /nobreak /t 5 > nulを入れました。)


[ファイルを保存](https://github.com/h-h/apex/blob/main/apex_exit.bat)
使い方: ファイルを実行

原因: EACがhostdllを見失うため、hostdllをキルするとapexが停止する。仕様なのかな？
