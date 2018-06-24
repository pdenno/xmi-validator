<result>

  {

        FOR $highbid IN document("bids.xml")//bid_tuple,

            $user IN document("users.xml")//user_tuple

        WHERE $user/userid = $highbid/userid 

          AND $highbid/bid = max(document("bids.xml")//bid_tuple[itemno = $highbid/itemno]/bid)

        RETURN

                <high_bid>

                        { $highbid/itemno }

                        { $highbid/bid }

                        <bidder>{ $user/name/text() }</bidder>

                </high_bid>

        SORTBY(itemno)

  }

</result>

