# apex
apex shutdown bug fix 

apex legendの終了が出来ないので、windowsのバッチをつくりました。まだバグがあるかもしれませんが、動きます。

github.com/h-h/apex/blob/…
使い方: ファイルを実行

原因: EACがhostdllを見失うため、hostdllをキルするとapexが停止する。仕様なのかな？
