with
    source_razoes_de_venda as(
        select
        cast(salesreasonid as int) as id_razao_de_venda
        , cast(name as string) as name
        , cast(reasontype as string) as tipo_razao
        --, modifieddate	STRING	NULLABLE	

        from {{source("sap_adw", "salesreason")}}
    )

    select * from source_razoes_de_venda