with
    source_vendedores as(
        select
        cast(businessentityid as int) as id_pessoa
        , cast(territoryid as int) as id_territorio
        , cast(salesquota as int) as meta_bonus
        , cast(bonus as int) as bonus
        , cast(commissionpct as float64) as percentual_comissao
        , cast(salesytd as float64) as vendas_total_vendedor
        , cast(saleslastyear as float64) vendas_ano_passado
        --, rowguid
        --, modifieddate

        from {{source("sap_adw", "salesperson")}}
    )

    select * from source_vendedores