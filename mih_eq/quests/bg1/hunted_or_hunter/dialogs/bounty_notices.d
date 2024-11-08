APPEND "vai"

IF ~~
BEGIN assassins_warning
  SAY @0
  = @1
  IF ~~
    UNSOLVED_JOURNAL @2
    EXIT
END

IF WEIGHT #-1 ~
NumTimesTalkedToGT(0)
OR(4)
  PartyHasItem("scrltar")
  PartyHasItem("scrlkar")
  PartyHasItem("scrlnei")
  PartyHasItem("scrl3b")
~
BEGIN assassins_encountered
  SAY @3
  IF ~PartyHasItem("scrltar")~
    REPLY @4
    GOTO assassins_tarnesh
  IF ~PartyHasItem("scrlkar")~
    REPLY @5
    GOTO assassins_karlat
  IF ~PartyHasItem("scrlnei")~
    REPLY @6
    GOTO assassins_neira
  IF ~PartyHasItem("scrl3b")~
    REPLY @7
    GOTO assassins_nimbul
END

IF ~~
BEGIN assassins_tarnesh
  SAY @8
  IF ~~
    DO ~TakePartyItem("scrltar") DestroyItem("scrltar") GiveGoldForce(200) AddExperienceParty(150) IncrementGlobal("mh#assassins_down", "GLOBAL", 1)~
    EXIT
END

IF ~~
BEGIN assassins_karlat
  SAY @9
  IF ~~
    DO ~TakePartyItem("scrlkar") DestroyItem("scrlkar") GiveGoldForce(350) AddExperienceParty(250) IncrementGlobal("mh#assassins_down", "GLOBAL", 1)~
    EXIT
END

IF ~~
BEGIN assassins_neira
  SAY @10
  IF ~~
    DO ~TakePartyItem("scrlnei") DestroyItem("scrlnei") GiveGoldForce(680) AddExperienceParty(500) IncrementGlobal("mh#assassins_down", "GLOBAL", 1)~
    EXIT
END

IF ~~
BEGIN assassins_nimbul
  SAY @11
  IF ~~
    DO ~TakePartyItem("scrl3b") DestroyItem("scrl3b") GiveGoldForce(1000) AddExperienceParty(750) IncrementGlobal("mh#assassins_down", "GLOBAL", 1)~
    EXIT
END

IF WEIGHT #-1 ~Global("mh#assassins_down", "GLOBAL", 4)~
BEGIN assassins_down
  SAY @12
  = @13
  IF ~~
    UNSOLVED_JOURNAL @14
    DO ~IncrementGlobal("mh#assassins_down", "GLOBAL", 1)~
    EXIT
END

END	// APPEND


ALTER_TRANS "vai"
BEGIN 2 3 4 END	// States
BEGIN 0 END	// Transactions
BEGIN
  "EPILOGUE" ~GOTO assassins_warning~
END


