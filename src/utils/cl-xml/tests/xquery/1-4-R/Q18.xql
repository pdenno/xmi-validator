<result>

  {

        FOR $u IN document("users.xml")//user_tuple

        RETURN

                <user>

                        { $u/name }

                        {

                                FOR $b IN distinct(document("bids.xml")//bid_tuple[userid = $u/userid]/itemno),

                                    $i IN document("items.xml")//item_tuple[itemno = $b]

                                RETURN

                                        <bid_on_item>{ $i/description/text() }</bid_on_item>

                                SORTBY(.)

                        }

                </user>

        SORTBY(name)

  }

</result>

