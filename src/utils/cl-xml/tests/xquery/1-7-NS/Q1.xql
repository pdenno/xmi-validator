<Q1>

  {

        FOR $n IN distinct(namespace_uri(//*))

        RETURN

                $n + newline()

  }

</Q1>

