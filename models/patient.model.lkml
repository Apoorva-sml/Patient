# Define the database connection to be used for this model.
connection: "ccai_model"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: patient_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: patient_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Patient"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: ccai_insights {}

explore: my_insights_table_1 {
    join: my_insights_table_1__json_payload__messages {
      view_label: "My Insights Table 1: Jsonpayload Messages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__messages}) as my_insights_table_1__json_payload__messages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__messages__text__text {
      view_label: "My Insights Table 1: Jsonpayload Messages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__messages.text__text}) as my_insights_table_1__json_payload__messages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__webhookids {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Webhookids"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__webhookids}) as my_insights_table_1__json_payload__queryresult__webhookids ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__webhooktags {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Webhooktags"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__webhooktags}) as my_insights_table_1__json_payload__queryresult__webhooktags ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__webhooklatencies {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Webhooklatencies"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__webhooklatencies}) as my_insights_table_1__json_payload__queryresult__webhooklatencies ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__webhookdisplaynames {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Webhookdisplaynames"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__webhookdisplaynames}) as my_insights_table_1__json_payload__queryresult__webhookdisplaynames ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__responsemessages {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Responsemessages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__responsemessages}) as my_insights_table_1__json_payload__queryresult__responsemessages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__pageinfo__forminfo__parameterinfo {
      view_label: "My Insights Table 1: Jsonpayload Pageinfo Forminfo Parameterinfo"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__pageinfo__forminfo__parameterinfo}) as my_insights_table_1__json_payload__pageinfo__forminfo__parameterinfo ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__responsemessages__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Responsemessages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__responsemessages.text__text}) as my_insights_table_1__json_payload__queryresult__responsemessages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__fulfillmentresponse__messages__text__text {
      view_label: "My Insights Table 1: Jsonpayload Fulfillmentresponse Messages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__fulfillmentresponse__messages__text__text}) as my_insights_table_1__json_payload__fulfillmentresponse__messages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Webhookrequest Messages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_webhookrequest__messages}) as my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages__text__text {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Webhookrequest Messages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages.text__text}) as my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Webhook Latencies Ms"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__unfulfilled_parameters {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Unfulfilled Parameters"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__unfulfilled_parameters}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__unfulfilled_parameters ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__fulfillmentresponse__messages {
      view_label: "My Insights Table 1: Jsonpayload Fulfillmentresponse Messages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__fulfillmentresponse__messages}) as my_insights_table_1__json_payload__fulfillmentresponse__messages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookids"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__triggered_transition_names {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Triggered Transition Names"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__triggered_transition_names}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__triggered_transition_names ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__advancedsettings__dtmfsettingslist {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Advancedsettings Dtmfsettingslist"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__advancedsettings__dtmfsettingslist}) as my_insights_table_1__json_payload__queryresult__advancedsettings__dtmfsettingslist ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__execution_sequence}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__alternative_matched_intents {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Alternative Matched Intents"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__alternative_matched_intents}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__alternative_matched_intents ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhooklatencies"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives {
      view_label: "My Insights Table 1: Jsonpayload Queryinput Speechtranscripts Finaltranscripts Alternatives"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives}) as my_insights_table_1__json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookdisplaynames"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__transition_targets_chain {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Transition Targets Chain"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.json_payload__queryresult__diagnosticinfo__transition_targets_chain}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__transition_targets_chain ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text}) as my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Responsemessages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages__text__text {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Responsemessages Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages.text__text}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages}) as my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Webhook Latencies Ms"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Triggered Transition Names"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__alternative_matched_intents {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Alternative Matched Intents"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__alternative_matched_intents}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__alternative_matched_intents ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_2__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_9__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_8__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_7__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_6__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_5__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_4__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence.step_3__functionexecution__responses}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses.text__text}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__transition_targets_chain {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Transition Targets Chain"
      sql: LEFT JOIN UNNEST(${my_insights_table_1.jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__transition_targets_chain}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__transition_targets_chain ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses.text__redactedtext}) as my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence.step_2__functionexecution__responses}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence.step_3__functionexecution__responses}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses.text__text}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses.text__text}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses.text__redactedtext}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
    join: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {
      view_label: "My Insights Table 1: Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext"
      sql: LEFT JOIN UNNEST(${my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses.text__redactedtext}) as my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext ;;
      relationship: one_to_many
    }
}

