select * from {{ref('code')}}
-- select * from {{ref('demo_dbt')}}
-- source: we use source when we get data outside from dbt folder structure
-- ref: we use when the file present inside dbt folder structure
-- Every seed go as Table by default
-- Every model go as View by default