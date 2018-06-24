<result>

  {

        FOR $u IN document("users.xml")//user_tuple

        LET $b := document("bids.xml")//bid_tuple[userid = $u/userid]

        RETURN

                <user>

                        { $u/userid }

                        { $u/name }

                        {

                                IF (empty($b))

                                THEN <status>inactive</status>

                                ELSE <status>active</status>

                        }

                </user>

        SORTBY(userid)

  }

</result>

