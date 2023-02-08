with
    source_pedidos_detalhe as(
        select
        cast(salesorderid as int) as id_pedido	
        , cast(salesorderdetailid as int) id_pedido_detalhe	
        --, carriertrackingnumber
        , cast(orderqty	as int) as quantidade
        , cast(productid as int) as id_produto
        , cast(specialofferid as int) as id_oferta
        , cast(unitprice as float64) as preco_unitario
        , cast(unitpricediscount as float64) as desconto_unitario
        --, rowguid
        --, modifieddate

        from {{source("sap_adw", "salesorderdetail")}}
    )

    select * from source_pedidos_detalhe