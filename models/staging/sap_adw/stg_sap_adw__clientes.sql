with 
    source_clientes as(
        select
        cast(customerid as int) as id_cliente
        , cast(personid as int) as id_pessoa_cliente
        , cast(storeid as int) as id_loja
        , cast(territoryid as int) as id_territorio
       --, cast(rowguid as string) 
       --, cast(modifieddate as date)
       
       from {{source("sap_adw", "customer")}}
    )
    
select * from source_clientes