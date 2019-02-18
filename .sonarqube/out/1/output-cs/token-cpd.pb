•I
eD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Migrations\201902030903567_Initial.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #

Migrations# -
{ 
public 

partial 
class 
Initial  
:! "
DbMigration# .
{		 
public

 
override

 
void

 
Up

 
(

  
)

  !
{ 	
CreateTable 
( 
$str $
,$ %
c 
=> 
new 
{ 
Id 
= 
c 
. 
String %
(% &
nullable& .
:. /
false0 5
,5 6
	maxLength7 @
:@ A
$numB E
)E F
,F G
AuthorNickname &
=' (
c) *
.* +
String+ 1
(1 2
	maxLength2 ;
:; <
$num= @
)@ A
,A B
Content 
=  !
c" #
.# $
String$ *
(* +
nullable+ 3
:3 4
false5 :
,: ;
	maxLength< E
:E F
$numG K
)K L
,L M
IsActive  
=! "
c# $
.$ %
Boolean% ,
(, -
nullable- 5
:5 6
false7 <
)< =
,= >
	ProductId !
=" #
c$ %
.% &
String& ,
(, -
nullable- 5
:5 6
false7 <
,< =
	maxLength> G
:G H
$numI L
)L M
,M N
HelpfullVotesCount *
=+ ,
c- .
.. /
Int/ 2
(2 3
nullable3 ;
:; <
false= B
,B C
annotations '
:' (
new) ,

Dictionary- 7
<7 8
string8 >
,> ?
AnnotationValues@ P
>P Q
{ 
{  !
$str$ 2
,2 3
new$ '
AnnotationValues( 8
(8 9
oldValue9 A
:A B
nullC G
,G H
newValueI Q
:Q R
$strS V
)V W
}  !
,! "
} 
) 
, 
UselessVotesCount )
=* +
c, -
.- .
Int. 1
(1 2
nullable2 :
:: ;
false< A
,A B
annotations '
:' (
new) ,

Dictionary- 7
<7 8
string8 >
,> ?
AnnotationValues@ P
>P Q
{ 
{    !
$str!!$ 2
,!!2 3
new""$ '
AnnotationValues""( 8
(""8 9
oldValue""9 A
:""A B
null""C G
,""G H
newValue""I Q
:""Q R
$str""S V
)""V W
}##  !
,##! "
}$$ 
)$$ 
,$$ 
TotalVotesCount%% '
=%%( )
c%%* +
.%%+ ,
Int%%, /
(%%/ 0
nullable%%0 8
:%%8 9
false%%: ?
,%%? @
annotations&& '
:&&' (
new&&) ,

Dictionary&&- 7
<&&7 8
string&&8 >
,&&> ?
AnnotationValues&&@ P
>&&P Q
{'' 
{((  !
$str))$ 2
,))2 3
new**$ '
AnnotationValues**( 8
(**8 9
oldValue**9 A
:**A B
null**C G
,**G H
newValue**I Q
:**Q R
$str**S V
)**V W
}++  !
,++! "
},, 
),, 
,,, 
CreatedDate-- #
=--$ %
c--& '
.--' (
DateTime--( 0
(--0 1
nullable--1 9
:--9 :
false--; @
)--@ A
,--A B
ModifiedDate.. $
=..% &
c..' (
...( )
DateTime..) 1
(..1 2
)..2 3
,..3 4
	CreatedBy// !
=//" #
c//$ %
.//% &
String//& ,
(//, -
	maxLength//- 6
://6 7
$num//8 :
)//: ;
,//; <

ModifiedBy00 "
=00# $
c00% &
.00& '
String00' -
(00- .
	maxLength00. 7
:007 8
$num009 ;
)00; <
,00< =
}11 
)11 
.22 

PrimaryKey22 
(22 
t22 
=>22  
t22! "
.22" #
Id22# %
)22% &
;22& '
CreateTable44 
(44 
$str55 (
,55( )
c66 
=>66 
new66 
{77 
Id88 
=88 
c88 
.88 
String88 %
(88% &
nullable88& .
:88. /
false880 5
,885 6
	maxLength887 @
:88@ A
$num88B E
)88E F
,88F G
AuthorId99  
=99! "
c99# $
.99$ %
String99% +
(99+ ,
nullable99, 4
:994 5
false996 ;
,99; <
	maxLength99= F
:99F G
$num99H L
)99L M
,99M N

ReviewRate:: "
=::# $
c::% &
.::& '
Int::' *
(::* +
nullable::+ 3
:::3 4
false::5 :
)::: ;
,::; <
CustomerReviewId;; (
=;;) *
c;;+ ,
.;;, -
String;;- 3
(;;3 4
nullable;;4 <
:;;< =
false;;> C
,;;C D
	maxLength;;E N
:;;N O
$num;;P S
);;S T
,;;T U
CreatedDate<< #
=<<$ %
c<<& '
.<<' (
DateTime<<( 0
(<<0 1
nullable<<1 9
:<<9 :
false<<; @
)<<@ A
,<<A B
ModifiedDate== $
===% &
c==' (
.==( )
DateTime==) 1
(==1 2
)==2 3
,==3 4
	CreatedBy>> !
=>>" #
c>>$ %
.>>% &
String>>& ,
(>>, -
	maxLength>>- 6
:>>6 7
$num>>8 :
)>>: ;
,>>; <

ModifiedBy?? "
=??# $
c??% &
.??& '
String??' -
(??- .
	maxLength??. 7
:??7 8
$num??9 ;
)??; <
,??< =
}@@ 
)@@ 
.AA 

PrimaryKeyAA 
(AA 
tAA 
=>AA  
tAA! "
.AA" #
IdAA# %
)AA% &
.BB 

ForeignKeyBB 
(BB 
$strBB 0
,BB0 1
tBB2 3
=>BB4 6
tBB7 8
.BB8 9
CustomerReviewIdBB9 I
,BBI J
cascadeDeleteBBK X
:BBX Y
trueBBZ ^
)BB^ _
.CC 
IndexCC 
(CC 
tCC 
=>CC 
newCC 
{CC  !
tCC" #
.CC# $
AuthorIdCC$ ,
,CC, -
tCC. /
.CC/ 0
CustomerReviewIdCC0 @
}CCA B
,CCB C
uniqueCCD J
:CCJ K
trueCCL P
,CCP Q
nameCCR V
:CCV W
$strCCX u
)CCu v
;CCv w
}EE 	
publicGG 
overrideGG 
voidGG 
DownGG !
(GG! "
)GG" #
{HH 	
DropForeignKeyII 
(II 
$strII 3
,II3 4
$strII5 G
,IIG H
$strIII ]
)II] ^
;II^ _
	DropIndexJJ 
(JJ 
$strJJ .
,JJ. /
$strJJ0 M
)JJM N
;JJN O
	DropTableKK 
(KK 
$strKK .
)KK. /
;KK/ 0
	DropTableLL 
