LET $allbikes := document("items.xml")//item_tuple[contains(description, "Bicycle") OR contains(description, "Tricycle")]

LET $bikebids := document("bids.xml")//bid_tuple[itemno = $allbikes/itemno]

RETURN

        <high_bid>

          { 

            max($bikebids/bid) 

          }

        </high_bid>

