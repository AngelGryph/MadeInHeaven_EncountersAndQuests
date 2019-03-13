APPEND "kirian"

IF ~~
BEGIN whatever
  SAY @5
    COPY_TRANS SAFE "kirian" 2
END

IF ~~
BEGIN behind_you
  SAY @6
  IF ~~
    DO ~ClearAllActions()
	StartCutSceneMode()
	StartCutScene("mh#bgcut")~
    EXIT
END

END	// APPEND "kirian"

ADD_TRANS_TRIGGER "kirian" 2 ~False()~

EXTEND_BOTTOM "kirian" 2
  IF ~~
    REPLY @7
    GOTO whatever
  IF ~~
    REPLY @8
    GOTO behind_you
END


