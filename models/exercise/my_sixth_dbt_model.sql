{{
      config(
            schema = 'educative',
            materialized = 'incremental',
            unique_key = 'id'
      )
}}

SELECT  '1' as ID
        ,'Amanda' as NAME
        ,'1-212-759-3751' as PHONE
        ,'New York' as CITY
