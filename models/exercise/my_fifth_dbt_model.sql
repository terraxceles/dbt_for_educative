{{
      config(
            tags = 'exercise',
            schema = 'DEV_TESTING'
      )
}}

SELECT * FROM {{ ref('my_third_dbt_model') }}
UNION
SELECT * FROM {{ ref('my_fourth_dbt_model') }}