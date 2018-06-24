FOR $item IN //news_item,

    $c IN //company

LET $partners := $c//partner

WHERE contains(string($item), $c/name/text()) 

  AND SOME $p IN $partners SATISFIES 

    contains(string($item), $p/text()) AND $item/news_agent != $c/name

RETURN

        $item

