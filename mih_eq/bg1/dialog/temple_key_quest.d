BEGIN "mh#temgd"

IF ~True()~
BEGIN challenge
  SAY @0
  IF ~~
    SOLVED_JOURNAL @1
    DO ~EraseJournalEntry(@7)~
    EXIT
END


BEGIN "mh#temap"

IF ~True()~
BEGIN it_begins
  SAY @2
  IF ~~
    REPLY @3
    GOTO the_key
  IF ~~
    REPLY @4
    GOTO the_key
END

IF ~~
BEGIN the_key
  SAY @5
  = @6
  IF ~~
    UNSOLVED_JOURNAL @7
    DO ~SetGlobal("mh#TempleKeyQuest", "GLOBAL", 3)
        EscapeAreaDestroy(30)~
    EXIT
END


