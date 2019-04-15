#やったこと
環境構築
windows 10
python 3.7
(anaconda ではない,python.orgからダウンロード)

SISIA　はwindowsでは　pvengine と /EXITとcmdを書き換える

stlファイルの変換は　https://github.com/rsmith-nl/stltools　を使った

関連して、pycairoのインポートをどうするか難しかったが、
https://www.lfd.uci.edu/~gohlke/pythonlibs/#pycairo
からwhlをダウンロードして、 pip install ----.whl
とすればok

フリー素材のmasha&mashaのフィギュア(stl)を使って、変換に挑戦したが土台部分しかうまく変換できてない＞＜

https://www.thingiverse.com/thing:3565211
うまくいった
------メモ---------------
in stltool
python stl2pov.py <filename>.stl

in SDSIA (and copy <filename>.inc to SDSIA)

povファイルの
#include "/home/bayashi/Desktop/Temp/POV/masha_3_cmp_mm_orient.inc"　# ファイルの名前に合わせる
#declare Target = object {
  m_paoh6vdj #incからインポートしているのでここを変える
    ....
object { Target }

そして
python generateDataSet.py -in POV -out POVOut
みたいにすればよい
-------------------------
windowsだとpovray がpopupするのを防げない


SDSIAの設定は色彩のところをどうするか考える必要あり


#やりたいこと
3Dスキャナーの形式がstlとかを使ってると予想（金曜に届く）
＞＞＞来週届く3Dスキャナーマニュアルですー
https://matterandform.net/downloads/MFStudio_User-Manual_JA.pdf

stlからpovへの変換をしたい