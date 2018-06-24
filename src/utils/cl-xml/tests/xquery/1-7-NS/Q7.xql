

NAMESPACE ma = "http://www.example.com/AuctionWatch"



<Q7>

  {

        FOR $a IN //ma:Auction

        LET $seller_id := $a/ma:Trading_Partners/ma:Seller/*:ID,

            $buyer_id := $a/ma:Trading_Partners/ma:High_Bidder/*:ID

        WHERE namespace_uri($seller_id) = namespace_uri($buyer_id)

        RETURN

                $a/ma:AuctionHomepage

  }

</Q7>

