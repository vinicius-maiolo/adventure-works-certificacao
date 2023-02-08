with 
    source_pedidos_cabecalho as(
        select
        cast(salesorderid as int) as id_pedido
        --, revisionnumber				
        , cast(orderdate as	timestamp) as data_pedido			
        --, duedate			
        , cast(shipdate	as timestamp) as data_envio			
        , cast(status as integer) as status		
        , cast(onlineorderflag as boolean) as eh_online
        --, cast(purchaseordernumber as string) as ordem_de_compra 				
        --, accountnumber				
        , cast(customerid as int) as id_cliente			
        , cast(salespersonid as int) as id_vendedor			
        , cast(territoryid as int) as id_territorio		
        --, billtoaddressid			
        --, shiptoaddressid			
        --, shipmethodid			
        , cast(creditcardid	as int) as id_cartao_de_credito		
        --, creditcardapprovalcode				
        --, currencyrateid				
        , cast(subtotal	as float64) as custo	
        , cast(taxamt as float64) as imposto 		
        , cast(freight as float64) as custo_frete
        , cast(totaldue	as float64) as total_pedido	
        --, comment				
        --, rowguid				
        --, modifieddate		
    
        from {{source("sap_adw", "salesorderheader")}}
    )

    select * from source_pedidos_cabecalho