(LL 
$strLL *
,LL* +$
removedColumnAnnotationsMM (
:MM( )
newMM* -

DictionaryMM. 8
<MM8 9
stringMM9 ?
,MM? @
IDictionaryMMA L
<MML M
stringMMM S
,MMS T
objectMMU [
>MM[ \
>MM\ ]
{NN 
{OO 
$strPP ,
,PP, -
newQQ 

DictionaryQQ &
<QQ& '
stringQQ' -
,QQ- .
objectQQ/ 5
>QQ5 6
{RR 
{SS 
$strSS ,
,SS, -
$strSS. 1
}SS2 3
,SS3 4
}TT 
}UU 
,UU 
{VV 
$strWW )
,WW) *
newXX 

DictionaryXX &
<XX& '
stringXX' -
,XX- .
objectXX/ 5
>XX5 6
{YY 
{ZZ 
$strZZ ,
,ZZ, -
$strZZ. 1
}ZZ2 3
,ZZ3 4
}[[ 
}\\ 
,\\ 
{]] 
$str^^ +
,^^+ ,
new__ 

Dictionary__ &
<__& '
string__' -
,__- .
object__/ 5
>__5 6
{`` 
{aa 
$straa ,
,aa, -
$straa. 1
}aa2 3
,aa3 4
}bb 
}cc 
,cc 
}dd 
)dd 
;dd 
}ee 	
}ff 
}gg ç.
[D:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Migrations\Configuration.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #

Migrations# -
{ 
public		 

sealed		 
class		 
Configuration		 %
:		& '%
DbMigrationsConfiguration		( A
<		A B
CustomerReviewVotes		B U
.		U V
Data		V Z
.		Z [
Repositories		[ g
.		g h%
CustomerReviewRepository			h Ä
>
		Ä Å
{

 
public 
Configuration 
( 
) 
{ 	&
AutomaticMigrationsEnabled &
=' (
false) .
;. /
MigrationsDirectory 
=  !
$str" /
;/ 0
} 	
	protected 
override 
void 
Seed  $
($ %
CustomerReviewVotes% 8
.8 9
Data9 =
.= >
Repositories> J
.J K$
CustomerReviewRepositoryK c
contextd k
)k l
{ 	
var 
now 
= 
DateTime 
. 
UtcNow %
;% &
context 
. 
AddOrUpdate 
(  
new  # 
CustomerReviewEntity$ 8
{9 :
Id; =
=> ?
$str@ C
,C D
	ProductIdE N
=O P
$strQ s
,s t
CreatedDate	u Ä
=
Å Ç
now
É Ü
,
Ü á
	CreatedBy
à ë
=
í ì
$str
î ß
,
ß ®
AuthorNickname
© ∑
=
∏ π
$str
∫ …
,
…  
Content
À “
=
” ‘
$str
’ ›
}
ﬁ ﬂ
)
ﬂ ‡
;
‡ ·
context 
. 
AddOrUpdate 
(  
new  # 
CustomerReviewEntity$ 8
{9 :
Id; =
=> ?
$str@ C
,C D
	ProductIdE N
=O P
$strQ s
,s t
CreatedDate	u Ä
=
Å Ç
now
É Ü
,
Ü á
	CreatedBy
à ë
=
í ì
$str
î ß
,
ß ®
AuthorNickname
© ∑
=
∏ π
$str
∫ «
,
« »
Content
… –
=
— “
$str
” ⁄
}
€ ‹
)
‹ ›
;
› ﬁ
context 
. 
AddOrUpdate 
(  
new  # 
CustomerReviewEntity$ 8
{9 :
Id; =
=> ?
$str@ C
,C D
	ProductIdE N
=O P
$strQ s
,s t
CreatedDate	u Ä
=
Å Ç
now
É Ü
,
Ü á
	CreatedBy
à ë
=
í ì
$str
î ß
,
ß ®
AuthorNickname
© ∑
=
∏ π
$str
∫ ƒ
,
ƒ ≈
Content
∆ Õ
=
Œ œ
$str
– ‹
}
› ﬁ
)
ﬁ ﬂ
;
ﬂ ‡
context 
. 
AddOrUpdate 
(  
new  #$
CustomerReviewVoteEntity$ <
{= >
Id? A
=B C
$strD G
,G H
AuthorIdI Q
=R S
$strT W
,W X
CustomerReviewIdY i
=j k
$strl o
,o p

ReviewRateq {
=| }
VoteRate	~ Ü
.
Ü á
Helpfull
á è
,
è ê
CreatedDate
ë ú
=
ù û
now
ü ¢
,
¢ £
	CreatedBy
§ ≠
=
Æ Ø
$str
∞ √
}
ƒ ≈
)
≈ ∆
;
∆ «
context 
. 
AddOrUpdate 
(  
new  #$
CustomerReviewVoteEntity$ <
{= >
Id? A
=B C
$strD G
,G H
AuthorIdI Q
=R S
$strT W
,W X
CustomerReviewIdY i
=j k
$strl o
,o p

ReviewRateq {
=| }
VoteRate	~ Ü
.
Ü á
Useless
á é
,
é è
CreatedDate
ê õ
=
ú ù
now
û °
,
° ¢
	CreatedBy
£ ¨
=
≠ Æ
$str
Ø ¬
}
√ ƒ
)
ƒ ≈
;
≈ ∆
context 
. 
AddOrUpdate 
(  
new  #$
CustomerReviewVoteEntity$ <
{= >
Id? A
=B C
$strD G
,G H
AuthorIdI Q
=R S
$strT W
,W X
CustomerReviewIdY i
=j k
$strl o
,o p

ReviewRateq {
=| }
VoteRate	~ Ü
.
Ü á
Helpfull
á è
,
è ê
CreatedDate
ë ú
=
ù û
now
ü ¢
,
¢ £
	CreatedBy
§ ≠
=
Æ Ø
$str
∞ √
}
ƒ ≈
)
≈ ∆
;
∆ «
context 
. 
AddOrUpdate 
(  
new  #$
CustomerReviewVoteEntity$ <
{= >
Id? A
=B C
$strD G
,G H
AuthorIdI Q
=R S
$strT W
,W X
CustomerReviewIdY i
=j k
$strl o
,o p

ReviewRateq {
=| }
VoteRate	~ Ü
.
Ü á
Helpfull
á è
,
è ê
CreatedDate
ë ú
=
ù û
now
ü ¢
,
¢ £
	CreatedBy
§ ≠
=
Æ Ø
$str
∞ √
}
ƒ ≈
)
≈ ∆
;
∆ «
} 	
}   
}!! ∫9
]D:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Model\CustomerReviewEntity.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #
Model# (
{		 
public

 

class

  
CustomerReviewEntity

 %
:

% &
AuditableEntity

' 6
{ 
public  
CustomerReviewEntity #
($ %
)% &
{ 	
CustomerReviewVotes 
=  !
new" %
NullCollection& 4
<4 5$
CustomerReviewVoteEntity5 M
>M N
(N O
)O P
;P Q
} 	
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
AuthorNickname $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
IsActive 
{ 
get "
;" #
set$ '
;' (
}) *
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
	ProductId 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
HelpfullVotesCount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
UselessVotesCount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public   
int   
TotalVotesCount   "
{  # $
get  % (
;  ( )
set  * -
;  - .
}  / 0
public## 
virtual##  
ObservableCollection## +
<##+ ,$
CustomerReviewVoteEntity##, D
>##D E
CustomerReviewVotes##F Y
{##Z [
get##\ _
;##_ `
set##a d
;##d e
}##f g
public&& 
virtual&& 
CustomerReview&& %
ToModel&&& -
(&&- .
CustomerReview&&. <
customerReview&&= K
)&&K L
{'' 	
if(( 
((( 
customerReview(( 
==(( !
null((" &
)((& '
throw)) 
new)) !
ArgumentNullException)) /
())/ 0
nameof))0 6
())6 7
customerReview))7 E
)))E F
)))F G
;))G H
customerReview++ 
.++ 
Id++ 
=++ 
Id++  "
;++" #
customerReview,, 
.,, 
	CreatedBy,, $
