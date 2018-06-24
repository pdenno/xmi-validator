<result>

  {

        FOR $i IN document("items.xml")//item_tuple

        WHERE $i/start_date <= date() 

          AND $i/end_date >= date() 

          AND contains($i/description, "Bicycle")

        RETURN

                <item_tuple>

                        { $i/itemno }

                        { $i/description }

                </item_tuple>

        SORTBY (itemno)

  }

</result>

