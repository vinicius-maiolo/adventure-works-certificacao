with 
    source_categorias_de_produtos as(
        select
        cast(productcategoryid as int) as id_categoria			
        , cast(name	as string) as nome_categoria		
        --, cast(rowguid as string) 			
        --, cast(modifieddate	as string)	
        
        from {{source("sap_adw", "productcategory")}}
)

select * from source_categorias_de_produtos