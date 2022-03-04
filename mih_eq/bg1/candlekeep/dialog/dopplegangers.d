BEGIN "mh#dopkp"

IF ~True()~
BEGIN 0
  SAY @0
  IF ~~
    DO ~ApplySpell(Myself, DOPPLEGANGER_CHANGE_DEFAULT_LESSER)~
    EXIT
END


BEGIN "mh#doppr"

IF ~True()~
BEGIN 0
  SAY @1
  IF ~~
    DO ~ApplySpell(Myself, DOPPLEGANGER_CHANGE_DEFAULT_LESSER)~
    EXIT
END


