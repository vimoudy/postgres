view: pdt {
  derived_table: {
    sql:
      SELECT *
      FROM company
      ;;

    sql_trigger_value: SELECT current_date ;;
  }
  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    type: string
    sql: ${TABLE}.address ;;
  }

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension_group: join {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.join_date ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: salary {
    type: number
    sql: ${TABLE}.salary ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }

}
