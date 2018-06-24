DEFINE FUNCTION bid_summary ()

{

        FOR $i IN distinct(document("bids.xml")//itemno)

        LET $b := document("bids.xml")//bid_tuple[itemno = $i]

        RETURN

                <bid_count>

                        { $i }

                        <nbids>{ count($b) }</nbids>

                </bid_count>

}



<result>

 {

        LET $bid_counts := bid_summary(),

            $maxbids := max($bid_counts/nbids),

            $maxitemnos := $bid_counts[nbids=$max_bids]

        FOR $item IN document("items.xml")//item_tuple,

            $bc IN $bid_counts

        WHERE $bc/nbids = $maxbids AND $item/itemno = $bc/itemno

        RETURN

                <popular_item>

                        { $item/itemno }

                        { $item/description }

                        <bid_count>{ $bc/nbids/text() }</bid_count>

                </popular_item>

 }

</result>

