

<result>

  {

        FOR $u IN document("users.xml")//user_tuple

        LET $b := document("bids.xml")//bid_tuple[userid = $u/userid AND bid >= 100]

        WHERE count($b) > 1

        RETURN

                <big_spender>{ $u/name/text() }</big_spender>

  }

</result>

