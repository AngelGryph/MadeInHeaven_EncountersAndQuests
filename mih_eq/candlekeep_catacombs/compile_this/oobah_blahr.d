BEGIN "mh#oobah"


BEGIN "mh#blahr"


CHAIN
IF ~NumTimesTalkedTo(0)~
THEN "mh#oobah" hungry_ogres
  @0

== "mh#blahr"
  @1

== "mh#oobah"
  @2
  =
  @3

== "mh#blahr"
  @4

== "mh#oobah"
  @5
  DO ~Enemy()~

== "mh#blahr"
  @6
  DO ~Enemy()~
END
  IF ""
    EXIT


