<h1>Setting up Database</h1>


<h2>Drop Tables...</h2>
<cfquery datasource="kebabdb" >
delete from Sport;
delete from Athlete;
delete from User;
</cfquery>

<h2>Populating Users...</h2>
<cfset user = entityNew("User")>
<cfset user.setFirstName("Jonathan")>
<cfset user.setLastName("Arp")>
<cfset user.setUsername("hacksaw")>
<cfset user.setPassword("wowa!!thiseff0rtIt00ktomaketh!5passwordstr0ngwaswa5tedbecause0fth!sid!otdeveloper")>	
<cfset entitySave(user)>
<cfset ormFlush()>
~


<cfset user = entityNew("User")>
<cfset user.setFirstName("David")>
<cfset user.setLastName("Seidl")>
<cfset user.setUsername("dseidl")>
<cfset user.setPassword("goirish")>	
<cfset entitySave(user)>
<cfset ormFlush()>

~

<cfset sportArray = ["Football", "Soccer", "Tennis", "Baseball", "Foosball", "Hurling"]>

<cfset names =  listToArray("
Gavin Schiro
Jerrold Paneto
Lenny Sutherland
Graham Turlington
Boyce Demuth
Gabriel Pruett
Brain Hutchison
Vicente Stookey
Tobias Jorstad
Filiberto Haycraft
Samual Martello
Alden Roda
Joshua Weedon
Cesar Squier
Freddie Smtih
Columbus Norman
Gus Vanzile
Nathaniel Pritt
Everett Shuffler
Wilmer Deguzman
Enrique Buswell
Coy Lonergan
Reyes Morency
Clark Broad
Bradford Grajeda
Pedro Bartram
Zackary Wimberly
Maynard Haack
Antoine Raya
Daniel Lindley
Willard Mund
Andreas Torpey
Miles Lighty
Sebastian Register
Hassan Arter
Val Woodell
Booker Vandyne
Buck Schimmel
Alex Demeo
Walker Campisi
Herschel Scoby
Benito Haymaker
Brady Kalis
Kieth Speights
Ray Mccranie
Cornell Mckinnon
Rudolf Phu
Eric Goings
Efrain Bolton
Art Barter
", "
")>


<h2>Populating Sports...</h2>
<cfloop array="#sportArray#" index="n">
	<cfset s = entityNew("Sport")>
	<cfset s.setName(n)>
	<cfset entitySave(s)>
	~
	<cfset ormFlush()>
</cfloop>


<cfset sports = entityLoad("Sport")> 
<h2>Populating Athletes...</h2>
<cfloop array="#names#" index="i" >
	<cfset a = entityNew("Athlete" )>
	<cfset a.setFirstName(listFirst(i, " "))>
	<cfset a.setLastName(listLast(i, " "))>
	<cfset randomSport = sports[randRange(1,6)]>
	<cfset a.setSport(randomSport)>
	<cfset entitySave(a)>
		<cfset ormFlush()>
		~
</cfloop>

<h2>Done.</h2>

<p>
	<a href="/hackorama" >Please Continue ==></a>
</p>




 