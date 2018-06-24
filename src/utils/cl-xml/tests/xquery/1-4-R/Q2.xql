<result>

  {

        FOR $i IN document("items.xml")//item_tuple

        LET $b := document("bids.xml")//bid_tuple[itemno = $i/itemno]

        WHERE contains($i/description, "Bicycle")

        RETURN

                <item_tuple>

                        { $i/itemno }

                        { $i/description }

                        <high_bid>{ max($b/bid) }</high_bid>

                </item_tuple>

        SORTBY(itemno)

  }

</result>

