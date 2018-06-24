<result>

  {

        FOR $c IN //chapter

        WHERE empty($c/intro)

        RETURN $c/section/intro/para

  }

</result>

