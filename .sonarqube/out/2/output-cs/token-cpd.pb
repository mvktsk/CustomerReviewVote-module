Ä>
sD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Web\Controllers\Api\customerReviewVotes.WebController.cs
	namespace 	
CustomerReviewVotes
 
. 
Web !
.! "
Controllers" -
.- .
Api. 1
{ 
[ 
RoutePrefix 
( 
$str %
)% &
]& '
public 

class #
ManagedModuleController (
:) *
ApiController+ 8
{ 
private 
readonly (
ICustomerReviewSearchService 5(
_customerReviewSearchService6 R
;R S
private 
readonly "
ICustomerReviewService /"
_customerReviewService0 F
;F G
public #
ManagedModuleController &
(& '
)' (
{ 	
} 	
public #
ManagedModuleController &
(& '(
ICustomerReviewSearchService' C'
customerReviewSearchServiceD _
,_ `"
ICustomerReviewServiceb x"
customerReviewService	y é
)
é è
{ 	(
_customerReviewSearchService (
=) *'
customerReviewSearchService+ F
;F G"
_customerReviewService "
=# $!
customerReviewService% :
;: ;
} 	
["" 	
HttpPost""	 
]"" 
[## 	
Route##	 
(## 
$str## 
)## 
]## 
[$$ 	
ResponseType$$	 
($$ 
typeof$$ 
($$ 
GenericSearchResult$$ 0
<$$0 1
CustomerReview$$1 ?
>$$? @
)$$@ A
)$$A B
]$$B C
[%% 	
CheckPermission%%	 
(%% 

Permission%% #
=%%$ %!
PredefinedPermissions%%& ;
.%%; <
CustomerReviewRead%%< N
)%%N O
]%%O P
public&& 
IHttpActionResult&&  !
SearchCustomerReviews&&! 6
(&&6 7(
CustomerReviewSearchCriteria&&7 S
criteria&&T \
)&&\ ]
{'' 	
var(( 
result(( 
=(( (
_customerReviewSearchService(( 5
.((5 6!
SearchCustomerReviews((6 K
(((K L
criteria((L T
)((T U
;((U V
return)) 
Ok)) 
()) 
result)) 
))) 
;)) 
}** 	
[11 	
HttpPost11	 
]11 
[22 	
Route22	 
(22 
$str22 
)22 
]22 
[33 	
ResponseType33	 
(33 
typeof33 
(33 
void33 !
)33! "
)33" #
]33# $
[44 	
CheckPermission44	 
(44 

Permission44 #
=44$ %!
PredefinedPermissions44& ;
.44; < 
CustomerReviewUpdate44< P
)44P Q
]44Q R
public55 
IHttpActionResult55  
Update55! '
(55' (
CustomerReview55( 6
[556 7
]557 8
customerReviews559 H
)55H I
{66 	"
_customerReviewService77 "
.77" #
SaveCustomerReviews77# 6
(776 7
customerReviews777 F
)77F G
;77G H
return88 

StatusCode88 
(88 
HttpStatusCode88 ,
.88, -
	NoContent88- 6
)886 7
;887 8
}99 	
[@@ 	

HttpDelete@@	 
]@@ 
[AA 	
RouteAA	 
(AA 
$strAA 
)AA 
]AA 
[BB 	
ResponseTypeBB	 
(BB 
typeofBB 
(BB 
voidBB !
)BB! "
)BB" #
]BB# $
[CC 	
CheckPermissionCC	 
(CC 

PermissionCC #
=CC$ %!
PredefinedPermissionsCC& ;
.CC; < 
CustomerReviewDeleteCC< P
)CCP Q
]CCQ R
publicDD 
IHttpActionResultDD  
DeleteDD! '
(DD' (
[DD( )
FromUriDD) 0
]DD0 1
stringDD2 8
[DD8 9
]DD9 :
idsDD; >
)DD> ?
{EE 	"
_customerReviewServiceFF "
.FF" #!
DeleteCustomerReviewsFF# 8
(FF8 9
idsFF9 <
)FF< =
;FF= >
returnGG 

StatusCodeGG 
(GG 
HttpStatusCodeGG ,
.GG, -
	NoContentGG- 6
)GG6 7
;GG7 8
}HH 	
[OO 	
HttpPostOO	 
]OO 
[PP 	
RoutePP	 
(PP 
$strPP 
)PP 
]PP 
[QQ 	
ResponseTypeQQ	 
(QQ 
typeofQQ 
(QQ 
GenericSearchResultQQ 0
<QQ0 1
CustomerReviewVoteQQ1 C
>QQC D
)QQD E
)QQE F
]QQF G
[RR 	
CheckPermissionRR	 
(RR 

PermissionRR #
=RR$ %!
PredefinedPermissionsRR& ;
.RR; <
CustomerReviewReadRR< N
)RRN O
]RRO P
publicSS 
IHttpActionResultSS  %
SearchCustomerReviewVotesSS! :
(SS: ;,
 CustomerReviewVoteSearchCriteriaSS; [
criteriaSS\ d
)SSd e
{TT 	
varUU 
resultUU 
=UU (
_customerReviewSearchServiceUU 5
.UU5 6%
SearchCustomerReviewVotesUU6 O
(UUO P
criteriaUUP X
)UUX Y
;UUY Z
returnVV 
OkVV 
(VV 
resultVV 
)VV 
;VV 
}WW 	
[^^ 	
HttpPost^^	 
]^^ 
[__ 	
Route__	 
(__ 
$str__ 
)__ 
]__ 
[`` 	
ResponseType``	 
(`` 
typeof`` 
(`` 
void`` !
)``! "
)``" #
]``# $
[aa 	
CheckPermissionaa	 
(aa 

Permissionaa #
=aa$ %!
PredefinedPermissionsaa& ;
.aa; < 
CustomerReviewUpdateaa< P
)aaP Q
]aaQ R
publicbb 
IHttpActionResultbb  
UpdateVotesbb! ,
(bb, -
CustomerReviewVotebb- ?
[bb? @
]bb@ A
customerReviewVotesbbB U
)bbU V
{cc 	"
_customerReviewServicedd "
.dd" ##
SaveCustomerReviewVotesdd# :
(dd: ;
customerReviewVotesdd; N
)ddN O
;ddO P
returnee 

StatusCodeee 
(ee 
HttpStatusCodeee ,
.ee, -
	NoContentee- 6
)ee6 7
;ee7 8
}ff 	
[mm 	

HttpDeletemm	 
]mm 
[nn 	
Routenn	 
(nn 
$strnn 
)nn 
]nn 
[oo 	
ResponseTypeoo	 
(oo 
typeofoo 
(oo 
voidoo !
)oo! "
)oo" #
]oo# $
[pp 	
CheckPermissionpp	 
(pp 

Permissionpp #
=pp$ %!
PredefinedPermissionspp& ;
.pp; < 
CustomerReviewDeletepp< P
)ppP Q
]ppQ R
publicqq 
IHttpActionResultqq  
DeleteVotesqq! ,
(qq, -
[qq- .
FromUriqq. 5
]qq5 6
stringqq7 =
[qq= >
]qq> ?
idsqq@ C
)qqC D
{rr 	"
_customerReviewServicess "
.ss" #%
DeleteCustomerReviewVotesss# <
(ss< =
idsss= @
)ss@ A
;ssA B
returntt 

StatusCodett 
(tt 
HttpStatusCodett ,
.tt, -
	NoContenttt- 6
)tt6 7
;tt7 8
}uu 	
}vv 
}ww ´&
HD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Web\Module.cs
	namespace 	
CustomerReviewVotes
 
. 
Web !
{ 
public 

class 
Module 
: 

ModuleBase $
{ 
private 
readonly 
string 
_connectionString  1
=2 3
ConfigurationHelper4 G
.G H$
GetConnectionStringValueH `
(` a
$str	a à
)
à â
??
ä å!
ConfigurationHelper
ç †
.
† °&
GetConnectionStringValue
° π
(
π ∫
$str
∫ …
)
…  
;
  À
private 
readonly 
IUnityContainer (

_container) 3
;3 4
public 
Module 
( 
IUnityContainer %
	container& /
)/ 0
{ 	

_container 
= 
	container "
;" #
} 	
public 
override 
void 
SetupDatabase *
(* +
)+ ,
{ 	
using 
( 
var 
db 
= 
new $
CustomerReviewRepository  8
(8 9
_connectionString9 J
,J K

_containerL V
.V W
ResolveW ^
<^ _ 
AuditableInterceptor_ s
>s t
(t u
)u v
)v w
)w x
{ 
var 
initializer 
=  !
new" %$
SetupDatabaseInitializer& >
<> ?$
CustomerReviewRepository? W
,W X
DataY ]
.] ^

Migrations^ h
.h i
Configurationi v
>v w
(w x
)x y
;y z
initializer 
. 
InitializeDatabase .
(. /
db/ 1
)1 2
;2 3
}   
}!! 	
public## 
override## 
void## 

Initialize## '
(##' (
)##( )
{$$ 	
base%% 
.%% 

Initialize%% 
(%% 
)%% 
;%% 

_container** 
.** 
RegisterType** #
<**# $%
ICustomerReviewRepository**$ =
>**= >
(**> ?
new**? B
InjectionFactory**C S
(**S T
c**T U
=>**V X
new**Y \$
CustomerReviewRepository**] u
(**u v
_connectionString	**v á
,
**á à
new
**â å2
$EntityPrimaryKeyGeneratorInterceptor
**ç ±
(
**± ≤
)
**≤ ≥
,
**≥ ¥

_container
**µ ø
.
**ø ¿
Resolve
**¿ «
<
**« »"
AuditableInterceptor
**» ‹
>
**‹ ›
(
**› ﬁ
)
**ﬁ ﬂ
)
**ﬂ ‡
)
**‡ ·
)
**· ‚
;
**‚ „

_container++ 
.++ 
RegisterType++ #
<++# $"
ICustomerReviewService++$ :
,++: ;!
CustomerReviewService++< Q
>++Q R
(++R S
)++S T
;++T U

_container,, 
.,, 
RegisterType,, #
<,,# $(
ICustomerReviewSearchService,,$ @
,,,@ A'
CustomerReviewSearchService,,B ]
>,,] ^
(,,^ _
),,_ `
;,,` a
}-- 	
public// 
override// 
void// 
PostInitialize// +
(//+ ,
)//, -
{00 	
base11 
.11 
PostInitialize11 
(11  
)11  !
;11! "
var44 
settingManager44 
=44  

_container44! +
.44+ ,
Resolve44, 3
<443 4
ISettingsManager444 D
>44D E
(44E F
)44F G
;44G H
var55 
storeSettingsNames55 "
=55# $
new55% (
[55( )
]55) *
{55+ ,
$str55- Y
}55Z [
;55[ \
var66 
storeSettings66 
=66 
settingManager66  .
.66. /
GetModuleSettings66/ @
(66@ A
$str66A Z
)66Z [
.66[ \
Where66\ a
(66a b
x66b c
=>66d f
storeSettingsNames66g y
.66y z
Contains	66z Ç
(
66Ç É
x
66É Ñ
.
66Ñ Ö
Name
66Ö â
)
66â ä
)
66ä ã
.
66ã å
ToArray
66å ì
(
66ì î
)
66î ï
;
66ï ñ
settingManager77 
.77 "
RegisterModuleSettings77 1
(771 2
$str772 G
,77G H
storeSettings77I V
)77V W
;77W X
}:: 	
};; 
}<< ê
YD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Web\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str 2
)2 3
]3 4
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
$str 
) 
] 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 4
)4 5
]5 6
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str /
)/ 0
]0 1
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
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *
[$$ 
assembly$$ 	
:$$	 

CLSCompliant$$ 
($$ 
false$$ 
)$$ 
]$$ ¢
`D:\Data\Sources\CustomerReviewVote-module\newManagedModule.Web\Security\PredefinedPermissions.cs
	namespace 	
CustomerReviewVotes
 
. 
Web !
.! "
Security" *
{ 
public 

static 
class !
PredefinedPermissions -
{ 
public 
const 
string 
CustomerReviewRead .
=/ 0
$str1 F
,F G 
CustomerReviewUpdate  
=! "
$str# :
,: ; 
CustomerReviewDelete  
=! "
$str# :
;: ;
} 
}		 