=,,% &
	CreatedBy,,' 0
;,,0 1
customerReview-- 
.-- 
CreatedDate-- &
=--' (
CreatedDate--) 4
;--4 5
customerReview.. 
... 

ModifiedBy.. %
=..& '

ModifiedBy..( 2
;..2 3
customerReview// 
.// 
ModifiedDate// '
=//( )
ModifiedDate//* 6
;//6 7
customerReview11 
.11 
AuthorNickname11 )
=11* +
AuthorNickname11, :
;11: ;
customerReview22 
.22 
Content22 "
=22# $
Content22% ,
;22, -
customerReview33 
.33 
IsActive33 #
=33$ %
IsActive33& .
;33. /
customerReview44 
.44 
	ProductId44 $
=44% &
	ProductId44' 0
;440 1
customerReview66 
.66 
HelpfullVotesCount66 -
=66. /
HelpfullVotesCount660 B
;66B C
customerReview77 
.77 
UselessVotesCount77 ,
=77- .
UselessVotesCount77/ @
;77@ A
customerReview88 
.88 
TotalVotesCount88 *
=88+ ,
TotalVotesCount88- <
;88< =
return:: 
customerReview:: !
;::! "
};; 	
public== 
virtual==  
CustomerReviewEntity== +
	FromModel==, 5
