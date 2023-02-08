with
    source_produtos as(
        select
        cast(productid as int) as id_produto
        , cast(name as string) as nome_produto
        --, productnumber		
        --, makeflag
        --, finishedgoodsflag
        , cast(color as string) as cor			
        , cast(safetystocklevel as int) as qtd_estoque_seguro
        , cast(reorderpoint as int) qtd_estoque_recompra
        , cast(standardcost as float64) as custo_padrao
        , cast(listprice as float64) as preco_lista
        --, size			
        --, sizeunitmeasurecode			
        --, weightunitmeasurecode			
        --, weight
        --, daystomanufacture
        --, productline			
        --, class			
        --, style			
        --, productsubcategoryid
        --, productmodelid
        --, sellstartdate			
        --, sellenddate			
        --, discontinueddate
        --, rowguid			
        --, modifieddate	

        from {{source("sap_adw", "product")}}
    )

    select * from source_produtos