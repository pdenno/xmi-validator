LET $companies := distinct(//company/name/text() 

       UNION //company//partner/text() 

       UNION //company//competitor/text())

FOR $item IN //news_item,

    $item_title IN $item/title,

    $item_para IN $item//par,

    $c1 IN $companies,

    $c2 IN $companies

WHERE $c1 != $c2 

  AND contains_stems_in_same_sentence($item_title/text(), $c1, $c2, "acquire") 

   OR contains_stems_in_same_sentence($item_para/text(), $c1, $c2, "acquire")

RETURN

        distinct($item)

