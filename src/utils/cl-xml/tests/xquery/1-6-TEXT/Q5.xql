

FOR $item IN //news_item

WHERE contains(string($item/content), "Gorilla Corporation")

RETURN

        <item_summary>

                { $item/title/text() }.

                { $item/date/text() }.

                { string(($item//par)[1]) }

        </item_summary>

