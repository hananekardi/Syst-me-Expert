

% menu principal

main :- 
nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************                          **********************'),nl,
write('***********  Nom et Prenom : KARDI HANANE  ********************'),nl,
write('*************** Projet Systeme Expert : ***********************'),nl,
write('****************   Master DSBD   ******************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      START      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
write('***************************************************************'),nl,
        write('***   Why do you want to learn programming ?    ***'),nl,
        write('0 -> For my kids'),nl,
        write('1 -> I don t know, just pick one for me '),nl,
  	  write('2 -> just for fun'),nl,
 	  write('3 ->  I am intersted'),nl,
  	  write('4 ->  Improve myself '),nl,
  	  write('5 -> make a money'),nl,
  	  write('6 -> Exit'),nl,

        read(Choix),nl,
        (number(Choix)   % si choix est nombre
        ->
        objectif(Choix)
        ;  write('Invalid value. Please enter a number. : '), % sinon va rapeller main
        main
    ).



objectif(0) :- python,!.
objectif(1) :- python,!.
objectif(2) :- write('Have a brilliant idea or platform in mind ?'),nl,
                              write('0 -> No'),nl,
 				write('1 -> Yes '),nl,
				read(Yes_no),
                              (number(Yes_no)
                              -> idea_platform(Yes_no)
                              ;  write('Invalid value. Please enter a number. : '),
                              objectif(2)
                              ).
        
objectif(3) :- write('Have a brilliant idea or platform in mind ?'),nl,
                              write('0 -> No'),nl,
 				      write('1 -> Yes '),nl,
					read(Yes_no),

                              (number(Yes_no)
                              -> idea_platform(Yes_no)
                              ;  write('Invalid value. Please enter a number. : '),
                              objectif(3)
                              ).

objectif(4) :- write('Have a brilliant idea or platform in mind ?'),nl,
                              write('0 -> No'),nl,
 				      write('1 -> Yes '),nl,
					read(Yes_no),

                              (number(Yes_no)
                              -> idea_platform(Yes_no)
                              ;  write('Invalid value. Please enter a number. : '),
                              objectif(4)
                              ).

objectif(5) :-      		write('For ...'),nl,
                              write('0 -> Get a job'),nl,
 				      write('1 -> I have a startup idea ! '),nl,
					read(Choix),
                              (number(Choix)
                              -> why(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              objectif(5)
                              ).


objectif(6) :-!.


why(0) :-  write('Which platform or field? '),nl,
                              write('0 -> WEB'),nl,
 				      write('1 -> Entreprise '),nl,
 				      write('2 -> Mobile '),nl,
 				      write('3 -> 3D/Gaming '),nl,
                              write('4 -> Doesn t matter,Ijust want $$$'),nl,
 				      write('5 -> I want to work for big tech companies '),nl,
					read(Choix),

                              (number(Choix)
                              -> which_platform(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                               why(0)                              ).

why(1):- idea_platform(1) .	



				

which_platform(0) :- write('Web for what ?'),nl,
                              write('0 -> Front-end(web interface)'),nl,
 				      write('1 -> Back-end("brain" behind a website) '),nl,
					read(Choix),
                               (number(Choix)
                              ->  web(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              which_platform(0)).
which_platform(1) :- which_platform_field(1).
which_platform(2) :- which_platform_field(2).
which_platform(3) :- cplusplus.
which_platform(4) :- java.
which_platform(5) :- write('chose one this options :'),nl,
                              write('0 -> facebook'),nl,
 				      write('1 -> microsoft '),nl,
                              write('2 -> google'),nl,
 				      write('3 -> apple '),nl,
					read(Choix),
                               (number(Choix)
                              ->  webig_tech_companies_job(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              which_platform(5)).




web(0):-javaScript.
web(1) :- write('I want to work for  ?'),nl,
                              write('0 -> Startup'),nl,
 				      write('1 -> Corporate '),nl,
					read(Choix),
                               (number(Choix)
                              ->  web_job(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              web(1))
					.

web_job(0):-appWeb_Info(0) .
web_job(1):-which_platform_field(1) .


which_platform(1) :- which_platform_field(1).
which_platform(2) :- which_platform_field(2).
which_platform(3) :- cplusplus.
which_platform(4) :- java.
which_platform(5) :- write('chose one this options :'),nl,
                              write('0 -> facebook'),nl,
 				      write('1 -> microsoft '),nl,
                              write('2 -> google'),nl,
 				      write('3 -> apple '),nl,
					read(Choix),
                               (number(Choix)
                              ->  webig_tech_companies_job(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              which_platform(5)     
                         ).


webig_tech_companies_job(0):-python.
webig_tech_companies_job(1):-cSharp.
webig_tech_companies_job(2):-python.
webig_tech_companies_job(3):-c.




idea_platform(0) :-           write('Nope  Just want to get started '),nl,
					write('I prefer to learn things ... '),nl,
                              write('0 -> The best way'),nl,
 				      write('1 -> The easy way '),nl,
 				      write('2 -> The slightly harder way '),nl,
 				      write('3 -> The really hard way(but easier to pick up other languages in the future),'),nl,
					read(Choix),
                              (number(Choix)
                              -> way_learn(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                               idea_platform(0) 
                              )
					.

idea_platform(1) :-  write('Which platform or field? '),nl,
                              write('0 -> WEB'),nl,
 				      write('1 -> Entreprise '),nl,
 				      write('2 -> Mobile '),nl,
 				      write('3 -> 3D/Gaming '),nl,
					read(Choix),



                               (number(Choix)
                              -> which_platform_field(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                               idea_platform(1)
                              )
					
					.
					

which_platform_field(3) :- cplusplus.

which_platform_field(2) :-  write('Which OS ?'),nl,
                            write('0 -> IOS)'),nl,
 				    write('1 -> Android'),nl,
			          read(Choix),

                               (number(Choix)
                              ->  which_os(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                               which_platform_field(2)
                              )
					.

which_os(0):-c.
which_os(1):-java.


which_platform_field(1) :-  write('What do you think about microsoft ?'),nl,
                              write('0 -> I m a fan :)'),nl,
 				      write('1 -> Not Bad :|'),nl,
 				      write('2 -> Suck  :('),nl,
					read(Choix),
                               (number(Choix)
                              ->  interested_by_microsoft(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                               which_platform_field(1) 
                              )
					.

interested_by_microsoft(0):- cSharp.
interested_by_microsoft(1):- java.
interested_by_microsoft(2):- java.


which_platform_field(0) :-  write('Does your web app provides info in real-time, like twitter ?'),nl,
                              write('0 -> No'),nl,
 				      write('1 -> Yes '),nl,
					read(Yes_no),

                               (number(Yes_no)
                              -> appWeb_Info(Yes_no)
                              ;  write('Invalid value. Please enter a number. : '),
                               which_platform_field(0)
                              )
					.

appWeb_Info(0) :-  write('Do you want to try something new with huge potential, but less mature ?'),nl,
                              write('0 -> No'),nl,
 				      write('1 -> Yes '),nl,
 				      write('2 -> Not sure '),nl,
					read(Yes_no_notsure),

                               (number(Yes_no_notsure)
                              -> 	try_something_new(Yes_no_notsure)
                              ;  write('Invalid value. Please enter a number. : '),
                               appWeb_Info(0)
                              )
				.


appWeb_Info(1) :- javaScript. 



try_something_new(0) :-       write('Which one is your favourite toy'),nl,
                              write('0 -> Lego'),nl,
 				      write('1 -> Play-Doh '),nl,
 				      write('2 -> I have an old & ugly toy , but i love it so much ! '),nl,
					read(Choix),


                               (number(Choix)
                              -> 	favourite_toy(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              try_something_new(0)     
                         )
					.

try_something_new(1) :- javaScript .
try_something_new(2) :-  try_something_new(0).

favourite_toy(0):- python.
favourite_toy(1):- ruby.
favourite_toy(2):- php.






way_learn(0):- python.
way_learn(1):- python.
way_learn(2):-  write('Auto or Manual '),nl,
                              write('0 -> Auto'),nl,
 				      write('1 -> Manual '),nl,
					read(Choix),



                               (number(Choix)
                              -> 	auto_Manual(Choix)
                              ;  write('Invalid value. Please enter a number. : '),
                              way_learn(2)    
                         )
					.
way_learn(3):- cplusplus.



auto_Manual(0):-  java.
auto_Manual(1):-  c.

message :-  write('Le langage de programmation le plus adapte a votre objectif est : ').

python :-    message, 
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      Python      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').

java :-      message,    
nl,        
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      Java      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').


c :-         message, 
nl,          
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************       C      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').


cplusplus :- message,
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      C++      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').

javaScript :-message,
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      JavaScript      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').

ruby :-      message,
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      RUBY      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').

php :-       message,
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      PHP      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').

cSharp :-    message,
nl,
write('***************************************************************'),nl,
write('********************             ******************************'),nl,
write('******************      C#      ****************************'),nl,
write('********************             ******************************'),nl,
write('***************************************************************').
