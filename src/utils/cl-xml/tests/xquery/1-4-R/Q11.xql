LET $highbid := max(document("bids.xml")//bid_tuple/bid)

RETURN

        <result>

          {

                FOR $item IN document("items.xml")//item_tuple,

                    $b IN document("bids.xml")//bid_tuple[itemno = $item/itemno]

                WHERE $b/bid = $highbid

                RETURN

                        <expensive_item>

                                { $item/itemno }

                                { $item/description }

                                <high_bid>{ $highbid }</high_bid>

                        </expensive_item>

          }

        </result>

