<result>

  {

        FOR $id IN document("input.xml")//xref/@xrefid

        RETURN //topic[@topicid = $id]

  }

</result>

