/*
    Project 01
    
    Requirements (for 15 base points)
    - Create an interactive fiction story with at least 8 knots 
    - Create at least one major choice that the player can make
    - Reflect that choice back to the player
    - Include at least one loop
    
    To get a full 20 points, expand upon the game in the following ways
    [+2] Include more than eight passages
    [+1] Allow the player to pick up items and change the state of the game if certain items are in the inventory. Acknowledge if a player does or does not have a certain item
    [+1] Give the player statistics, and allow them to upgrade once or twice. Gate certain options based on statistics (high or low. Maybe a weak person can only do things a strong person can't, and vice versa)
    [+1] Keep track of visited passages and only display the description when visiting for the first time (or requested)
    
    Make sure to list the items you changed for points in the Readme.md. I cannot guess your intentions!

*/
VAR time = 0 
VAR strength = 0
VAR swag = 3 
VAR employee = 0
VAR circles = 0
VAR lady = 0
VAR carnage = 0
VAR ladyay = 0
VAR key = 0 
VAR scryay = 0
VAR mikeyay = 0
->underground1
===underground1===
you awake from your 1000 year long dream of hunger, to voices and sounds youve never heard before. your mouth is dry, your stomach is empty and you hunger for one thing and one thing only. 
blood.
your once sun lit resting spot is now pitch black, luckily for you your night vision allows you to see anyway.
your walls are adorned with delicate stone carvings detailing the havoc you wrecked on this place thousands of years ago. you were once a very dangerous creature but now you hardly have the strength to fly. 
the carved limestone door that leads to the outside work sits before you 
+[look around] -> underground2

===underground2===
{strength > 1: you stand in what once was your tomb| you stand in the damp room}

+[observe the door] -> door
+{strength == 0} [observe the carvings.]-> carve
+{strength > 0} [observe the carvings] -> ncarve
* {strength == 1} [do some push ups] -> pushup
+ [wait why am i here again?] -> underground1

==pushup==
 ~ strength = strength + 1 
you muster up the strength to do a few pushups on the stone cold floor, you feel slightly stronger 
* [nice] -> underground2
==ncarve==
youve already looked over these.

+ [boooring] -> underground2
==door==
the door is adorned with tiny red gemstones. 
+ [open the door] -> opend
+[back] ->underground2

==opend==

what once was an opening that led outside is now burried in dirt. 

+{strength == 2} [dig!] -> outdoors

+ [go back] -> underground2
===carve===
 ~ strength = strength + 1
each wall around the casket you rose from is filled with some kind of carving, showing both the chaos you brought to the regal and towsfolk alike, and also how they thought they had killed you. this was supposed to be your final resting place. You find the towns name etched into a small sign...
Tivinad
it rings a few bells, you are filled with a bit of strength remembring the beast you used to be.
+ [go back] -> underground2



===outdoors===
your long finger nails prove to be great shovels on your ascent to the area above. once you make it to the top you find yourself under a tree infront of...

Jerome Arizona strip mall?

this isnt Tivinad...

you look around, it is currently { advance_time() }time.
+ [look around] -> outdoor2

===outdoor2===
it is currently { advance_time() }time.
behind you is a nighclub, that would be an amazing place to satiate yourself. {time <= 4: but it is currently day, so the establisment is closed| }

before you are three stores. 
one for garments.
one for apperances.
one for entertainment.
there is also an alleyway with trashcans at the left end.
{time >=4: its gotten late and now the stores are closed.| }
+ [wait... where am i] -> outdoors
+ {time >= 4} [go to the nightclub] -> nighclub
+ [wait] -> outdoor2
+ {time <= 4} [go to the entertainment establishment] -> entertain
+ {time <= 4} [go to the appearance establishment] -> app
+ {time <= 4} [go to the garment establisment] -> gar
+ {time <= 4} [go to the alleyway] -> allyday
+ {time >= 4} [go to the alley] -> allyn

===entertain===
inside the entertainment establisment sits tens of glowing boxes, all about shoulder height (you are very tall) upon inspection you find that each glowing box requires a grey circle to function.
you currently have your eyes on two machines, one with a claw, and another titled castlevania. Both require one circle to play.
you have {circles} circles
+ [search for circles] -> search
+ {circles >= 0} [claw game] -> coupon
* {circles >= 0} [castlevania] -> vania
+ [leave] -> outdoor2
==vania==
~ circles = circles - 1
after figuring out the purpose of the "joystick "and buttons" you make your way through a session of the game.

