LET $item := document("items.xml")//item_tuple

  [end_date >= date("1999-03-01") AND end_date <= date("1999-03-31")]

RETURN

        <item_count>

          { 

            count($item) 

          }

        </item_count>

