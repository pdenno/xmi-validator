<result>

  {

        FOR $i IN //intro/para[1]

        RETURN

                <first_letter>{ substring(string($i), 1, 1) }</first_letter>

  }

</result>

