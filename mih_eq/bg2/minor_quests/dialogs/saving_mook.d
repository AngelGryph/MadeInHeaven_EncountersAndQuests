// Aran Linvail

APPEND "aran"

IF ~~
BEGIN saved_mook
  SAY @1
  COPY_TRANS "aran" 6
END

END	// APPEND "aran"


EXTEND_BOTTOM "aran" 5
  IF ~Global("mh#SavedMook", "GLOBAL", 1)~
    REPLY @2
    DO ~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~
    GOTO saved_mook
  IF ~Global("mh#SavedMook", "GLOBAL", 1)~
    REPLY @3
    DO ~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~
    GOTO 7
  IF ~Global("mh#SavedMook", "GLOBAL", 1)~
    REPLY @4
    DO ~AddXPObject(Player1,28500) AddXPObject(Player2,28500) AddXPObject(Player3,28500) AddXPObject(Player4,28500) AddXPObject(Player5,28500) AddXPObject(Player6,28500)~
    GOTO 61
END


ALTER_TRANS "aran"
BEGIN 5 END	// State
BEGIN 3 END	// Transaction
BEGIN
  "TRIGGER" ~!Dead("Mook") Global("mh#SavedMook", "GLOBAL", 0)~
END


// Mook

APPEND "mook"

IF WEIGHT #-1 ~Global("mh#LassalFled", "GLOBAL", 1)~
BEGIN saved_mook
  SAY @5
  IF ~~
    REPLY @6
    GOTO know_lassal
  IF ~~
    REPLY @7
    GOTO know_lassal
  IF ~~
    REPLY @8
    GOTO know_lassal
END

IF ~~
BEGIN know_lassal
  SAY @9
  = @10
  IF ~~
    DO ~SetGlobal("mh#SavedMook", "GLOBAL", 1) EscapeAreaDestroy(90)~
    EXIT
END

END	// APPEND "mook"


// Lassal

REPLACE_ACTION_TEXT "lassal"
 ~Global("LassalTalk","LOCALS"~ ~Global("mh#LassalFled","GLOBAL"~


