REPLACE_STATE_TRIGGER "ulcast" 1 ~~ 2 4

ALTER_TRANS "ulcast"
BEGIN 0 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "EPILOGUE" ~GOTO 1~
END

ALTER_TRANS "ulcast"
BEGIN 1 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "EPILOGUE" ~GOTO 2~
END

ALTER_TRANS "ulcast"
BEGIN 2 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "EPILOGUE" ~GOTO 4~
END


