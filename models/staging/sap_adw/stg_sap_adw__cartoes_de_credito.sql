with
    source_cartoes_de_credito as(
        select
        cast(creditcardid as int) as id_cartao_de_credito		
        , cast(cardtype as string ) as tipo_cartao
        -- , cast(cardnumber as int) as numero_cartao
        --, cast(expmonth as int) as mes_validade_cartao
        --, cast(expyear as int) as ano_validade_cartao
        --, cast(modifiedda as date ) as data_modificacao

        from {{source("sap_adw", "creditcard")}}
    )

select * from source_cartoes_de_credito
