explore: sleep {}

view: sleep {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
       sleep(1000) as user_id
      ;;
  }

  # Define your dimensions and measures here, like this:
  dimension: user_id {
    description: "Unique ID for each user that has ordered"
    type: string
    sql: ${TABLE}.user_id ;;
  }

}
