export LANG=eu
gennsh > locale\basque.nsh
iconv -f UTF-8 -t ISO-8859-1 locale/basque.nsh > locale/eu.nsh
rm locale/basque.nsh
export LANG=fi
gennsh > locale/finnish.nsh
iconv -f UTF-8 -t ISO-8859-1 locale/finnish.nsh > locale/fi.nsh
rm locale/finnish.nsh
export LANG=gl
gennsh > locale/galego.nsh
iconv -f UTF-8 -t ISO-8859-1 locale/galego.nsh > locale/gl.nsh
rm locale/galego.nsh
export LANG=ko
gennsh > locale/korean.nsh
iconv -f UTF-8 -t ISO-2022-KR locale/korean.nsh > locale/ko.nsh
export LANG=zh_CN
gennsh > locale/chinese.nsh
iconv -f UTF-8 -t GB2312 locale/chinese.nsh > locale/zh.nsh