(==6 7
CustomerReview==7 E
customerReview==F T
,==T U"
PrimaryKeyResolvingMap==V l
pkMap==m r
)==r s
{>> 	
if?? 
(?? 
customerReview?? 
==?? !
null??" &
)??& '
throw@@ 
new@@ !
ArgumentNullException@@ /
(@@/ 0
nameof@@0 6
(@@6 7
customerReview@@7 E
)@@E F
)@@F G
;@@G H
pkMapBB 
.BB 
AddPairBB 
(BB 
customerReviewBB (
,BB( )
thisBB* .
)BB. /
;BB/ 0
IdDD 
=DD 
customerReviewDD 
.DD  
IdDD  "
;DD" #
	CreatedByEE 
=EE 
customerReviewEE &
.EE& '
	CreatedByEE' 0
;EE0 1
CreatedDateFF 
=FF 
customerReviewFF (
.FF( )
CreatedDateFF) 4
;FF4 5

ModifiedByGG 
=GG 
customerReviewGG '
.GG' (

ModifiedByGG( 2
;GG2 3
ModifiedDateHH 
=HH 
customerReviewHH )
.HH) *
ModifiedDateHH* 6
;HH6 7
AuthorNicknameJJ 
=JJ 
customerReviewJJ +
.JJ+ ,
AuthorNicknameJJ, :
;JJ: ;
ContentKK 
=KK 
customerReviewKK $
.KK$ %
ContentKK% ,
;KK, -
IsActiveLL 
=LL 
customerReviewLL %
.LL% &
IsActiveLL& .
;LL. /
	ProductIdMM 
=MM 
customerReviewMM &
.MM& '
	ProductIdMM' 0
;MM0 1
returnQQ 
thisQQ 
;QQ 
}RR 	
publicTT 
virtualTT 
voidTT 
PatchTT !
(TT! " 
CustomerReviewEntityTT" 6
targetTT7 =
)TT= >
{UU 	
ifVV 
(VV 
targetVV 
==VV 
nullVV 
)VV 
throwWW 
newWW !
ArgumentNullExceptionWW /
(WW/ 0
nameofWW0 6
(WW6 7
targetWW7 =
)WW= >
)WW> ?
;WW? @
targetYY 
.YY 
AuthorNicknameYY !
=YY" #
AuthorNicknameYY$ 2
;YY2 3
targetZZ 
.ZZ 
ContentZZ 
=ZZ 
ContentZZ $
;ZZ$ %
target[[ 
.[[ 
IsActive[[ 
=[[ 
IsActive[[ &
;[[& '
target\\ 
.\\ 
	ProductId\\ 
=\\ 
	ProductId\\ (
;\\( )
}]] 	
}^^ 
}__ ≤*
aD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Model\CustomerReviewVoteEntity.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #
Model# (
{ 
public 

class $
CustomerReviewVoteEntity )
:* +
AuditableEntity, ;
{		 
[

 	
Required

	 
]

 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
AuthorId 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Required	 
] 
public 
VoteRate 

ReviewRate "
{# $
get% (
;( )
set* -
;- .
}/ 0
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
) 
] 
public 
string 
CustomerReviewId &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
virtual  
CustomerReviewEntity +
CustomerReview, :
{; <
get= @
;@ A
setB E
;E F
}G H
public 
virtual 
CustomerReviewVote )
ToModel* 1
(1 2
CustomerReviewVote2 D
customerReviewVoteE W
)W X
{ 	
if 
( 
customerReviewVote "
==# %
null& *
)* +
throw 
new !
ArgumentNullException /
(/ 0
nameof0 6
(6 7
customerReviewVote7 I
)I J
)J K
;K L
customerReviewVote 
. 
Id !
=" #
Id$ &
;& '
customerReviewVote 
. 
	CreatedBy (
=) *
	CreatedBy+ 4
;4 5
customerReviewVote   
.   

ModifiedBy   )
=  * +

ModifiedBy  , 6
;  6 7
customerReviewVote!! 
.!! 
ModifiedDate!! +
=!!, -
ModifiedDate!!. :
;!!: ;
customerReviewVote## 
.## 
AuthorId## '
=##( )
AuthorId##* 2
;##2 3
customerReviewVote$$ 
.$$ 

ReviewRate$$ )
=$$* +

ReviewRate$$, 6
;$$6 7
customerReviewVote%% 
.%% 
CustomerReviewId%% /
=%%0 1
CustomerReviewId%%2 B
;%%B C
return'' 
customerReviewVote'' %
;''% &
}(( 	
public** 
virtual** $
CustomerReviewVoteEntity** /
	FromModel**0 9
(**9 :
CustomerReviewVote**: L
customerReviewVote**M _
,**_ `"
PrimaryKeyResolvingMap**a w
pkMap**x }
)**} ~
{++ 	
if,, 
(,, 
customerReviewVote,, "
==,,# %
null,,& *
),,* +
throw-- 
new-- !
ArgumentNullException-- /
(--/ 0
nameof--0 6
(--6 7
customerReviewVote--7 I
)--I J
)--J K
;--K L
pkMap// 
.// 
AddPair// 
(// 
customerReviewVote// ,
,//, -
this//. 2
)//2 3
;//3 4
Id11 
=11 
customerReviewVote11 #
.11# $
Id11$ &
;11& '
	CreatedBy22 
=22 
customerReviewVote22 *
.22* +
	CreatedBy22+ 4
;224 5
CreatedDate33 
=33 
customerReviewVote33 ,
.33, -
CreatedDate33- 8
;338 9

ModifiedBy44 
=44 
customerReviewVote44 +
.44+ ,

ModifiedBy44, 6
;446 7
ModifiedDate55 
=55 
customerReviewVote55 -
.55- .
ModifiedDate55. :
;55: ;
AuthorId77 
=77 
customerReviewVote77 )
.77) *
AuthorId77* 2
;772 3

ReviewRate88 
=88 
customerReviewVote88 +
.88+ ,

ReviewRate88, 6
;886 7
CustomerReviewId99 
=99 
customerReviewVote99 1
.991 2
CustomerReviewId992 B
;99B C
return;; 
this;; 
;;; 
}<< 	
public>> 
virtual>> 
void>> 
Patch>> !
(>>! "$
CustomerReviewVoteEntity>>" :
target>>; A
)>>A B
{?? 	
if@@ 
(@@ 
target@@ 
==@@ 
null@@ 
)@@ 
throwAA 
newAA !
ArgumentNullExceptionAA /
(AA/ 0
nameofAA0 6
(AA6 7
targetAA7 =
)AA= >
)AA> ?
;AA? @
targetCC 
.CC 
AuthorIdCC 
=CC 
AuthorIdCC &
;CC& '
targetDD 
.DD 

ReviewRateDD 
=DD 

ReviewRateDD  *
;DD* +
}FF 	
}JJ 
}KK Ö
ZD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 3
)3 4
]4 5
[		 
assembly		 	
:			 

AssemblyDescription		 
(		 
$str		 !
)		! "
]		" #
[

 
assembly

 	
:

	 
!
AssemblyConfiguration

  
(

  !
$str

! #
)

# $
]

$ %
[ 
assembly 	
:	 

AssemblyCompany 
( 
$str ,
), -
]- .
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 5
)5 6
]6 7
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str ?
)? @
]@ A
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
[## 
assembly## 	
:##	 

AssemblyVersion## 
(## 
$str## $
)##$ %
]##% &
[$$ 
assembly$$ 	
:$$	 

AssemblyFileVersion$$ 
($$ 
$str$$ (
)$$( )
]$$) *ôC
hD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Repositories\CustomerReviewRepository.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #
Repositories# /
{ 
public		 

class		 $
CustomerReviewRepository		 )
:		* +
EFRepositoryBase		, <
,		< =%
ICustomerReviewRepository		> W
{

 
public $
CustomerReviewRepository '
(' (
)( )
{ 	
} 	
public $
CustomerReviewRepository '
(' (
string( ."
nameOrConnectionString/ E
,E F
paramsG M
IInterceptorN Z
[Z [
][ \
interceptors] i
)i j
: 
base 
( "
nameOrConnectionString )
,) *
null+ /
,/ 0
interceptors1 =
)= >
{ 	
Configuration 
. 
LazyLoadingEnabled ,
=- .
false/ 4
;4 5
} 	
	protected 
override 
void 
OnModelCreating  /
(/ 0
DbModelBuilder0 >
modelBuilder? K
)K L
{ 	
modelBuilder 
. 
Entity 
<   
CustomerReviewEntity  4
>4 5
(5 6
)6 7
.7 8
ToTable8 ?
(? @
$str@ P
)P Q
.Q R
HasKeyR X
(X Y
xY Z
=>[ ]
x^ _
._ `
Id` b
)b c
.c d
Propertyd l
(l m
xm n
=>o q
xr s
.s t
Idt v
)v w
;w x
modelBuilder 
. 
Entity 
<   
CustomerReviewEntity  4
>4 5
(5 6
)6 7
.7 8
Property8 @
(@ A
xA B
=>C E
xF G
.G H
HelpfullVotesCountH Z
)Z [
.[ \
HasColumnAnnotation\ o
(o p
$strp ~
,~ 
$num
Ä Å
)
Å Ç
;
Ç É
modelBuilder 
. 
Entity 
<   
CustomerReviewEntity  4
>4 5
(5 6
)6 7
.7 8
Property8 @
(@ A
xA B
=>C E
xF G
.G H
UselessVotesCountH Y
)Y Z
.Z [
HasColumnAnnotation[ n
(n o
$stro }
,} ~
$num	 Ä
)
Ä Å
;
Å Ç
modelBuilder 
. 
Entity 
<   
CustomerReviewEntity  4
>4 5
(5 6
)6 7
.7 8
Property8 @
(@ A
xA B
=>C E
xF G
.G H
TotalVotesCountH W
)W X
.X Y
HasColumnAnnotationY l
(l m
$strm {
,{ |
$num} ~
)~ 
;	 Ä
modelBuilder 
. 
Entity 
<  $
CustomerReviewVoteEntity  8
>8 9
(9 :
): ;
.; <
ToTable< C
(C D
$strD X
)X Y
.Y Z
HasKeyZ `
(` a
xa b
=>c e
xf g
.g h
Idh j
)j k
.k l
Propertyl t
(t u
xu v
=>w y
xz {
.{ |
Id| ~
)~ 
;	 Ä
modelBuilder   
.   
Entity   
<    $
CustomerReviewVoteEntity    8
>  8 9
(  9 :
)  : ;
.!! 
HasRequired!! 
<!!  
CustomerReviewEntity!! 1
>!!1 2
(!!2 3
x!!3 4
=>!!5 7
x!!8 9
.!!9 :
CustomerReview!!: H
)!!H I
."" 
WithMany"" 
("" 
y"" 
=>"" 
y""  
.""  !
CustomerReviewVotes""! 4
)""4 5
.## 
HasForeignKey## 
<## 
string## %
>##% &
(##& '
z##' (
=>##) +
z##, -
.##- .
CustomerReviewId##. >
)##> ?
;##? @
modelBuilder%% 
.%% 
Entity%% 
<%%  $
CustomerReviewVoteEntity%%  8
>%%8 9
(%%9 :
)%%: ;
.&& 
HasIndex&& 
(&& 
x&& 
=>&& 
new&& "
{&&# $
x&&% &
.&&& '
AuthorId&&' /
,&&/ 0
x&&1 2
.&&2 3
CustomerReviewId&&3 C
}&&D E
)&&E F
.'' 
IsUnique'' 
('' 
)'' 
.(( 
HasName(( 
((( 
$str(( 6
)((6 7
;((7 8
base** 
.** 
OnModelCreating**  
(**  !
modelBuilder**! -
)**- .
;**. /
}++ 	
public.. 

IQueryable.. 
<..  
CustomerReviewEntity.. .
>... /
CustomerReviews..0 ?
=>..@ B
GetAsQueryable..C Q
<..Q R 
CustomerReviewEntity..R f
>..f g
(..g h
)..h i
;..i j
public00  
CustomerReviewEntity00 #
[00# $
]00$ %
GetReviewByIds00& 4
(004 5
string005 ;
[00; <
]00< =
ids00> A
)00A B
{11 	
return22 
CustomerReviews22 "
.22" #
Include22# *
(22* +
x22+ ,
=>22- /
x220 1
.221 2
CustomerReviewVotes222 E
)22E F
.22F G
Where22G L
(22L M
x22M N
=>22O Q
ids22R U
.22U V
Contains22V ^
(22^ _
x22_ `
.22` a
Id22a c
)22c d
)22d e
.22e f
ToArray22f m
(22m n
)22n o
;22o p
}33 	
public66 
void66 !
DeleteCustomerReviews66 )
(66) *
string66* 0
[660 1
]661 2
ids663 6
)666 7
{77 	
var88 
items88 
=88 
GetReviewByIds88 &
(88& '
ids88' *
)88* +
;88+ ,
foreach99 
(99 
var99 
item99 
in99  
items99! &
)99& '
{:: 
Remove;; 
(;; 
item;; 
);; 
;;; 
}<< 
}== 	
publicAA 

IQueryableAA 
<AA $
CustomerReviewVoteEntityAA 2
>AA2 3
CustomerReviewVotesAA4 G
=>AAH J
GetAsQueryableAAK Y
<AAY Z$
CustomerReviewVoteEntityAAZ r
>AAr s
(AAs t
)AAt u
;AAu v
publicCC $
CustomerReviewVoteEntityCC '
[CC' (
]CC( )
GetVoteByIdsCC* 6
(CC6 7
stringCC7 =
[CC= >
]CC> ?
idsCC@ C
)CCC D
{DD 	
returnEE 
CustomerReviewVotesEE &
.EE& '
IncludeEE' .
(EE. /
xEE/ 0
=>EE1 3
xEE4 5
.EE5 6
CustomerReviewEE6 D
)EED E
.EEE F
WhereEEF K
(EEK L
xEEL M
=>EEN P
idsEEQ T
.EET U
ContainsEEU ]
(EE] ^
xEE^ _
.EE_ `
IdEE` b
)EEb c
)EEc d
.EEd e
ToArrayEEe l
(EEl m
)EEm n
;EEn o
}FF 	
publicHH 
voidHH %
DeleteCustomerReviewVotesHH -
(HH- .
stringHH. 4
[HH4 5
]HH5 6
idsHH7 :
)HH: ;
{II 	
varJJ 
itemsJJ 
=JJ 
GetVoteByIdsJJ $
(JJ$ %
idsJJ% (
)JJ( )
;JJ) *
foreachKK 
(KK 
varKK 
itemKK 
inKK  
itemsKK! &
)KK& '
{LL 
RemoveMM 
(MM 
itemMM 
)MM 
;MM 
}NN 
}OO 	
}RR 
}SS Û
iD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Repositories\ICustomerReviewRepository.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #
Repositories# /
{ 
public 

	interface %
ICustomerReviewRepository .
:/ 0
IRepository1 <
{ 

IQueryable		 
<		  
CustomerReviewEntity		 '
>		' (
CustomerReviews		) 8
{		9 :
get		; >
;		> ?
}		@ A

IQueryable

 
<

 $
CustomerReviewVoteEntity

 +
>

+ ,
CustomerReviewVotes

- @
{

A B
get

C F
;

F G
}

H I 
CustomerReviewEntity 
[ 
] 
GetReviewByIds -
(- .
string. 4
[4 5
]5 6
ids7 :
): ;
;; <
void !
DeleteCustomerReviews "
(" #
string# )
[) *
]* +
ids, /
)/ 0
;0 1$
CustomerReviewVoteEntity  
[  !
]! "
GetVoteByIds# /
(/ 0
string0 6
[6 7
]7 8
ids9 <
)< =
;= >
void %
DeleteCustomerReviewVotes &
(& '
string' -
[- .
]. /
ids0 3
)3 4
;4 5
} 
} Ç[
gD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Services\CustomerReviewSearchService.cs
	namespace

 	
CustomerReviewVotes


 
.

 
Data

 "
.

" #
Services

# +
{ 
public 

class '
CustomerReviewSearchService ,
:- .
ServiceBase/ :
,: ;(
ICustomerReviewSearchService< X
{ 
private 
readonly 
Func 
< %
ICustomerReviewRepository 7
>7 8
_repositoryFactory9 K
;K L
private 
readonly "
ICustomerReviewService /"
_customerReviewService0 F
;F G
public '
CustomerReviewSearchService *
(* +
Func+ /
</ 0%
ICustomerReviewRepository0 I
>I J
repositoryFactoryK \
,\ ]"
ICustomerReviewService^ t"
customerReviewService	u ä
)
ä ã
{ 	
_repositoryFactory 
=  
repositoryFactory! 2
;2 3"
_customerReviewService "
=# $!
customerReviewService% :
;: ;
} 	
public 
GenericSearchResult "
<" #
CustomerReview# 1
>1 2!
SearchCustomerReviews3 H
(H I(
CustomerReviewSearchCriteriaI e
criteriaf n
)n o
{ 	
if 
( 
criteria 
== 
null  
)  !
{ 
throw 
new !
ArgumentNullException /
(/ 0
$"0 2
{2 3
nameof3 9
(9 :
criteria: B
)B C
}C D
 must be setD P
"P Q
)Q R
;R S
} 
var 
retVal 
= 
new 
GenericSearchResult 0
<0 1
CustomerReview1 ?
>? @
(@ A
)A B
;B C
using   
(   
var   

repository   !
=  " #
_repositoryFactory  $ 6
(  6 7
)  7 8
)  8 9
{!! 
var"" 
query"" 
="" 

repository"" &
.""& '
CustomerReviews""' 6
;""6 7
if$$ 
($$ 
!$$ 
criteria$$ 
.$$ 

ProductIds$$ (
.$$( )
IsNullOrEmpty$$) 6
($$6 7
)$$7 8
)$$8 9
{%% 
query&& 
=&& 
query&& !
.&&! "
Where&&" '
(&&' (
x&&( )
=>&&* ,
criteria&&- 5
.&&5 6

ProductIds&&6 @
.&&@ A
Contains&&A I
(&&I J
x&&J K
.&&K L
	ProductId&&L U
)&&U V
)&&V W
;&&W X
}'' 
if)) 
()) 
criteria)) 
.)) 
IsActive)) %
.))% &
HasValue))& .
))). /
{** 
query++ 
=++ 
query++ !
.++! "
Where++" '
(++' (
x++( )
=>++* ,
x++- .
.++. /
IsActive++/ 7
==++8 :
criteria++; C
.++C D
IsActive++D L
)++L M
;++M N
},, 
if.. 
(.. 
!.. 
criteria.. 
... 
SearchPhrase.. *
...* +
IsNullOrEmpty..+ 8
(..8 9
)..9 :
)..: ;
{// 
query00 
=00 
query00 !
.00! "
Where00" '
(00' (
x00( )
=>00* ,
x00- .
.00. /
Content00/ 6
.006 7
Contains007 ?
(00? @
criteria00@ H
.00H I
SearchPhrase00I U
)00U V
)00V W
;00W X
}11 
var33 
	sortInfos33 
=33 
criteria33  (
.33( )
	SortInfos33) 2
;332 3
if44 
(44 
	sortInfos44 
.44 
IsNullOrEmpty44 +
(44+ ,
)44, -
)44- .
{55 
	sortInfos66 
=66 
new66  #
[66# $
]66$ %
{66& '
new66( +
SortInfo66, 4
{665 6

SortColumn667 A
=66B C
$str66D Q
,66Q R
SortDirection66S `
=66a b
SortDirection66c p
.66p q

Descending66q {
}66| }
}66~ 
;	66 Ä
}77 
retVal88 
.88 

TotalCount88 !
=88" #
query88$ )
.88) *
Count88* /
(88/ 0
)880 1
;881 2
query:: 
=:: 
query:: 
.:: 
OrderBySortInfos:: .
(::. /
	sortInfos::/ 8
)::8 9
;::9 :
retVal<< 
.<< 

TotalCount<< !
=<<" #
query<<$ )
.<<) *
Count<<* /
(<</ 0
)<<0 1
;<<1 2
var>> 
customerReviewIds>> %
=>>& '
query>>( -
.>>- .
Skip>>. 2
(>>2 3
criteria>>3 ;
.>>; <
Skip>>< @
)>>@ A
.??! "
Take??" &
(??& '
criteria??' /
.??/ 0
Take??0 4
)??4 5
.@@! "
Select@@" (
(@@( )
x@@) *
=>@@+ -
x@@. /
.@@/ 0
Id@@0 2
)@@2 3
.AA! "
ToListAA" (
(AA( )
)AA) *
;AA* +
varDD 
customerReviewsDD #
=DD$ %"
_customerReviewServiceDD& <
.DD< =
GetReviewByIdsDD= K
(DDK L
customerReviewIdsDDL ]
.DD] ^
ToArrayDD^ e
(DDe f
)DDf g
)DDg h
.EE7 8
OrderByEE8 ?
(EE? @
xEE@ A
=>EEB D
customerReviewIdsEEE V
.EEV W
IndexOfEEW ^
(EE^ _
xEE_ `
.EE` a
IdEEa c
)EEc d
)EEd e
.EEe f
ToListEEf l
(EEl m
)EEm n
;EEn o
foreachGG 
(GG 
varGG 
itemGG !
inGG" $
customerReviewsGG% 4
)GG4 5
{HH 
itemII 
.II 
UserReviewRateII '
=II( )

repositoryII* 4
.II4 5
CustomerReviewVotesII5 H
.JJ4 5
WhereJJ5 :
(JJ: ;
xJJ; <
=>JJ= ?
criteriaJJ@ H
.JJH I
AuthorIdJJI Q
.JJQ R
EqualsJJR X
(JJX Y
xJJY Z
.JJZ [
AuthorIdJJ[ c
)JJc d
&&JJe g
itemJJh l
.JJl m
IdJJm o
.JJo p
EqualsJJp v
(JJv w
xJJw x
.JJx y
CustomerReviewId	JJy â
)
JJâ ä
)
JJä ã
.KK4 5
SelectKK5 ;
(KK; <
xKK< =
=>KK> @
xKKA B
.KKB C

ReviewRateKKC M
)KKM N
.LL4 5
FirstOrDefaultLL5 C
(LLC D
)LLD E
;LLE F
}MM 
retValOO 
.OO 
ResultsOO 
=OO  
customerReviewsOO! 0
;OO0 1
returnQQ 
retValQQ 
;QQ 
}RR 
}VV 	
publicXX 
GenericSearchResultXX "
<XX" #
CustomerReviewVoteXX# 5
>XX5 6%
SearchCustomerReviewVotesXX7 P
(XXP Q,
 CustomerReviewVoteSearchCriteriaXXQ q
criteriaXXr z
)XXz {
{YY 	
ifZZ 
(ZZ 
criteriaZZ 
==ZZ 
nullZZ  
)ZZ  !
{[[ 
throw\\ 
new\\ !
ArgumentNullException\\ /
(\\/ 0
$"\\0 2
{\\2 3
nameof\\3 9
(\\9 :
criteria\\: B
)\\B C
}\\C D
 must be set\\D P
"\\P Q
)\\Q R
;\\R S
}]] 
var__ 
retVal__ 
=__ 
new__ 
GenericSearchResult__ 0
<__0 1
CustomerReviewVote__1 C
>__C D
(__D E
)__E F
;__F G
usingaa 
(aa 
varaa 

repositoryaa !
=aa" #
_repositoryFactoryaa$ 6
(aa6 7
)aa7 8
)aa8 9
{bb 
varcc 
querycc 
=cc 

repositorycc &
.cc& '
CustomerReviewVotescc' :
;cc: ;
ifee 
(ee 
!ee 
criteriaee 
.ee 
CustomerReviewIdsee /
.ee/ 0
IsNullOrEmptyee0 =
(ee= >
)ee> ?
)ee? @
{ff 
querygg 
=gg 
querygg !
.gg! "
Wheregg" '
(gg' (
xgg( )
=>gg* ,
criteriagg- 5
.gg5 6
CustomerReviewIdsgg6 G
.ggG H
ContainsggH P
(ggP Q
xggQ R
.ggR S
CustomerReviewIdggS c
)ggc d
)ggd e
;gge f
}hh 
varjj 
	sortInfosjj 
=jj 
criteriajj  (
.jj( )
	SortInfosjj) 2
;jj2 3
ifkk 
(kk 
	sortInfoskk 
.kk 
IsNullOrEmptykk +
(kk+ ,
)kk, -
)kk- .
{ll 
	sortInfosmm 
=mm 
newmm  #
[mm# $
]mm$ %
{mm& '
newmm( +
SortInfomm, 4
{mm5 6

SortColumnmm7 A
=mmB C
$strmmD Q
,mmQ R
SortDirectionmmS `
=mma b
SortDirectionmmc p
.mmp q

Descendingmmq {
}mm| }
}mm~ 
;	mm Ä
}nn 
queryoo 
=oo 
queryoo 
.oo 
OrderBySortInfosoo .
(oo. /
	sortInfosoo/ 8
)oo8 9
;oo9 :
retValqq 
.qq 

TotalCountqq !
=qq" #
queryqq$ )
.qq) *
Countqq* /
(qq/ 0
)qq0 1
;qq1 2
varss !
customerReviewVoteIdsss )
=ss* +
queryss, 1
.ss1 2
Skipss2 6
(ss6 7
criteriass7 ?
.ss? @
Skipss@ D
)ssD E
.tt! "
Takett" &
(tt& '
criteriatt' /
.tt/ 0
Takett0 4
)tt4 5
.uu! "
Selectuu" (
(uu( )
xuu) *
=>uu+ -
xuu. /
.uu/ 0
Iduu0 2
)uu2 3
.vv! "
ToListvv" (
(vv( )
)vv) *
;vv* +
retValxx 
.xx 
Resultsxx 
=xx  "
_customerReviewServicexx! 7
.xx7 8
GetVoteByIdsxx8 D
(xxD E!
customerReviewVoteIdsxxE Z
.xxZ [
ToArrayxx[ b
(xxb c
)xxc d
)xxd e
.yy7 8
OrderByyy8 ?
(yy? @
xyy@ A
=>yyB D!
customerReviewVoteIdsyyE Z
.yyZ [
IndexOfyy[ b
(yyb c
xyyc d
.yyd e
Idyye g
)yyg h
)yyh i
.yyi j
ToListyyj p
(yyp q
)yyq r
;yyr s
return{{ 
retVal{{ 
;{{ 
}|| 
}}} 	
} 
}ÄÄ Ãz
aD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Services\CustomerReviewService.cs
	namespace

 	
CustomerReviewVotes


 
.

 
Data

 "
.

" #
Services

# +
{ 
public 

class !
CustomerReviewService &
:' (
ServiceBase) 4
,4 5"
ICustomerReviewService6 L
{ 
private 
readonly 
Func 
< %
ICustomerReviewRepository 7
>7 8
_repositoryFactory9 K
;K L
public !
CustomerReviewService $
($ %
Func% )
<) *%
ICustomerReviewRepository* C
>C D
repositoryFactoryE V
)V W
{ 	
_repositoryFactory 
=  
repositoryFactory! 2
;2 3
} 	
public 
void  
DeleteCustomerRevies (
(( )
string) /
[/ 0
]0 1
ids2 5
)5 6
{ 	
using 
( 
var 

repository !
=" #
_repositoryFactory$ 6
(6 7
)7 8
)8 9
{ 

repository 
. !
DeleteCustomerReviews 0
(0 1
ids1 4
)4 5
;5 6
CommitChanges 
( 

repository (
)( )
;) *
} 
} 	
public 
CustomerReview 
[ 
] 
GetReviewByIds  .
(. /
string/ 5
[5 6
]6 7
ids8 ;
); <
{ 	
using   
(   
var   

repository   !
=  " #
_repositoryFactory  $ 6
(  6 7
)  7 8
)  8 9
{!! 
return"" 

repository"" !
.""! "
GetReviewByIds""" 0
(""0 1
ids""1 4
)""4 5
.""5 6
Select""6 <
(""< =
x""= >
=>""? A
x""B C
.""C D
ToModel""D K
(""K L
AbstractTypeFactory""L _
<""_ `
CustomerReview""` n
>""n o
.""o p
TryCreateInstance	""p Å
(
""Å Ç
)
""Ç É
)
""É Ñ
)
""Ñ Ö
.
""Ö Ü
ToArray
""Ü ç
(
""ç é
)
""é è
;
""è ê
}## 
}$$ 	
public&& 
void&& 
SaveCustomerReviews&& '
(&&' (
CustomerReview&&( 6
[&&6 7
]&&7 8
items&&9 >
)&&> ?
{'' 	
if(( 
((( 
items(( 
==(( 
null(( 
)(( 
{)) 
throw** 
new** !
ArgumentNullException** /
(**/ 0
nameof**0 6
(**6 7
items**7 <
)**< =
)**= >
;**> ?
}++ 
var-- 
pkMap-- 
=-- 
new-- "
PrimaryKeyResolvingMap-- 2
(--2 3
)--3 4
;--4 5
using.. 
(.. 
var.. 

repository.. !
=.." #
_repositoryFactory..$ 6
(..6 7
)..7 8
)..8 9
{// 
using00 
(00 
var00 
changeTracker00 (
=00) *
GetChangeTracker00+ ;
(00; <

repository00< F
)00F G
)00G H
{11 
var22  
alreadyExistEntities22 ,
=22- .

repository22/ 9
.229 :
GetReviewByIds22: H
(22H I
items22I N
.22N O
Where22O T
(22T U
m22U V
=>22W Y
!22Z [
m22[ \
.22\ ]
IsTransient22] h
(22h i
)22i j
)22j k
.22k l
Select22l r
(22r s
x22s t
=>22u w
x22x y
.22y z
Id22z |
)22| }
.22} ~
ToArray	22~ Ö
(
22Ö Ü
)
22Ü á
)
22á à
;
22à â
foreach33 
(33 
var33  
derivativeContract33! 3
in334 6
items337 <
)33< =
{44 
var55 
sourceEntity55 (
=55) *
AbstractTypeFactory55+ >
<55> ? 
CustomerReviewEntity55? S
>55S T
.55T U
TryCreateInstance55U f
(55f g
)55g h
.55h i
	FromModel55i r
(55r s
derivativeContract	55s Ö
,
55Ö Ü
pkMap
55á å
)
55å ç
;
55ç é
var66 
targetEntity66 (
=66) * 
alreadyExistEntities66+ ?
.66? @
FirstOrDefault66@ N
(66N O
x66O P
=>66Q S
x66T U
.66U V
Id66V X
==66Y [
sourceEntity66\ h
.66h i
Id66i k
)66k l
;66l m
if77 
(77 
targetEntity77 (
!=77) +
null77, 0
)770 1
{88 
changeTracker99 )
.99) *
Attach99* 0
(990 1
targetEntity991 =
)99= >
;99> ?
sourceEntity:: (
.::( )
Patch::) .
(::. /
targetEntity::/ ;
)::; <
;::< =
};; 
else<< 
{== 

repository>> &
.>>& '
Add>>' *
(>>* +
sourceEntity>>+ 7
)>>7 8
;>>8 9
}?? 
}@@ 
CommitChangesAA !
(AA! "

repositoryAA" ,
)AA, -
;AA- .
pkMapBB 
.BB 
ResolvePrimaryKeysBB ,
(BB, -
)BB- .
;BB. /
}CC 
}DD 
}EE 	
publicFF 
voidFF !
DeleteCustomerReviewsFF )
(FF) *
stringFF* 0
[FF0 1
]FF1 2
idsFF3 6
)FF6 7
{GG 	
usingHH 
(HH 
varHH 

repositoryHH !
=HH" #
_repositoryFactoryHH$ 6
(HH6 7
)HH7 8
)HH8 9
{II 

repositoryJJ 
.JJ !
DeleteCustomerReviewsJJ 0
(JJ0 1
idsJJ1 4
)JJ4 5
;JJ5 6
CommitChangesKK 
(KK 

repositoryKK (
)KK( )
;KK) *
}LL 
}MM 	
publicNN 
CustomerReviewVoteNN !
[NN! "
]NN" #
GetVoteByIdsNN$ 0
(NN0 1
stringNN1 7
[NN7 8
]NN8 9
idsNN: =
)NN= >
{OO 	
usingPP 
(PP 
varPP 

repositoryPP !
=PP" #
_repositoryFactoryPP$ 6
(PP6 7
)PP7 8
)PP8 9
{QQ 
returnRR 

repositoryRR !
.RR! "
GetVoteByIdsRR" .
(RR. /
idsRR/ 2
)RR2 3
.RR3 4
SelectRR4 :
(RR: ;
xRR; <
=>RR= ?
xRR@ A
.RRA B
ToModelRRB I
(RRI J
AbstractTypeFactoryRRJ ]
<RR] ^
CustomerReviewVoteRR^ p
>RRp q
.RRq r
TryCreateInstance	RRr É
(
RRÉ Ñ
)
RRÑ Ö
)
RRÖ Ü
)
RRÜ á
.
RRá à
ToArray
RRà è
(
RRè ê
)
RRê ë
;
RRë í
}SS 
}TT 	
publicVV 
voidVV #
SaveCustomerReviewVotesVV +
(VV+ ,
CustomerReviewVoteVV, >
[VV> ?
]VV? @
itemsVVA F
)VVF G
{WW 	
ifXX 
(XX 
itemsXX 
==XX 
nullXX 
)XX 
{YY 
throwZZ 
newZZ !
ArgumentNullExceptionZZ /
(ZZ/ 0
nameofZZ0 6
(ZZ6 7
itemsZZ7 <
)ZZ< =
)ZZ= >
;ZZ> ?
}[[ 
var]] 
pkMap]] 
=]] 
new]] "
PrimaryKeyResolvingMap]] 2
(]]2 3
)]]3 4
;]]4 5
int^^ 
i^^ 
=^^ 
$num^^ 
;^^ 
int__ 
r__ 
=__ 
$num__ 
;__ 
using`` 
(`` 
var`` 

repository`` !
=``" #
_repositoryFactory``$ 6
(``6 7
)``7 8
)``8 9
{aa 
usingbb 
(bb 
varbb 
changeTrackerbb (
=bb) *
GetChangeTrackerbb+ ;
(bb; <

repositorybb< F
)bbF G
)bbG H
{cc 
vardd  
alreadyExistEntitiesdd ,
=dd- .

repositorydd/ 9
.dd9 :
GetVoteByIdsdd: F
(ddF G
itemsddG L
.ddL M
WhereddM R
(ddR S
mddS T
=>ddU W
!ddX Y
mddY Z
.ddZ [
IsTransientdd[ f
(ddf g
)ddg h
)ddh i
.ddi j
Selectddj p
(ddp q
xddq r
=>dds u
xddv w
.ddw x
Idddx z
)ddz {
.dd{ |
ToArray	dd| É
(
ddÉ Ñ
)
ddÑ Ö
)
ddÖ Ü
;
ddÜ á
foreachee 
(ee 
varee  
derivativeContractee! 3
inee4 6
itemsee7 <
)ee< =
{ff 
vargg 
sourceEntitygg (
=gg) *
AbstractTypeFactorygg+ >
<gg> ?$
CustomerReviewVoteEntitygg? W
>ggW X
.ggX Y
TryCreateInstanceggY j
(ggj k
)ggk l
.ggl m
	FromModelggm v
(ggv w
derivativeContract	ggw â
,
ggâ ä
pkMap
ggã ê
)
ggê ë
;
ggë í
varhh 
targetEntityhh (
=hh) * 
alreadyExistEntitieshh+ ?
.hh? @
FirstOrDefaulthh@ N
(hhN O
xhhO P
=>hhQ S
xhhT U
.hhU V
IdhhV X
==hhY [
sourceEntityhh\ h
.hhh i
Idhhi k
)hhk l
;hhl m
ifii 
(ii 
targetEntityii (
!=ii) +
nullii, 0
)ii0 1
{jj 
changeTrackerkk )
.kk) *
Attachkk* 0
(kk0 1
targetEntitykk1 =
)kk= >
;kk> ?
sourceEntityll (
.ll( )
Patchll) .
(ll. /
targetEntityll/ ;
)ll; <
;ll< =
}mm 
elsenn 
{oo 

repositorypp &
.pp& '
Addpp' *
(pp* +
sourceEntitypp+ 7
)pp7 8
;pp8 9
}qq 
}rr 
vartt 
	reviewIdstt !
=tt" #
itemstt$ )
.tt) *
Selecttt* 0
(tt0 1
xtt1 2
=>tt3 5
xtt6 7
.tt7 8
CustomerReviewIdtt8 H
)ttH I
.ttI J
ToArrayttJ Q
(ttQ R
)ttR S
;ttS T*
UpdateCustomerReviewVotesCountuu 2
(uu2 3

repositoryuu3 =
,uu= >
	reviewIdsuu? H
)uuH I
;uuI J
CommitChangesww !
(ww! "

repositoryww" ,
)ww, -
;ww- .
pkMapxx 
.xx 
ResolvePrimaryKeysxx ,
(xx, -
)xx- .
;xx. /
}yy 
}zz 
}|| 	
public~~ 
void~~ *
UpdateCustomerReviewVotesCount~~ 2
(~~2 3%
ICustomerReviewRepository~~3 L

repository~~M W
,~~W X
string~~Y _
[~~_ `
]~~` a
	reviewIds~~b k
)~~k l
{ 	
if
ÅÅ 
(
ÅÅ 

repository
ÅÅ 
==
ÅÅ 
null
ÅÅ "
)
ÅÅ" #
{
ÇÇ 
throw
ÉÉ 
new
ÉÉ #
ArgumentNullException
ÉÉ /
(
ÉÉ/ 0
nameof
ÉÉ0 6
(
ÉÉ6 7

repository
ÉÉ7 A
)
ÉÉA B
)
ÉÉB C
;
ÉÉC D
}
ÑÑ 
var
ÖÖ 
query
ÖÖ 
=
ÖÖ 

repository
ÖÖ "
.
ÖÖ" #
GetReviewByIds
ÖÖ# 1
(
ÖÖ1 2
	reviewIds
ÖÖ2 ;
)
ÖÖ; <
;
ÖÖ< =
foreach
áá 
(
áá 
var
áá 
item
áá 
in
áá  
query
áá! &
)
áá& '
{
àà 
item
ââ 
.
ââ  
HelpfullVotesCount
ââ '
=
ââ( )
item
ââ* .
.
ââ. /!
CustomerReviewVotes
ââ/ B
.
ââB C
Count
ââC H
(
ââH I
x
ââI J
=>
ââK M
(
ââN O
x
ââO P
.
ââP Q

ReviewRate
ââQ [
==
ââ\ ^
VoteRate
ââ_ g
.
ââg h
Helpfull
ââh p
)
ââp q
&&
ââr t
(
ââu v
x
ââv w
.
ââw x
CustomerReviewIdââx à
==âââ ã
itemââå ê
.ââê ë
Idââë ì
)ââì î
)ââî ï
;ââï ñ
item
ää 
.
ää 
UselessVotesCount
ää &
=
ää' (
item
ää) -
.
ää- .!
CustomerReviewVotes
ää. A
.
ääA B
Count
ääB G
(
ääG H
x
ääH I
=>
ääJ L
(
ääM N
x
ääN O
.
ääO P

ReviewRate
ääP Z
==
ää[ ]
VoteRate
ää^ f
.
ääf g
Useless
ääg n
)
ään o
&&
ääp r
(
ääs t
x
äät u
.
ääu v
CustomerReviewIdääv Ü
==ääá â
itemäää é
.ääé è
Idääè ë
)ääë í
)ääí ì
;ääì î
item
ãã 
.
ãã 
TotalVotesCount
ãã $
=
ãã% &
item
ãã' +
.
ãã+ ,!
CustomerReviewVotes
ãã, ?
.
ãã? @
Count
ãã@ E
(
ããE F
x
ããF G
=>
ããH J
x
ããK L
.
ããL M
CustomerReviewId
ããM ]
==
ãã^ `
item
ããa e
.
ããe f
Id
ããf h
)
ããh i
;
ããi j
}
åå 
}
çç 	
public
èè 
void
èè '
DeleteCustomerReviewVotes
èè -
(
èè- .
string
èè. 4
[
èè4 5
]
èè5 6
ids
èè7 :
)
èè: ;
{
êê 	
using
ëë 
(
ëë 
var
ëë 

repository
ëë !
=
ëë" # 
_repositoryFactory
ëë$ 6
(
ëë6 7
)
ëë7 8
)
ëë8 9
{
íí 
var
îî 
	reviewIds
îî 
=
îî 

repository
îî  *
.
îî* +
GetVoteByIds
îî+ 7
(
îî7 8
ids
îî8 ;
)
îî; <
.
îî< =
Select
îî= C
(
îîC D
x
îîD E
=>
îîF H
x
îîI J
.
îîJ K
CustomerReviewId
îîK [
)
îî[ \
.
îî\ ]
ToArray
îî] d
(
îîd e
)
îîe f
;
îîf g

repository
ññ 
.
ññ '
DeleteCustomerReviewVotes
ññ 4
(
ññ4 5
ids
ññ5 8
)
ññ8 9
;
ññ9 :,
UpdateCustomerReviewVotesCount
óó .
(
óó. /

repository
óó/ 9
,
óó9 :
	reviewIds
óó; D
)
óóD E
;
óóE F
CommitChanges
òò 
(
òò 

repository
òò (
)
òò( )
;
òò) *
}
ôô 
}
öö 	
}
ùù 
}ûû 