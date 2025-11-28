select * from {{ref('code')}}
-- select * from {{ref('demo_dbt')}}
-- source: we use source when we get data outside from dbt folder structure
-- ref: we use when the file present inside dbt folder structure
-- Every seed go as Table by default
-- Every model go as View by default
-- UPSTREAM: An upstream model is the model your model depends on.
-- If Model B uses ref('A'), then A is upstream of B.

-- DOWNSTREAM: A downstream model is the model that depends on your model.
-- If Model B uses ref('A'), then B is downstream of A.