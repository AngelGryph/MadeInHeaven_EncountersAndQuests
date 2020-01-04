REPLACE_TRIGGER_TEXT "wenric" ~"ZombiesDead","GLOBAL",20~ ~"ZombiesDead","GLOBAL",40~

REPLACE_SAY "wenric" 1 @0

ALTER_TRANS "wenric"
BEGIN 1 END	// State
BEGIN 0 END	// Transaction
BEGIN
  "UNSOLVED_JOURNAL" ~@1~
END

ADD_STATE_TRIGGER "wenric" 2 ~Global("HelpWenric","GLOBAL",1)~

REPLACE_TRANS_ACTION "wenric"
BEGIN 2 END	// State(s)
BEGIN 0 END	// Transaction(s)
  ~IncrementGlobal("ZombiesDead","GLOBAL",1)~
  ~SetGlobal("HelpWenric","GLOBAL",2)~

ALTER_TRANS "wenric"
BEGIN 2 END	// State(s)
BEGIN 0 END	// Transaction(s)
BEGIN
  "SOLVED_JOURNAL" ~@2~
END


