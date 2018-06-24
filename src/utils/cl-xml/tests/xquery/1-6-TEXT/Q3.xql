LET $foobar_partners := //company[name = "Foobar Corporation"]//partner,

    $foobar_competitors := //company[name = "Foobar Corporation"]//competitor

FOR $item IN //news_item

WHERE SOME $partner IN $foobar_partners SATISFIES 

  contains_in_same_sentence(string($item/content), "Foobar Corporation", $partner/text()) 

      AND not(SOME $competitor IN $foobar_competitors SATISFIES 

                        contains(string($item/content), $competitor/text()))

RETURN

        $item/title

