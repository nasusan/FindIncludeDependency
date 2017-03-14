#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#InstallKeybdHook
#UseHook

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;
;従来のアサインと左右の手の分担を変えない
;右手→カーソルキー
;左手→CtrlやShiftなどの移動補助に専念
;
;富士通の親指シフトキーボード用の配置
;Fnキーの代わりに無変換キーを使う 
;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;富士通のキーボードはTabの位置が半角全角になっているのでTabに変更
sc029::Tab

;;;;;;;;無変換;;;;;;;;;

;＋右手はFPSの十字キー
;小指にエンター、力の入る薬指にBS
sc07B & j::Send,{Blind}{Left}		;	無変換＋j=←
sc07B & l::Send,{Blind}{Right}		;	無変換＋l=→
sc07B & i::Send,{Blind}{Up}			;	無変換＋i=↑
sc07B & k::Send,{Blind}{Down}		;	無変換＋k=↓
sc07B & `;::Send,{Blind}{Enter}		;	無変換＋;=Enter
sc07B & o::Send,{Blind}{BS}			;	無変換＋o=BackSpace
sc07B & p::Send,{Blind}{Delete}		;	無変換＋p=Delete
sc07B & u::Send,{Blind}{F12}		;	無変換＋u=F12

;無変換キーはCtrlに紐付けるイメージ
sc07B & z::Send,^{z}				;	無変換＋z=Ctrl+z
sc07B & a::Send,^{a}				;	無変換＋a=Ctrl+a
sc07B & s::Send,^{s}				;	無変換＋s=Ctrl+s
sc07B & n::Send,^{n}				;	無変換＋n=Ctrl+n
sc07B & t::Send,^{t}				;	無変換＋t=Ctrl+t
sc07B & c::Send, ^{F4}				;	無変換＋c=Ctrl+F4

;Fnキーの代わりに無変換キーを使う 
sc07B & 1::Send,{Blind}{F1}
sc07B & 2::Send,{Blind}{F2}
sc07B & 3::Send,{Blind}{F3}
sc07B & 4::Send,{Blind}{F4}
sc07B & 5::Send,{Blind}{F5}
sc07B & 6::Send,{Blind}{F6}
sc07B & 7::Send,{Blind}{F7}
sc07B & 8::Send,{Blind}{F8}
sc07B & 9::Send,{Blind}{F9}
sc07B & 0::Send,{Blind}{F10}
sc07B & -::Send,{Blind}{F11}
sc07B & ^::Send,{Blind}{F12}

;;;;;;;;変換;;;;;;;;

;＋右手にHomeなどのキー。並びはキー配列のままで覚えやすく。
sc079 & o::Send,{Blind}{PgUp}		;	変換＋o=PageUp
sc079 & l::Send,{Blind}{PgDn}		;	変換＋l=PageDown
sc079 & i::Send,{Blind}{Home}		;	変換＋i=Home
sc079 & k::Send,{Blind}{End}		;	変換＋k=End

;変換キーはAltにひもづけるイメージ
sc079 & c::Send, !{F4}				;	変換＋c=Alt+F4
sc079 & a::Send,{AppsKey}			;	AppsKey(右クリックのメニュー)
sc079 & z::Send,{Esc}				;	Escape
sc07B & sc079::Send,{sc029}			;	無変換＋変換=IME切り替え


sc079 Up::Send {Space}
sc07B Up::Send {Space}
