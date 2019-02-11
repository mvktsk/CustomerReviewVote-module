…
WD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Model\CustomerReview.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Model# (
{ 
public 

class 
CustomerReview 
:  !
AuditableEntity" 1
{ 
public 
string 
AuthorNickname $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
Content 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
bool		 
IsActive		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public

 
string

 
	ProductId

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
VoteRate 
? 
UserReviewRate '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
public 
int 
HelpfullVotesCount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
int 
UselessVotesCount $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
TotalVotesCount "
{# $
get% (
;( )
set* -
;- .
}/ 0
} 
} ™
eD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Model\CustomerReviewSearchCriteria.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Model# (
{ 
public 

class (
CustomerReviewSearchCriteria -
:. /
SearchCriteriaBase0 B
{ 
public 
string 
[ 
] 

ProductIds "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
string 
AuthorId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
? 
IsActive 
{ 
get  #
;# $
set% (
;( )
}* +
}		 
}

 á
[D:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Model\CustomerReviewVote.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Model# (
{ 
public 

class 
CustomerReviewVote #
:$ %
AuditableEntity& 5
{ 
public 
string 
AuthorId 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
VoteRate		 

ReviewRate		 "
{		# $
get		% (
;		( )
set		* -
;		- .
}		/ 0
public

 
string

 
CustomerReviewId

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
} 
} ã
iD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Model\CustomerReviewVoteSearchCriteria.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Model# (
{ 
public 

class ,
 CustomerReviewVoteSearchCriteria 1
:2 3
SearchCriteriaBase4 F
{ 
public 
string 
[ 
] 
CustomerReviewIds )
{* +
get, /
;/ 0
set1 4
;4 5
}6 7
} 
} Ë
QD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Model\VoteRate.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Model# (
{ 
public 

enum 
VoteRate 
{ 
Helpfull 
= 
$num 
, 
Useless 
= 
- 
$num 
} 
}		 …
ZD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Properties\AssemblyInfo.cs
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
]$$) *Õ
hD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Services\ICustomerReviewSearchService.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Services# +
{ 
public 

	interface (
ICustomerReviewSearchService 1
{ 
GenericSearchResult 
< 
CustomerReview *
>* +!
SearchCustomerReviews, A
(A B(
CustomerReviewSearchCriteriaB ^
criteria_ g
)g h
;h i
GenericSearchResult		 
<		 
CustomerReviewVote		 .
>		. /%
SearchCustomerReviewVotes		0 I
(		I J,
 CustomerReviewVoteSearchCriteria		J j
criteria		k s
)		s t
;		t u
}

 
} ¥
bD:\Data\Sources\CustomerReviewVote-module\newManagedModule.Core\Services\ICustomerReviewService.cs
	namespace 	
CustomerReviewVotes
 
. 
Core "
." #
Services# +
{ 
public 

	interface "
ICustomerReviewService +
{ 
CustomerReview 
[ 
] 
GetReviewByIds '
(' (
string( .
[. /
]/ 0
ids1 4
)4 5
;5 6
void		 
SaveCustomerReviews		  
(		  !
CustomerReview		! /
[		/ 0
]		0 1
items		2 7
)		7 8
;		8 9
void !
DeleteCustomerReviews "
(" #
string# )
[) *
]* +
ids, /
)/ 0
;0 1
CustomerReviewVote 
[ 
] 
GetVoteByIds )
() *
string* 0
[0 1
]1 2
ids3 6
)6 7
;7 8
void #
SaveCustomerReviewVotes $
($ %
CustomerReviewVote% 7
[7 8
]8 9
items: ?
)? @
;@ A
void %
DeleteCustomerReviewVotes &
(& '
string' -
[- .
]. /
ids0 3
)3 4
;4 5
} 
} 