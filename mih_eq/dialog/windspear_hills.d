BEGIN "mh#flpdw"

IF ~NumTimesTalkedTo(0)~
BEGIN rescued
  SAY @0
  IF ~~
    REPLY @1
    GOTO friendly
  IF ~~
    REPLY @2
    GOTO hostile
END

IF ~~
BEGIN friendly
  SAY @3
  = @4
  IF ~~
    SOLVED_JOURNAL @5
    DO ~ApplySpell(Myself, RESTORE_FULL_HEALTH)
	AddexperienceParty(2000)
	GiveItem("potn09", LastTalkedToBy(Myself))
	GiveItem("potn52", LastTalkedToBy(Myself))
	EscapeArea()~
    EXIT
END

IF ~~
BEGIN hostile
  SAY @6
  = @7
  IF ~~
    SOLVED_JOURNAL @8
    DO ~ApplySpell(Myself, RESTORE_FULL_HEALTH)
	AddexperienceParty(2000)
	GivePartyGold(200)
	EscapeArea()~
    EXIT
END


BEGIN "mh#flpel"

IF ~NumTimesTalkedTo(0)~
BEGIN freedom
  SAY @9
  IF ~~
    REPLY @10
    GOTO good_reward
  IF ~~
    REPLY @11
    GOTO flirt
  IF ~~
    REPLY @12
    GOTO evil_reward
END

IF ~~
BEGIN good_reward
  SAY @13
  IF ~~
    SOLVED_JOURNAL @14
    DO ~ApplySpell(Myself, RESTORE_FULL_HEALTH)
	AddexperienceParty(2000)
	ReputationInc(1)
	GiveItem("scrl61", LastTalkedToBy(Myself))
	EscapeArea()~
    EXIT
END

IF ~~
BEGIN evil_reward
  SAY @15
  IF ~~
    SOLVED_JOURNAL @16
    DO ~ApplySpell(Myself, RESTORE_FULL_HEALTH)
        AddexperienceParty(2000)
	GiveItem("scrl56", LastTalkedToBy(Myself))
	EscapeArea()~
    EXIT
END

IF ~~
BEGIN flirt
  SAY @17
  IF ~~
    GOTO not_my_type
  IF ~Gender(PLAYER1, MALE)
      Or(3)
	Race(PLAYER1, HUMAN)
	Race(PLAYER1, HALF_ELF)
	Race(PLAYER1, ELF)
      ReactionGT(PLAYER1, NEUTRAL_UPPER)~
    GOTO lets_kiss
END

IF ~~
BEGIN not_my_type
  SAY @18
  IF ~~
    GOTO good_reward
END

IF ~~
BEGIN lets_kiss
  SAY @19
  IF ~~
    REPLY @20
    GOTO doing_it
  IF ~~
    REPLY @21
    GOTO look_no_touch
  IF ~~
    REPLY @22
    GOTO no_lewd
END

IF ~~
BEGIN doing_it
  SAY @23
  = @24
  = @25
  IF ~~
    GOTO good_reward
END

IF ~~
BEGIN look_no_touch
  SAY @26
  IF ~~
    GOTO good_reward
END

IF ~~
BEGIN no_lewd
  SAY @27
  IF ~~
    GOTO doing_it
END


