BEGIN "mh#surg1"

IF ~NumTimesTalkedTo(0)~
BEGIN we_meet_again
  SAY @0
  = @1
  = @2
  IF ""
    REPLY @3
    GOTO justice_or_vengeance
  IF ""
    REPLY @4
    GOTO justice_or_vengeance
  IF ""
    REPLY @5
    GOTO justice_or_vengeance
END

IF ""
BEGIN justice_or_vengeance
  SAY @6
  = @7
  IF ""
    DO ~GiveItem("scrl56", LastTalkedToBy(Myself))
        GiveItem("scrl61", LastTalkedToBy(Myself))
	AddexperienceParty(1000)
	SetGlobal("SurgeonStory", "GLOBAL", 2)~
    UNSOLVED_JOURNAL @8
    GOTO need_healing
END

IF ""
BEGIN need_healing
  SAY @9
  IF ~HPPercentLT(MostDamagedOf([PC]), 100)~
    REPLY @10
    GOTO heal_party
  IF ""
    REPLY @11
    GOTO farewell_for_now
END

IF ""
BEGIN heal_party
  SAY @12
  IF ""
    DO ~ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_CRITICAL_WOUNDS)
        Wait(1)
        ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_SERIOUS_WOUNDS)
        Wait(1)
        ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_SERIOUS_WOUNDS)
        Wait(1)
        ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_LIGHT_WOUNDS)
        Wait(1)
        ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_LIGHT_WOUNDS)
        Wait(1)
        ForceSpell(MostDamagedOf([PC]), CLERIC_CURE_LIGHT_WOUNDS)
        Wait(1)
        EscapeAreaDestroy(90)~
    EXIT
END

IF ""
BEGIN farewell_for_now
  SAY @13
  IF ""
    DO ~EscapeAreaDestroy(90)~
    EXIT
END


BEGIN "mh#surg2"

IF ~NumTimesTalkedTo(0)~
BEGIN the_body
  SAY @14
  = @15
  IF ""
    REPLY @16
    GOTO burial
  IF ""
    REPLY @17
    GOTO pyre
  IF ""
    REPLY @18
    GOTO raise
END

IF ""
BEGIN burial
  SAY @19
  IF ""
    GOTO last_rites
END

IF ""
BEGIN pyre
  SAY @20
  IF ""
    GOTO last_rites
END

IF ""
BEGIN raise
  SAY @21
  IF ""
    GOTO last_rites
END

IF ""
BEGIN last_rites
  SAY @22
  IF ""
    GOTO farewell
  IF ~ReactionGT(LastTalkedToBy(Myself), NEUTRAL_UPPER)~
    GOTO reward
END

IF ""
BEGIN reward
  SAY @23
  IF ""
    DO ~GiveItem("misc41", LastTalkedToBy(Myself))
        GiveItem("misc44", LastTalkedToBy(Myself))~
    GOTO farewell
END

IF ""
BEGIN farewell
  SAY @24
  IF ""
    DO ~SetGlobal("SurgeonStory", "GLOBAL", 3)
        AddexperienceParty(2000)
	EraseJournalEntry(@8)
        EscapeAreaDestroy(90)~
    SOLVED_JOURNAL @25
    EXIT
END


