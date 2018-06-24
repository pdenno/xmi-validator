<result>

  {

        FOR $seller IN document("users.xml")//user_tuple,

            $buyer IN  document("users.xml")//user_tuple,

            $item IN  document("items.xml")//item_tuple,

            $highbid IN  document("bids.xml")//bid_tuple

        WHERE $seller/name = "Tom Jones" 

          AND $seller/userid = $item/offered_by 

          AND contains($item/description, "Bicycle") 

          AND $item/itemno = $highbid/itemno 

          AND $highbid/userid = $buyer/userid 

          AND $highbid/bid = max(document("bids.xml")//bid_tuple [itemno = $item/itemno]/bid)

        RETURN

                <jones_bike>

                        { $item/itemno }

                        { $item/description }

                        <high_bid>{ $highbid/bid }</high_bid>

                        <high_bidder>{ $buyer/name }</high_bidder>

                </jones_bike>

        SORTBY(itemno)

  }

</result>

