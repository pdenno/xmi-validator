<result>

  {

        FOR $uid IN distinct(document("bids.xml")//userid),

            $u IN document("users.xml")//user_tuple[userid = $uid]

        LET $b := document("bids.xml")//bid_tuple[userid = $uid]

        RETURN

                <bidder>

                        { $u/userid }

                        { $u/name }

                        <bidcount>{ count($b) }</bidcount>

                        <avgbid>{ avg($b/bid) }</avgbid>

                </bidder>

        SORTBY(userid)

  }

</result>

