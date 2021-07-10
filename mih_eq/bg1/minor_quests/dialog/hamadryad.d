BEGIN "mh#dryha"

IF ~Dead("cdryad")~
BEGIN murderer
  SAY @2
  IF ~~
    GOTO enemy
END

IF ~!Dead("cdryad")~
BEGIN greeting
  SAY @3
  IF ~!ReactionGT(LastTalkedToBy(Myself), NEUTRAL_UPPER)~
    REPLY @4
    GOTO neutral
  IF ~ReactionGT(LastTalkedToBy(Myself), NEUTRAL_UPPER)~
    REPLY @4
    GOTO friendly
  IF ~~
    REPLY @5
    GOTO enemy
END

IF ~~
BEGIN neutral
  SAY @6
  IF ~~
    DO ~AddexperienceParty(800) ForceSpell(Myself, DRYAD_TELEPORT)~
    EXIT
END

IF ~~
BEGIN friendly
  SAY @7
  IF ~~
    DO ~GiveItem("potn52", LastTalkedToBy(Myself)) AddexperienceParty(800) ForceSpell(Myself, DRYAD_TELEPORT)~
    EXIT
END

IF ~~
BEGIN enemy
  SAY @8
  IF ~~
    DO ~Enemy()~
    EXIT
END


