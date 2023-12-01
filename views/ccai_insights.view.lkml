# The name of this view in Looker is "Ccai Insights"
view: ccai_insights {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my_insights_dataset.CCAI_Insights` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Agent ID" in Explore.

  dimension: agent_id {
    type: number
    sql: ${TABLE}.agentId ;;
  }

  dimension: agent_sentiment_magnitude {
    type: number
    sql: ${TABLE}.agentSentimentMagnitude ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_agent_sentiment_magnitude {
    type: sum
    sql: ${agent_sentiment_magnitude} ;;  }
  measure: average_agent_sentiment_magnitude {
    type: average
    sql: ${agent_sentiment_magnitude} ;;  }

  dimension: agent_sentiment_score {
    type: number
    sql: ${TABLE}.agentSentimentScore ;;
  }

  dimension: agent_speaking_percentage {
    type: number
    sql: ${TABLE}.agentSpeakingPercentage ;;
  }

  dimension: audio_file_uri {
    type: string
    sql: ${TABLE}.audioFileUri ;;
  }

  dimension: client_sentiment_magnitude {
    type: number
    sql: ${TABLE}.clientSentimentMagnitude ;;
  }

  dimension: client_sentiment_score {
    type: number
    sql: ${TABLE}.clientSentimentScore ;;
  }

  dimension: client_speaking_percentage {
    type: number
    sql: ${TABLE}.clientSpeakingPercentage ;;
  }

  dimension: conversation_name {
    type: string
    sql: ${TABLE}.conversationName ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: duration_nanos {
    type: string
    sql: ${TABLE}.durationNanos ;;
  }

  dimension: entities {
    type: string
    sql: ${TABLE}.entities ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: load_timestamp_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.loadTimestampUtc ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: silence_percentage {
    type: number
    sql: ${TABLE}.silencePercentage ;;
  }

  dimension_group: start_timestamp_utc {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.startTimestampUtc ;;
  }

  dimension: turn_count {
    type: number
    sql: ${TABLE}.turnCount ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }
  measure: count {
    type: count
    drill_fields: [conversation_name]
  }
}
