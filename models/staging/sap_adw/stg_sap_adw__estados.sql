with 
    source_estados as(
        select
        cast(stateprovinceid as int) as id_estado		
        , cast(stateprovincecode as string) as codigo_estado		
        , cast(countryregioncode as string)	as codigo_pais	
        --, isonlystateprovinceflag		
        , cast(name	as string) as nome_estado
        , cast(territoryid as int) as id_territorio
        --, rowguid		
        --, modifieddate

        from {{source("sap_adw", "stateprovince")}}
    )

select * from source_estados 