with 
    source_paises as(
        select
        cast(countryregioncode as string) as codigo_pais		
        , cast(name as string) as nome_pais
        --, cast(modifieddate as ) as data_modificacao_nome_pais

        from {{source("sap_adw", "countryregion")}}
    )

select * from source_paises 