frankly, you find it insulting. 
+ [disgusting] -> entertain
===coupon===
~ circles = circles - 1
the box is filled with tiny spheres, which you attempt to grab with the claw. you are reminded of how you used to pluck townsfolk off the street whilst filying through the air, the game comes to you like second nature. 
once retreived, you fish the ball out of the tiny slot and crack it open. 
inside sits a slip of paper titled "two free sandwiches at Jimmy Johns" 
{employee > 0: you think about how much your alley friend would enjoy this. | you have no idea what that is}

+[go back] -> entertain

==search==
~ circles = circles + 1
you get a couple strange looks while crawling around on the floor, but you manage to find a single circle.
+[go back] -> entertain
===app===
 {lady == 0: before you can even comprehend the place youve walked into youre being smothered by an older women with massive hair. "well look at YOU!!" she pulls you down by your garnments and pinches your cheeks. "well arent you handsome!! I've got just the thing for you." she begins to drag you away by your thin fingers | the lights hum within the establishment. A bowl of sweets sits at the reception.}
 {ladyay == 1: the woman waves at you, "hello sweetheart!! would you like some candy?| }
 *[uh oh...] -> hair

* {ladyay == 1} [take some candy] -> candy
+ {ladyay == 1} [eat her] -> eathair
+ [go back] -> outdoor2

==candy==
~ strength = strength + 1
you take a wrapped strawberry morsel and remove the paper from it. the woman watches as you place it in your mouth.
its delicious!
they never had anything like this in Tinivad, and if they did your vampire parents definitely never let you have any.
the woman waves to you as you leave, and you try your best to give one back thats not too awkward.

+[leave] -> outdoor2
===hair===
~ swag = swag + 2
the woman drags you to a seat with a basin behind it. she then promptly rinces your head with warm water. Youre suprisingly accepting of her actions. The water feels nice on your skull, you havent done anything like this in ages.
she babbles on about how no one comes into her store anymore, and how delighted she is to see someone. She even notes how you look similar to her son who she never sees anymore, same gangly arms and everything. you never get the chance to respond as right after shes done with one topic she moves right to another. 

* [eat her] -> eathair
* [let her finish] -> sofreshnsoclean

==sofreshnsoclean==
~ swag = swag + 4
~ lady = lady + 1
~ ladyay = ladyay + 1 
the woman dries, cuts, and styles your hair before turning you around in your chair.
due to your vampiric nature, you lack a reflection.
The old woman laughs, 
"my eyes arent like they used to be... but im sure you look perfect sweetheart." you can feel it, youre fabulous!
you give her your best attempt at a smile.
* [go back] -> outdoor2
==eathair==
~ ladyay = ladyay - 1
~ lady = lady + 1
~ strength = strength + 10
~ carnage = carnage + 1
you catch the old lady off guard, which isnt particularlly challenging as her reflexes have dulled with age. 
You bite into her neck and watch as the life drains from her skin, turning her to a pale husk.
her body falls to the ground with a hollow thud.
*[leave] -> outdoor2
===gar===
you enter a dim, yellow light lit establisment. There are racks of clothes all over the store, a place like this is somewhat familiar to you. 
{eathim:    | a disheveled man stands post at towards the back,his nametag reads "mike" }

* {strength < 5} [eat him ] -> eatfail
* {strength >= 5} [eat him ] -> eathim
* {keypick} [give his keys back] -> re
+ [leave] -> outdoor2

===re===
~ mikeyay = mikeyay + 1
~ swag = swag + 4
you shuffle up to MIke and drop the keys on the counter. his face lights up.
"thank you!!! thank you so much kind sir!"
he grabs your hand and shakes it. you can almost feel yourself lift from the floor with each shake.
"here! take this!"
he hands you his fanciest gothic looking suit.
"itll be perfect for the nightclub! everyone who works this strip goes their at night, we would love to have you!"
you thank the man, and use one of the dressing rooms to change into the suit, your clothes had definitely seen their better days so the change is welcomed.
You take a major liking to the suit!
mike yawns and goes back to his tired self. 
* [go back] -> outdoor2
==eatfail==
you attempt to pounce on him, but he snaps around and catches you by the neck. He is so much stronger than he looks. 
He manages to drive a pencile through your heart.
"lucky guess...." you think to yourself as your vision fades.

you died!! -> DONE

===eathim===
~ mikeyay = mikeyay - 1 
~ carnage = carnage + 1
~ strength = strength + 10
you wrestle with the man for a while before sinking your teeth into his neck and sucking him of all his blood.
he lies there, motionless.

*[leave] -> outdoor2
===allyday===
~ employee = employee + 1
{employee = 0: an employee taking an unproctored smokebreak jumps at the sight of you before letting out a sigh, realizing you arent his manager. you two talk for a bit, hes clearly a bit high. but the two of you have something in common, hunger. he accidently left his wallet at home, so he asks if you could help him out. He looks rather tasty. | the young shaggy man waves at you}

"so... you got the goods?" he asks rubbing his hands together like a house fly. 
{coupon: you think of the coupon in your pocket}
 * {coupon} [hand him the coupon] -> thank
 + [go back] -> outdoor2
 * [eat him] -> watscr
 
 ==watscr==
 as you attempt to take the young mans arm and bite into it he sticks his hand in your mout,
 "wooooaah sick teeth modificatins dude. totally tubular!!"
 you feel to flustured to try that again.
 * [go back] -> outdoor2
 ==thank==
 ~ scryay = scryay + 1
 ~ strength = strength + 5 
 against your will, the young man takes you to get a sandwich. 
 you have never had one of these "sandwiches" before. They didnt have the in  Tivinad.
 you decide against feasting upon the young man, you feel its only fair now that hes opened your eyes to "Jimmy Johns".
 the young man says he has taken a liking to you {hair:, your hair,| } and your gothic style, he invites you to feast with him again. 
 that is, if you have another coupon.
 
 +[go back] -> outdoor2
 
 
===allyn===
the alley is empty.
{key == 0: but... you see something glint in the moonlight behind a box.| }
* {key == 0} [pick up the key] ->keypick
+ [go back] -> outdoor2
===keypick===
~ key = key + 1
you pick up the key, it has the name "mike" written on it in black ink.


+ [go back] -> outdoor2
{ advance_time() }





==nighclub==
you can hear loud music like youve never heard before outside, your interest is immedietly piqued.
a large man with a nametag reading "bouncer" stares you down
+ {swag >= 8} [may i come in?] -> nightclubsucc
+ {swag <= 8} [may i come in] -> nightno
* {strength >= 15} [feast on the club] -> succfeed
* {strength <= 15} [feast on the club...] ->nofeed

==nightno==
"hell no little bro, to get in here youll need some more swag. We are a well known buisness, cant have folks without the sauce in here. and right now you are lookin like buttered noodles my friend."

+[sigh] -> outdoor2
==nightclubsucc==
youre just swaggy enough to be let into the club.
You dance the night away, people are impressed by your old timey moves. The music is electric, youre so glad you are here to appreciate it.
{ladyay == 1: you see the older woman from earlier, when you lock eyes she runs up to you and gives you a big bear hug, 'Im so happy to see you sweetpea!!" the two of you chat over some bar food for a bit| }

{mikeyay == 1: mike doesnt even notice youre there until you tap him on the shoulder. hes too busy dancing and moving with energy youve never seen before, maybe this is why hes so tired during the day. Once you catch his attention, hr manages to convince you to join him in the middle of the floor. Its a bit scary at first but a vampire like you never backs down from a challenge!| }
{scryay == 1: you see the young man you got a sandwich with, he tracks you down and you play a few rounds of beer pong. you totally suck. But youre still happy to have some fun with a new friend| }

at the end of the night when everyone says their goodbyes, you finally have the strength to become a bat again and fly off. once again read to return to terrorizing this town. But the nore you think about it, the happier youd be rejecting that. 
you had been raised to feed off of humans, to cause them suffering, but now you realize it doesnt have to be that way.

you still fly off into the night, but now youre going to live with the humans. No longer feeling a hunger for blood. -> END
==nofeed==
you sucessfully sneak into the nightclub but you cant be too quick with your feasting, you arent strong enough for a bloodbath like that just yet. You attempt to look normal by ordering a drink. 
The only thing that seems logical for a guy likw you is a bloody marry.
after recieving your order and taking a sip you feel your airways begin swelling. before you know it youre on the ground convulsing and no one is willing to help you.
how were you supposed to know it was garnished with garlic?

you died! -> DONE 
==succfeed== 
you tear your way through that nightclub, sucking the blood from each and every person there,youve never felt so strong. But you also, feel a little tipsy. 
{carnage == 2: you have sucessfully continued the vampire cycle of violence| }
Youve managed to regain your strength enough to fly away just as planned, you stumble out of the nightclub and shift into your bat form.
but as you are flying up into the sky, you begin to black out from all the alcohol. 
This causes you to misjusge a trun and take a sharp left directly itno a power line. Killing you instantly. 
Never drink and fly!!
-> DONE

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 6:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "day"
        
        - time == 1:
            ~ return "day"
        
        - time == 2:
            ~ return "day"
            
        - time == 3:  
            ~ return "day" 
        
        - time == 4: 
        ~ return "night"
        
        - time == 5:
        ~ return "night"
        
        - time == 6:
        ~ return "night"
        
    
    }
    
    
        
    ~ return time
    
    
    
   
