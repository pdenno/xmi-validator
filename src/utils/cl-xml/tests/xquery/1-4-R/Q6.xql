<result>

  {

        FOR $item IN document("items.xml")//item_tuple

        LET $b := document("bids.xml")//bid_tuple[itemno = $item/itemno]

        WHERE $item/reserve_price * 2 < max($b/bid)

        RETURN

                <successful_item>

                        { $item/itemno }

                        { $item/description }

                        { $item/reserve_price }

                        <high_bid>{ max($b/bid) }</high_bid>

                </successful_item>

 }

</result>

