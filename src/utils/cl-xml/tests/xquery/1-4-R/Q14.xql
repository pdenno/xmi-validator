

<result>

  {

        FOR $i IN distinct(document("bids.xml")//itemno)

        LET $b := document("bids.xml")//bid_tuple[itemno = $i]

        WHERE count($b) >= 3

        RETURN

                <popular_item>

                        { $i }

                        <avgbid>{ avg($b/bid) }</avgbid>

                </popular_item>

        SORTBY(avgbid DESCENDING)

  }

</result>

