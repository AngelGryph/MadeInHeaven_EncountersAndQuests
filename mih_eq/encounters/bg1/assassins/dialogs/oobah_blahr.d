BEGIN "mh#oobah"


BEGIN "mh#blahr"


CHAIN
IF ~NumTimesTalkedTo(0)~
THEN "mh#oobah" hungry_ogres
  @20

== "mh#blahr"
  @21

== "mh#oobah"
  @22
  =
  @23

== "mh#blahr"
  @24

== "mh#oobah"
  @25
  DO ~Enemy()~

== "mh#blahr"
  @26
  DO ~Enemy()~
END
  IF ""
    EXIT


