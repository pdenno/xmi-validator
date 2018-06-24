<result>

  {

        LET $x := //xref[@xrefid = "top4"],

            $t := //title BEFORE $x

        RETURN $t[last()]

  }

</result>

