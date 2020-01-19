BEGIN "mh#drikx"

IF ~NumTimesTalkedTo(0)~
BEGIN greetings
  SAY @0
  IF ""
    REPLY @1
    EXTERN "mh#strok" uh_oh_1
  IF ""
    REPLY @2
    EXTERN "mh#strok" bribe_1
  IF ""
    REPLY @3
    EXTERN "mh#strok" begging_1
END

IF ""
BEGIN uh_oh_3
  SAY @4
  IF ""
    GOTO attack_1
END

IF ""
BEGIN bribe_3
  SAY @5
  IF ""
    GOTO attack_1
END

IF ""
BEGIN begging_3
  SAY @6
  IF ""
    GOTO attack_1
END

IF ""
BEGIN attack_1
  SAY @7
  IF ""
    DO ~SetGlobal("mh#CWAssassinsHostile", "MYAREA", 1)~
    EXTERN "mh#strok" attack_2
END


BEGIN "mh#strok"

IF ""
BEGIN uh_oh_1
  SAY @8
  IF ""
    EXTERN "mh#gnung" uh_oh_2
END

IF ""
BEGIN bribe_1
  SAY @9
  IF ""
    EXTERN "mh#gnung" bribe_2
END

IF ""
BEGIN begging_1
  SAY @10
  IF ""
    EXTERN "mh#gnung" begging_2
END

IF ""
BEGIN attack_2
  SAY @11
  IF ""
    EXTERN "mh#gnung" attack_3
END


BEGIN "mh#gnung"

IF ""
BEGIN uh_oh_2
  SAY @12
  IF ""
    EXTERN "mh#drikx" uh_oh_3
END

IF ""
BEGIN bribe_2
  SAY @13
  IF ""
    EXTERN "mh#drikx" bribe_3
END

IF ""
BEGIN begging_2
  SAY @14
  IF ""
    EXTERN "mh#drikx" begging_3
END

IF ""
BEGIN attack_3
  SAY @15
  IF ""
    EXIT
END


