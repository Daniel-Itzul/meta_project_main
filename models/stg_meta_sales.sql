with source as (

    {#-
    Normally we would select from the table here, but we are using seeds to load
    our data in this project
    #}
    select * from {{ ref('meta_project_sub_sales','stg_customer_transactions') }}

)

select * from source