•I
ed:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Migrations\201902030903567_Initial.cs
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
[d:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Migrations\Configuration.cs
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
]d:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Model\CustomerReviewEntity.cs
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
ad:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Model\CustomerReviewVoteEntity.cs
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
Zd:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Properties\AssemblyInfo.cs
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
hd:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Repositories\CustomerReviewRepository.cs
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
id:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Repositories\ICustomerReviewRepository.cs
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
gd:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Services\CustomerReviewSearchService.cs
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
}ÄÄ ¢u
ad:\Data\Sources\CustomerReviewVote-module\newManagedModule.Data\Services\CustomerReviewService.cs
	namespace 	
CustomerReviewVotes
 
. 
Data "
." #
Services# +
{ 
public 

class !
CustomerReviewService &
:' (
ServiceBase) 4
,4 5"
ICustomerReviewService6 L
{ 
private 
readonly 
Func 
< %
ICustomerReviewRepository 7
>7 8
_repositoryFactory9 K
;K L
public !
CustomerReviewService $
($ %
Func% )
<) *%
ICustomerReviewRepository* C
>C D
repositoryFactoryE V
)V W
{ 	
_repositoryFactory 
=  
repositoryFactory! 2
;2 3
} 	
public 
void  
DeleteCustomerRevies (
(( )
string) /
[/ 0
]0 1
ids2 5
)5 6
{ 	
using 
( 
var 

repository !
=" #
_repositoryFactory$ 6
(6 7
)7 8
)8 9
{ 

repository 
. !
DeleteCustomerReviews 0
(0 1
ids1 4
)4 5
;5 6
CommitChanges 
( 

repository (
)( )
;) *
} 
} 	
public 
CustomerReview 
[ 
] 
GetReviewByIds  .
(. /
string/ 5
[5 6
]6 7
ids8 ;
); <
{   	
using!! 
(!! 
var!! 

repository!! !
=!!" #
_repositoryFactory!!$ 6
(!!6 7
)!!7 8
)!!8 9
{"" 
return## 

repository## !
.##! "
GetReviewByIds##" 0
(##0 1
ids##1 4
)##4 5
.##5 6
Select##6 <
(##< =
x##= >
=>##? A
x##B C
.##C D
ToModel##D K
(##K L
AbstractTypeFactory##L _
<##_ `
CustomerReview##` n
>##n o
.##o p
TryCreateInstance	##p Å
(
##Å Ç
)
##Ç É
)
##É Ñ
)
##Ñ Ö
.
##Ö Ü
ToArray
##Ü ç
(
##ç é
)
##é è
;
##è ê
}$$ 
}%% 	
public'' 
void'' 
SaveCustomerReviews'' '
(''' (
CustomerReview''( 6
[''6 7
]''7 8
items''9 >
)''> ?
{(( 	
if)) 
()) 
items)) 
==)) 
null)) 
))) 
throw** 
new** !
ArgumentNullException** /
(**/ 0
nameof**0 6
(**6 7
items**7 <
)**< =
)**= >
;**> ?
var,, 
pkMap,, 
=,, 
new,, "
PrimaryKeyResolvingMap,, 2
(,,2 3
),,3 4
;,,4 5
using-- 
(-- 
var-- 

repository-- !
=--" #
_repositoryFactory--$ 6
(--6 7
)--7 8
)--8 9
{.. 
using// 
(// 
var// 
changeTracker// (
=//) *
GetChangeTracker//+ ;
(//; <

repository//< F
)//F G
)//G H
{00 
var11  
alreadyExistEntities11 ,
=11- .

repository11/ 9
.119 :
GetReviewByIds11: H
(11H I
items11I N
.11N O
Where11O T
(11T U
m11U V
=>11W Y
!11Z [
m11[ \
.11\ ]
IsTransient11] h
(11h i
)11i j
)11j k
.11k l
Select11l r
(11r s
x11s t
=>11u w
x11x y
.11y z
Id11z |
)11| }
.11} ~
ToArray	11~ Ö
(
11Ö Ü
)
11Ü á
)
11á à
;
11à â
foreach22 
(22 
var22  
devirativeContract22! 3
in224 6
items227 <
)22< =
{33 
var44 
sourceEntity44 (
=44) *
AbstractTypeFactory44+ >
<44> ? 
CustomerReviewEntity44? S
>44S T
.44T U
TryCreateInstance44U f
(44f g
)44g h
.44h i
	FromModel44i r
(44r s
devirativeContract	44s Ö
,
44Ö Ü
pkMap
44á å
)
44å ç
;
44ç é
var55 
targetEntuty55 (
=55) * 
alreadyExistEntities55+ ?
.55? @
FirstOrDefault55@ N
(55N O
x55O P
=>55Q S
x55T U
.55U V
Id55V X
==55Y [
sourceEntity55\ h
.55h i
Id55i k
)55k l
;55l m
if66 
(66 
targetEntuty66 (
!=66) +
null66, 0
)660 1
{77 
changeTracker88 )
.88) *
Attach88* 0
(880 1
targetEntuty881 =
)88= >
;88> ?
sourceEntity99 (
.99( )
Patch99) .
(99. /
targetEntuty99/ ;
)99; <
;99< =
}:: 
else;; 
{<< 

repository== &
.==& '
Add==' *
(==* +
sourceEntity==+ 7
)==7 8
;==8 9
}>> 
}?? 
CommitChanges@@ !
(@@! "

repository@@" ,
)@@, -
;@@- .
pkMapAA 
.AA 
ResolvePrimaryKeysAA ,
(AA, -
)AA- .
;AA. /
}BB 
}CC 
}DD 	
publicEE 
voidEE !
DeleteCustomerReviewsEE )
(EE) *
stringEE* 0
[EE0 1
]EE1 2
idsEE3 6
)EE6 7
{FF 	
usingGG 
(GG 
varGG 

repositoryGG !
=GG" #
_repositoryFactoryGG$ 6
(GG6 7
)GG7 8
)GG8 9
{HH 

repositoryII 
.II !
DeleteCustomerReviewsII 0
(II0 1
idsII1 4
)II4 5
;II5 6
CommitChangesJJ 
(JJ 

repositoryJJ (
)JJ( )
;JJ) *
}KK 
}LL 	
publicMM 
CustomerReviewVoteMM !
[MM! "
]MM" #
GetVoteByIdsMM$ 0
(MM0 1
stringMM1 7
[MM7 8
]MM8 9
idsMM: =
)MM= >
{NN 	
usingOO 
(OO 
varOO 

repositoryOO !
=OO" #
_repositoryFactoryOO$ 6
(OO6 7
)OO7 8
)OO8 9
{PP 
returnQQ 

repositoryQQ !
.QQ! "
GetVoteByIdsQQ" .
(QQ. /
idsQQ/ 2
)QQ2 3
.QQ3 4
SelectQQ4 :
(QQ: ;
xQQ; <
=>QQ= ?
xQQ@ A
.QQA B
ToModelQQB I
(QQI J
AbstractTypeFactoryQQJ ]
<QQ] ^
CustomerReviewVoteQQ^ p
>QQp q
.QQq r
TryCreateInstance	QQr É
(
QQÉ Ñ
)
QQÑ Ö
)
QQÖ Ü
)
QQÜ á
.
QQá à
ToArray
QQà è
(
QQè ê
)
QQê ë
;
QQë í
}RR 
}SS 	
publicUU 
voidUU #
SaveCustomerReviewVotesUU +
(UU+ ,
CustomerReviewVoteUU, >
[UU> ?
]UU? @
itemsUUA F
)UUF G
{VV 	
ifWW 
(WW 
itemsWW 
==WW 
nullWW 
)WW 
throwXX 
newXX !
ArgumentNullExceptionXX /
(XX/ 0
nameofXX0 6
(XX6 7
itemsXX7 <
)XX< =
)XX= >
;XX> ?
varZZ 
pkMapZZ 
=ZZ 
newZZ "
PrimaryKeyResolvingMapZZ 2
(ZZ2 3
)ZZ3 4
;ZZ4 5
using[[ 
([[ 
var[[ 

repository[[ !
=[[" #
_repositoryFactory[[$ 6
([[6 7
)[[7 8
)[[8 9
{\\ 
using]] 
(]] 
var]] 
changeTracker]] (
=]]) *
GetChangeTracker]]+ ;
(]]; <

repository]]< F
)]]F G
)]]G H
{^^ 
var__  
alreadyExistEntities__ ,
=__- .

repository__/ 9
.__9 :
GetVoteByIds__: F
(__F G
items__G L
.__L M
Where__M R
(__R S
m__S T
=>__U W
!__X Y
m__Y Z
.__Z [
IsTransient__[ f
(__f g
)__g h
)__h i
.__i j
Select__j p
(__p q
x__q r
=>__s u
x__v w
.__w x
Id__x z
)__z {
.__{ |
ToArray	__| É
(
__É Ñ
)
__Ñ Ö
)
__Ö Ü
;
__Ü á
foreach`` 
(`` 
var``  
devirativeContract``! 3
in``4 6
items``7 <
)``< =
{aa 
varbb 
sourceEntitybb (
=bb) *
AbstractTypeFactorybb+ >
<bb> ?$
CustomerReviewVoteEntitybb? W
>bbW X
.bbX Y
TryCreateInstancebbY j
(bbj k
)bbk l
.bbl m
	FromModelbbm v
(bbv w
devirativeContract	bbw â
,
bbâ ä
pkMap
bbã ê
)
bbê ë
;
bbë í
varcc 
targetEntutycc (
=cc) * 
alreadyExistEntitiescc+ ?
.cc? @
FirstOrDefaultcc@ N
(ccN O
xccO P
=>ccQ S
xccT U
.ccU V
IdccV X
==ccY [
sourceEntitycc\ h
.cch i
Idcci k
)cck l
;ccl m
ifdd 
(dd 
targetEntutydd (
!=dd) +
nulldd, 0
)dd0 1
{ee 
changeTrackerff )
.ff) *
Attachff* 0
(ff0 1
targetEntutyff1 =
)ff= >
;ff> ?
sourceEntitygg (
.gg( )
Patchgg) .
(gg. /
targetEntutygg/ ;
)gg; <
;gg< =
}hh 
elseii 
{jj 

repositorykk &
.kk& '
Addkk' *
(kk* +
sourceEntitykk+ 7
)kk7 8
;kk8 9
}ll 
}mm 
varoo 
	reveiwIdsoo !
=oo" #
itemsoo$ )
.oo) *
Selectoo* 0
(oo0 1
xoo1 2
=>oo3 5
xoo6 7
.oo7 8
CustomerReviewIdoo8 H
)ooH I
.ooI J
ToArrayooJ Q
(ooQ R
)ooR S
;ooS T*
UpdateCustomerReviewVotesCountpp 2
(pp2 3

repositorypp3 =
,pp= >
	reveiwIdspp? H
)ppH I
;ppI J
CommitChangesrr !
(rr! "

repositoryrr" ,
)rr, -
;rr- .
pkMapss 
.ss 
ResolvePrimaryKeysss ,
(ss, -
)ss- .
;ss. /
}tt 
}uu 
}ww 	
publicyy 
voidyy *
UpdateCustomerReviewVotesCountyy 2
(yy2 3%
ICustomerReviewRepositoryyy3 L

repositoryyyM W
,yyW X
stringyyY _
[yy_ `
]yy` a
	reviewIdsyyb k
)yyk l
{zz 	
var{{ 
query{{ 
={{ 

repository{{ &
.{{& '
GetReviewByIds{{' 5
({{5 6
	reviewIds{{6 ?
){{? @
;{{@ A
foreach}} 
(}} 
var}} 
item}} #
in}}$ &
query}}' ,
)}}, -
{~~ 
item 
. 
HelpfullVotesCount +
=, -
item. 2
.2 3
CustomerReviewVotes3 F
.F G
CountG L
(L M
xM N
=>O Q
(R S
xS T
.T U

ReviewRateU _
==` b
VoteRatec k
.k l
Helpfulll t
)t u
&&v x
(y z
xz {
.{ |
CustomerReviewId	| å
==
ç è
item
ê î
.
î ï
Id
ï ó
)
ó ò
)
ò ô
;
ô ö
item
ÄÄ 
.
ÄÄ 
UselessVotesCount
ÄÄ *
=
ÄÄ+ ,
item
ÄÄ- 1
.
ÄÄ1 2!
CustomerReviewVotes
ÄÄ2 E
.
ÄÄE F
Count
ÄÄF K
(
ÄÄK L
x
ÄÄL M
=>
ÄÄN P
(
ÄÄQ R
x
ÄÄR S
.
ÄÄS T

ReviewRate
ÄÄT ^
==
ÄÄ_ a
VoteRate
ÄÄb j
.
ÄÄj k
Useless
ÄÄk r
)
ÄÄr s
&&
ÄÄt v
(
ÄÄw x
x
ÄÄx y
.
ÄÄy z
CustomerReviewIdÄÄz ä
==ÄÄã ç
itemÄÄé í
.ÄÄí ì
IdÄÄì ï
)ÄÄï ñ
)ÄÄñ ó
;ÄÄó ò
item
ÅÅ 
.
ÅÅ 
TotalVotesCount
ÅÅ (
=
ÅÅ) *
item
ÅÅ+ /
.
ÅÅ/ 0!
CustomerReviewVotes
ÅÅ0 C
.
ÅÅC D
Count
ÅÅD I
(
ÅÅI J
x
ÅÅJ K
=>
ÅÅL N
x
ÅÅO P
.
ÅÅP Q
CustomerReviewId
ÅÅQ a
==
ÅÅb d
item
ÅÅe i
.
ÅÅi j
Id
ÅÅj l
)
ÅÅl m
;
ÅÅm n
}
ÇÇ 
}
ÉÉ 	
public
ÖÖ 
void
ÖÖ '
DeleteCustomerReviewVotes
ÖÖ -
(
ÖÖ- .
string
ÖÖ. 4
[
ÖÖ4 5
]
ÖÖ5 6
ids
ÖÖ7 :
)
ÖÖ: ;
{
ÜÜ 	
using
áá 
(
áá 
var
áá 

repository
áá !
=
áá" # 
_repositoryFactory
áá$ 6
(
áá6 7
)
áá7 8
)
áá8 9
{
àà 
var
ää 
	reveiwIds
ää 
=
ää 

repository
ää  *
.
ää* +
GetVoteByIds
ää+ 7
(
ää7 8
ids
ää8 ;
)
ää; <
.
ää< =
Select
ää= C
(
ääC D
x
ääD E
=>
ääF H
x
ääI J
.
ääJ K
CustomerReviewId
ääK [
)
ää[ \
.
ää\ ]
ToArray
ää] d
(
ääd e
)
ääe f
;
ääf g

repository
åå 
.
åå '
DeleteCustomerReviewVotes
åå 4
(
åå4 5
ids
åå5 8
)
åå8 9
;
åå9 :,
UpdateCustomerReviewVotesCount
çç .
(
çç. /

repository
çç/ 9
,
çç9 :
	reveiwIds
çç; D
)
ççD E
;
ççE F
CommitChanges
éé 
(
éé 

repository
éé (
)
éé( )
;
éé) *
}
èè 
}
êê 	
}
ëë 
}íí 