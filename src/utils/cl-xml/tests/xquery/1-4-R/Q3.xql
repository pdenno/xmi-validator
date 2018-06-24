

<result>

  {

        FOR $u IN document("users.xml")//user_tuple

        FOR $i IN document("items.xml")//item_tuple

        WHERE $u/rating > "C" 

           AND $i/reserve_price > 1000 

           AND $i/offered_by = $u/userid

        RETURN

                <warning>

                        { $u/name }

                        { $u/rating }

                        { $i/description }

                        { $i/reserve_price }

                </warning>

  }

</result>

