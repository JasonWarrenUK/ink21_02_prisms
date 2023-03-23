# theme: dark
# author: Jason Warren
# title: Prisms

//  Master Switches
    VAR     DebugMode           = false

//  Structure Status
    VAR     O_Open              = true
    VAR     A_Open              = false
    VAR     B_Open              = false
    VAR     C_Open              = false
    VAR     D_Open              = false

//  Act Status    
    VAR     ActNow              = 1
    VAR     Act_Played          = 0
    VAR     Act_Next            = 1
    VAR     Act_Cutoff          = 1

//  Scene Status
    LIST    Year_Level          = X = -2, W, L, O, A, B, C, D
            VAR 1991_Level      = O //A
            VAR 1999_Level      = O //A
            VAR 2019_Level      = O

//  Scene Counts
    VAR     1991_Count          = 0
    VAR     1999_Count          = 0
    VAR     2019_Count          = 0


-> Author_Note


=== Author_Note

    {DebugMode:
        - true:     OKAY SO THIS IS A BAD START TO A GAME. # COMMENT
                    But basically the whole thing is just memories of my Stepdad. I wanted to show him how I understood the past differently as I got older, and also that I know my ADHD made me a properly difficult little shit. # COMMENT
        - false:    This game is deeply confusing, and barely a game. # AUTHOR
                    But I'm presenting it as is.  # AUTHOR
                    If you see it through to the end, there's more context on offer. # AUTHOR
    }

    +   (Go)I hereby agree to proceed with [enthusiasm.]{DebugMode == true:weary resignation and a crippling foreknowledge|caution}.->GoGo # AUTHOR
    
    - (GoGo)
    + (GoGoGo)Start the Game # AUTHOR
        # CLEAR
        -> Hub.Entry

=== Hub
    
    {ActNow == 3: -> Fuck_OutOfTime -> Entry|-> Entry}
    
    = Entry
        These are memories.
        {
            - ActNow > 0 && ActNow <6:
                Memories are imperfect.
                {Act_Played > 1: 
                    But that means memories can be changed. 
                    Deepened.
                } # CORRECTED
            - ActNow == 6:
                Memories can be as fragmented as this game. # CHAOS
            - else: 
                -> Choices
        }
        
        - (Choices) {ActNow: 
            - 1: You lift...
            - 2: Another memory. You lift...
            - 3: If you see this message, the game broke.
            - 4: If you see this message, the game broke. A lot.
            - 5: If you see this message, the game broke. A lot. And I might be dead.
            - 6: Welcome! Pick a memory! Hurry! This whole game is falling apart!
        }

        {
            - ActNow == 6:
                *   [Go to 1991 and play with some brio again.]DOES THIS LOOK LIKE 1999 TO YOU?
                                    -> Entry
            - else:
                +   (1991_O_Go) {O_Open == true}{1991_Level == O}...the curved piece of wooden track[ and stifle a sigh...]
                                    ->Year_1991.Entry
        }

        { 
            - 1999_Level == O:
                + (1999_O_Go)   {1999_Level == O}...your pencil from the paper[ and rub your eyes...]     
                    ->Year_1999.Entry
            - ActNow == 6:
                + (1999_D_Go)   {1999_Level == D} Back to 1999!
                    ->Year_1999.Entry
        }                       
                * (2019_Go)     {2019_Level == O}{ActNow == 6} 2019 beckons...
                    ++  Ooooh, a new year you haven't explored yet!
                    --  LOL obviously not, I haven't written it.
                        -> Entry

                + (Out_of_Road) ->
                                    STORY'S OVER, GO HOME
                                    -> END


