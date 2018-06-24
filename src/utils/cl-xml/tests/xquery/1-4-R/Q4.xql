<result>

  {

        FOR $i IN document("items.xml")//item_tuple

        WHERE not(SOME $b IN document("bids.xml")//bid_tuple 

                                  SATISFIES $b/itemno = $i/itemno)

        RETURN

                <no_bid_item>

                        { $i/itemno }

                        { $i/description }

                </no_bid_item>

  }

</result>

