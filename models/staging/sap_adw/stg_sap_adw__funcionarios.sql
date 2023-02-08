with 
    source_funcionarios as(
        select
        cast(businessentityid as int) as id_funcionario
        , cast(nationalidnumber as int) as documento_funcionario 			
        , cast(loginid as string) as login_funcionario
        , cast(jobtitle as string) as cargo_funcionario
        , cast(birthdate as date) as data_nascimento
        , cast(maritalstatus as	string) as estado_civil	
        , cast(gender as string) as genero_funcionario
        -- , hiredate
        -- , salariedflag
        -- , vacationhours 
        -- , sickleavehours 
        -- , currentflag	
        -- , rowguid
        -- , modifieddate 
        -- , organizationnode
    
        from {{source("sap_adw", "employee")}}
    )

    select * from source_funcionarios