<result>

  {

        LET $end_dates := document("items.xml")//item_tuple/end_date

        FOR $m IN distinct(month($end_dates))

        LET $item := document("items.xml")

            //item_tuple[year(end_date) = 1999 AND month(end_date) = $m]

        RETURN

                <monthly_result>

                        <month>{ $m }</month>

                        <item_count>{ count($item) }</item_count>

                </monthly_result>

        SORTBY(month)

  }

</result>

