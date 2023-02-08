with
    source_pessoas as(
        select
        cast(businessentityid as int) as id_pessoa	
        , cast(persontype as string) as tipo_pessoa
        --, namestyle		
        --, title
        , cast(firstname as string) as nome_pessoa
        --, cast(middlename as string) as nome_do_meio
        , cast(lastname as string) as sobrenome_pessoa
        --, suffix
        --, emailpromotion	
        --, additionalcontactinfo
        --, demographics
        --, rowguid
        --, modifieddate

        from {{source("sap_adw", "person")}}
    )

    select * from source_pessoas