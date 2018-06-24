LET $foobar_partners := //company[name = "Foobar Corporation"]//partner

FOR $item IN //news_item

WHERE 

  SOME $t IN $item//title SATISFIES 

    (contains($t/text(), "Foobar Corporation") 

    AND SOME $partner IN $foobar_partners SATISFIES 

      contains($t/text(), $partner/text())) 

  OR SOME $par IN $item//par SATISFIES 

   (contains($par/text(), "Foobar Corporation") 

     AND SOME $partner IN $foobar_partners SATISFIES 

       contains($par/text(), $partner/text()))

RETURN

        <news_item>

                { $item/title }

                { $item/date }

        </news_item>