=== Year_1991

    TODO    Write Level D
    
    = Entry
        
        ~ 1991_Count++

        -   <> carefully, meticulously following my instructions.
        
        {
            - DebugMode == true:
                +   This is 1991, I'm 6, we're playing with a wooden train track.[] I loved that shit.
                    ->taskmaster
            - else:
                +   It's [time to build the most impressive wooden railway ever conceived.]1991.
                    ->taskmaster
        }
        
        -   
                #CLEAR
        
        +   (taskmaster) When it comes to bedroom rail planning, I am an exacting taskmaster.
                #CLEAR
            
        {
            - DebugMode == true:
                -> Debugger_1991 -> Refine
            - else:
                -> Refine
        }

    = Refine
    
        ~ temp Refinement_1991 = 0

        - (Monstrosity) You {Refinement_1991 > 0:dEfTlY|manage to} avoid {Refinement_1991 > 1:nUdGiNg|destroying} the {Refinement_1991 > 2:tEeTeRiNg|intricate} {Refinement_1991 > 3:mOnStRoSiTy|bridge} I have {Refinement_1991 > 4:sTuBbOrNlY|painstakingly} {Refinement_1991 > 5:bAlAnCeD oN sOmE bOoKS|constructed}.
        
        {DebugMode == true: The idea here was originally that every time a word changed, it would also change colour. Because I definitely had time to figure out CSS as well.} #COMMENT

            ~ Refinement_1991++ 
    
        + (Refine_Step_1991)    {Refinement_1991 <= 6} But actually, now I think about it... [] 
                                    #CLEAR
                                    -> Monstrosity
        + (Refine_Bail_1991)    {Refinement_1991 > 1} {Refinement_1991 <= 6} Something like that, anyway.[]
                                    -> LevelUp
        + (Refine_Full_1991)    {Refinement_1991 == 7}[That's better.]
                                    -> Coda
        
    = Coda
        #CLEAR
        -   I remember knocking over the blocks holding up a bridge with my clumsy hands.
            You didn't complain.
        
        +   [We'd just start building again.] #Past
                -> LevelUp
    
    = LevelUp
        ~ 1991_Level++
        -> Incrementer

=== Year_1999
    
    TODO    Write A
    TODO    Write B
    TODO    Write C
    TODO    Write D
    
    = Entry
        
        ~ 1999_Count++
        
        - (Nice_In) <> and rest your hand on my shoulder
        
        {DebugMode == true: This is 1999, I'm 14, this really happened.} # COMMENT

        + It[ took so long, it would have been easier for you to just do it yourself.]'s 1999, and you have better things to do than supervising my maths coursework.
        
            {
                - DebugMode == true:
                    -> Debugger_1999 -> Refine
                - else:
                    -> Refine
            }
    
    = Refine
    
        ~ temp Refinement_1999 = 0

        { ActNow == 6:
                ~ Refinement_1999 = 9999
         }

        - (Coursework)      {ActNow < 6:But instead, you sat|So yeah, you were sitting} with me for hours
                            {ActNow == 6:<>. And honestly, I've felt bad about that for 20 years. So... sorry, I guess.|<> so I could {Refinement_1999 == 1:pLaUsIbLy pReTeNd|honestly say} it was my work. /*mention dyslexia later*/}

            {Refinement_1999 < 9999: 
                ~ Refinement_1999++
            }
    
        + (Refine_Step_1999)    {Refinement_1999 == 1} Hang on.
                                    #CLEAR
                                    -> Coursework
        + (Refine_Full_1999)    {Refinement_1999 == 2} There we go.
                                    -> Coda
        +                       {Refinement_1999 == 9999} But we know how this bit goes.
                                    -> Coda
        
    = Coda
        #CLEAR
        -   {ActNow == 6: I think we're done here. -> Kill_It}
        -   I could see the relief in your eyes (and mum's) when you sent me to school the next day. #Past
        
        +   When I got there, I [handed it in as soon as I could.]
            -   <>tHrEw iT iN a bIn.
            
        +   Oh well.
        
        -       ~ 1999_Level++ 
                    -> Incrementer
        
        + (Kill_It) Yes let's [draw this scintillating experience to a close.]take this rabid mongrel of a game out back and shoot it.
                -> Fin

=== Incrementer
    
    #CLEAR
    ~ Act_Played++
    ~ Act_Next++
    {
        - Act_Cutoff <= Act_Played: 
            -> ActChange -> Loop
        - else:
            -> Loop
    }
    - (Loop) {
                - DebugMode == true:
                    -> Debugger_Meta -> Hub
                - else:
                    -> Hub
            }


=== ActChange
    
    ~ ActNow++  //Next Act
    ~ Act_Played = 0 //Reset Scenes played to 0
    ~ Act_Next = 1 //Reset next Scene to 1
    {ActNow:
        - 1:
            ~ Act_Cutoff = 1
        - 2:
            ~ Act_Cutoff = 1
        - 3:
            ~ Act_Cutoff = 1
        - 4:
            ~ Act_Cutoff = 1
        - 5:
            ~ Act_Cutoff = 1
        - 6:
            ~ Act_Cutoff = 1
    }   
        ->->

=== Fuck_OutOfTime
    {DebugMode == true: Welp, we're back to the bit where you see my resignation statement. Let's skip all that. -> Fin.EndNow}
    
    +   [Right.]
    -
    +   [Here's the thing.]
    -
    +   [I'm out of time.]
                #CLEAR
    
    -   So I want you to imagine that... 

    +   You've gone back over those little scenes [far too many times.]

    -   <> a good number of times.

    +   And each time,[ it just got more and more goddam pretentious.]

    -   <> I teased a you with a little more insight about what's going on in the scene.

    +   ...

    -   Also there were loads more scenes to explore.

    +   I'm going to jump you forward now.[] From Act 2 to the tail end of Act 6.

    -   The shock twist of the story is that I got diagnosed with ADHD at the age of 32, so now it makes a lot more sense why I did really stupid stuff,

    +   <> right?

    -   I'm going to keep working on this but, for now... 

    +   I am proud to present to you the most ADHD of all gifts: []

    -   An Unfinished One.

        This is for my stepdad. He's awesome.

    +   [NOW LET'S JUMP FORWARD IN TIME TO THE HASTILY CONSTRUCTED ENDING!]
        
        ~ O_Open        = false
        ~ D_Open        = true
        ~ 1999_Level    = D //A
        ~ 1999_Count    = 3
        ~ ActNow        = 6

            {DebugMode == true: -> Debugger_Meta ->}
            -> BTW ->
            ->->

=== BTW
    BTW you're going back to 1999, ok? Remember that.

    + Ok.
        ->->

=== Debugger_Meta
    
    —–– Meta Debugger –––
    Current Act: {ActNow}
    Scenes Played in this Act: {Act_Played}
    –––––––––––––––––––––
    
    + Gotcha.
        # CLEAR
        ->->
    
=== Debugger_1991
        
    ––– 1991 Debugger –––
    Current Scene's Position: {Act_Next} of {Act_Cutoff}

    Current Insight Level of this Scene: {1991_Level}
    ~ 1991_Count--
    Previous Visits to Scene: {1991_Count} 
    ~ 1991_Count++
    This Visit is Number: {1991_Count}
    –––––––––––––––––––––
    
    + Gotcha.
        # CLEAR
        ->->

=== Debugger_1999

    ––– 1999 Debugger –––
    Current Scene's Position: {Act_Next} of {Act_Cutoff}

    Current Insight Level of this Scene: {1999_Level}
    ~ 1999_Count--
    Previous Visits to Scene: {1999_Count} 
    ~ 1999_Count++
    This Visit is Number: {1999_Count}
    –––––––––––––––––––––
    
    + Gotcha
        # CLEAR
        ->->

=== Debugger_2019

    ––– 2019 Debugger –––
    Current Scene's Position: {Act_Next} of {Act_Cutoff}

    Current Insight Level of this Scene: {2019_Level}
    ~ 2019_Count--
    Previous Visits to Scene: {2019_Count} 
    ~ 2019_Count++
    This Visit is Number: {2019_Count}
    –––––––––––––––––––––
    
    + Gotcha.
        # CLEAR
        ->->

=== Fin
    That's genuinely it now. All done.

    If you're interested in seeing how some of the numbers and variables I was using work (LOL), then NEWGAME+ will basically make a load of that shit visible.

    - (EndNow){DebugMode == false:Otherwise, }I suggest you go do something more productive.

    + (NewGamePlus) {DebugMode == false} NEWGAME+
        ~ DebugMode = true
        ~ O_Open              = true
        ~ D_Open              = false
        ~ ActNow              = 1
        ~ Act_Played          = 0
        ~ Act_Next            = 1
        ~ Act_Cutoff          = 1

    
        ~ 1991_Level      = O
        ~ 1999_Level      = O
        ~ 2019_Level      = O

        ~ 1991_Count          = 0
        ~ 1999_Count          = 0
        ~ 2019_Count          = 0
            -> Author_Note

    + [It truly is ]THE END.
        -> END