NAMESPACE ma = "http://www.example.com/AuctionWatch"



<Q8>

  {

        (FOR $s IN //ma:Trading_Partners/ma:Seller

         WHERE $s/*:NegativeComments = 0

         RETURN $s)

  UNION 

        (FOR $b IN //ma:Trading_Partners/ma:High_Bidder

         WHERE $b/*:NegativeComments = 0

         RETURN $b)

  }

</Q8>

