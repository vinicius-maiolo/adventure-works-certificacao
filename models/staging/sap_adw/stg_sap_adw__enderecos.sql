with 
    source_enderecos as (
    select 
        cast(addressid as int) as id_endereco
        , cast(addressline1 as string) as endereco_1
        , cast(addressline2 as string) as endereco_2
        , cast(city as string) as cidade
        , cast(stateprovinceid as int) as id_estado
        --, postalcode
        --, spatiallocation
        --, rowguid
        --, modifieddate
    from {{source("sap_adw", "address")}}
)

select * from source_enderecos