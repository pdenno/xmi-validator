<frequent_bidder>

  {

        FOR $u IN document("users.xml")//user_tuple

        WHERE 

          EVERY $item IN document("items.xml")//item_tuple SATISFIES 

            SOME $b IN document("bids.xml")//bid_tuple SATISFIES 

              ($item/itemno = $b/itemno AND $u/userid = $b/userid)

        RETURN

                $u/name

  }

</frequent_bidder>

