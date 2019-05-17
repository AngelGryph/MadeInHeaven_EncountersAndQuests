BEGIN "mh#dopkp"

IF ~True()~
BEGIN 0
  SAY @0
  IF ~~
    DO ~ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT)~
    EXIT
END


BEGIN "mh#doppr"

IF ~True()~
BEGIN 0
  SAY @1
  IF ~~
    DO ~ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT)~
    EXIT
END


BEGIN "mh#erik3"

IF ~True()~
BEGIN 0
  SAY @2
  IF ~~
    DO ~ApplySpell(Myself,DOPPLEGANGER_CHANGE_DEFAULT_LESSER)~
    EXIT
END


