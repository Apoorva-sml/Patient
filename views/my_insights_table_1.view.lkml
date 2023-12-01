# The name of this view in Looker is "My Insights Table 1"
view: my_insights_table_1 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `my_insights_dataset.my_insights_table_1` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "HTTP Request Cache Fill Bytes" in Explore.

  dimension: http_request__cache_fill_bytes {
    type: number
    sql: ${TABLE}.httpRequest.cacheFillBytes ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Fill Bytes"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_http_request__cache_fill_bytes {
    type: sum
    sql: ${http_request__cache_fill_bytes} ;;  }
  measure: average_http_request__cache_fill_bytes {
    type: average
    sql: ${http_request__cache_fill_bytes} ;;  }

  dimension: http_request__cache_hit {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheHit ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Hit"
  }

  dimension: http_request__cache_lookup {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheLookup ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Lookup"
  }

  dimension: http_request__cache_validated_with_origin_server {
    type: yesno
    sql: ${TABLE}.httpRequest.cacheValidatedWithOriginServer ;;
    group_label: "HTTP Request"
    group_item_label: "Cache Validated with Origin Server"
  }

  dimension: http_request__protocol {
    type: string
    sql: ${TABLE}.httpRequest.protocol ;;
    group_label: "HTTP Request"
    group_item_label: "Protocol"
  }

  dimension: http_request__referer {
    type: string
    sql: ${TABLE}.httpRequest.referer ;;
    group_label: "HTTP Request"
    group_item_label: "Referer"
  }

  dimension: http_request__remote_ip {
    type: string
    sql: ${TABLE}.httpRequest.remoteIp ;;
    group_label: "HTTP Request"
    group_item_label: "Remote IP"
  }

  dimension: http_request__request_method {
    type: string
    sql: ${TABLE}.httpRequest.requestMethod ;;
    group_label: "HTTP Request"
    group_item_label: "Request Method"
  }

  dimension: http_request__request_size {
    type: number
    sql: ${TABLE}.httpRequest.requestSize ;;
    group_label: "HTTP Request"
    group_item_label: "Request Size"
  }

  dimension: http_request__request_url {
    type: string
    sql: ${TABLE}.httpRequest.requestUrl ;;
    group_label: "HTTP Request"
    group_item_label: "Request URL"
  }

  dimension: http_request__response_size {
    type: number
    sql: ${TABLE}.httpRequest.responseSize ;;
    group_label: "HTTP Request"
    group_item_label: "Response Size"
  }

  dimension: http_request__server_ip {
    type: string
    sql: ${TABLE}.httpRequest.serverIp ;;
    group_label: "HTTP Request"
    group_item_label: "Server IP"
  }

  dimension: http_request__status {
    type: number
    sql: ${TABLE}.httpRequest.status ;;
    group_label: "HTTP Request"
    group_item_label: "Status"
  }

  dimension: http_request__user_agent {
    type: string
    sql: ${TABLE}.httpRequest.userAgent ;;
    group_label: "HTTP Request"
    group_item_label: "User Agent"
  }

  dimension: insert_id {
    type: string
    sql: ${TABLE}.insertId ;;
  }

  dimension: json_payload__debugmode {
    type: yesno
    sql: ${TABLE}.jsonPayload.debugmode ;;
    group_label: "JSON Payload"
    group_item_label: "Debugmode"
  }

  dimension: json_payload__detectintentresponseid {
    type: string
    sql: ${TABLE}.jsonPayload.detectintentresponseid ;;
    group_label: "JSON Payload"
    group_item_label: "Detectintentresponseid"
  }

  dimension: json_payload__fulfillmentinfo__tag {
    type: string
    sql: ${TABLE}.jsonPayload.fulfillmentinfo.tag ;;
    group_label: "JSON Payload Fulfillmentinfo"
    group_item_label: "Tag"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: json_payload__fulfillmentresponse__messages {
    hidden: yes
    sql: ${TABLE}.jsonPayload.fulfillmentresponse.messages ;;
    group_label: "JSON Payload Fulfillmentresponse"
    group_item_label: "Messages"
  }

  dimension: json_payload__fulfillmentresponse__messages__text__text {
    hidden: yes
    sql: ${TABLE}.jsonPayload.fulfillmentresponse.messages.text.text ;;
    group_label: "JSON Payload Fulfillmentresponse Messages Text"
    group_item_label: "Text"
  }

  dimension: json_payload__intentinfo__confidence {
    type: number
    sql: ${TABLE}.jsonPayload.intentinfo.confidence ;;
    group_label: "JSON Payload Intentinfo"
    group_item_label: "Confidence"
  }

  dimension: json_payload__intentinfo__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.intentinfo.displayname ;;
    group_label: "JSON Payload Intentinfo"
    group_item_label: "Displayname"
  }

  dimension: json_payload__intentinfo__lastmatchedintent {
    type: string
    sql: ${TABLE}.jsonPayload.intentinfo.lastmatchedintent ;;
    group_label: "JSON Payload Intentinfo"
    group_item_label: "Lastmatchedintent"
  }

  dimension: json_payload__intentinfo__parameters__number__originalvalue {
    type: string
    sql: ${TABLE}.jsonPayload.intentinfo.parameters.number.originalvalue ;;
    group_label: "JSON Payload Intentinfo Parameters Number"
    group_item_label: "Originalvalue"
  }

  dimension: json_payload__intentinfo__parameters__number__resolvedvalue {
    type: string
    sql: ${TABLE}.jsonPayload.intentinfo.parameters.number.resolvedvalue ;;
    group_label: "JSON Payload Intentinfo Parameters Number"
    group_item_label: "Resolvedvalue"
  }

  dimension: json_payload__languagecode {
    type: string
    sql: ${TABLE}.jsonPayload.languagecode ;;
    group_label: "JSON Payload"
    group_item_label: "Languagecode"
  }

  dimension: json_payload__messages {
    hidden: yes
    sql: ${TABLE}.jsonPayload.messages ;;
    group_label: "JSON Payload"
    group_item_label: "Messages"
  }

  dimension: json_payload__pageinfo__currentpage {
    type: string
    sql: ${TABLE}.jsonPayload.pageinfo.currentpage ;;
    group_label: "JSON Payload Pageinfo"
    group_item_label: "Currentpage"
  }

  dimension: json_payload__pageinfo__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.pageinfo.displayname ;;
    group_label: "JSON Payload Pageinfo"
    group_item_label: "Displayname"
  }

  dimension: json_payload__pageinfo__forminfo__parameterinfo {
    hidden: yes
    sql: ${TABLE}.jsonPayload.pageinfo.forminfo.parameterinfo ;;
    group_label: "JSON Payload Pageinfo Forminfo"
    group_item_label: "Parameterinfo"
  }

  dimension: json_payload__payload__telephony__caller_id {
    type: string
    sql: ${TABLE}.jsonPayload.payload.telephony.caller_id ;;
    group_label: "JSON Payload Payload Telephony"
    group_item_label: "Caller ID"
  }

  dimension: json_payload__queryinput__dtmf__digits {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.dtmf.digits ;;
    group_label: "JSON Payload Queryinput Dtmf"
    group_item_label: "Digits"
  }

  dimension: json_payload__queryinput__intent__intent {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.intent.intent ;;
    group_label: "JSON Payload Queryinput Intent"
    group_item_label: "Intent"
  }

  dimension: json_payload__queryinput__languagecode {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.languagecode ;;
    group_label: "JSON Payload Queryinput"
    group_item_label: "Languagecode"
  }

  dimension: json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryinput.speechtranscripts.finaltranscripts.alternatives ;;
    group_label: "JSON Payload Queryinput Speechtranscripts Finaltranscripts"
    group_item_label: "Alternatives"
  }

  dimension: json_payload__queryinput__text__isaudioinput {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryinput.text.isaudioinput ;;
    group_label: "JSON Payload Queryinput Text"
    group_item_label: "Isaudioinput"
  }

  dimension: json_payload__queryinput__text__text {
    type: string
    sql: ${TABLE}.jsonPayload.queryinput.text.text ;;
    group_label: "JSON Payload Queryinput Text"
    group_item_label: "Text"
  }

  dimension: json_payload__queryparams__currentpage {
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.currentpage ;;
    group_label: "JSON Payload Queryparams"
    group_item_label: "Currentpage"
  }

  dimension: json_payload__queryparams__enablepartialresponse {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryparams.enablepartialresponse ;;
    group_label: "JSON Payload Queryparams"
    group_item_label: "Enablepartialresponse"
  }

  dimension: json_payload__queryparams__enableresourceprojectoverride {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryparams.enableresourceprojectoverride ;;
    group_label: "JSON Payload Queryparams"
    group_item_label: "Enableresourceprojectoverride"
  }

  dimension: json_payload__queryparams__payload__telephony__caller_id {
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.payload.telephony.caller_id ;;
    group_label: "JSON Payload Queryparams Payload Telephony"
    group_item_label: "Caller ID"
  }

  dimension: json_payload__queryparams__telephonycallerid {
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.telephonycallerid ;;
    group_label: "JSON Payload Queryparams"
    group_item_label: "Telephonycallerid"
  }

  dimension: json_payload__queryparams__timezone {
    type: string
    sql: ${TABLE}.jsonPayload.queryparams.timezone ;;
    group_label: "JSON Payload Queryparams"
    group_item_label: "Timezone"
  }

  dimension: json_payload__queryresult__advancedsettings__dtmfsettings__enabled {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.dtmfsettings.enabled ;;
    group_label: "JSON Payload Queryresult Advancedsettings Dtmfsettings"
    group_item_label: "Enabled"
  }

  dimension: json_payload__queryresult__advancedsettings__dtmfsettings__entitytype {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.dtmfsettings.entitytype ;;
    group_label: "JSON Payload Queryresult Advancedsettings Dtmfsettings"
    group_item_label: "Entitytype"
  }

  dimension: json_payload__queryresult__advancedsettings__dtmfsettings__maxdigits {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.dtmfsettings.maxdigits ;;
    group_label: "JSON Payload Queryresult Advancedsettings Dtmfsettings"
    group_item_label: "Maxdigits"
  }

  dimension: json_payload__queryresult__advancedsettings__dtmfsettings__usesystementityrule {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.dtmfsettings.usesystementityrule ;;
    group_label: "JSON Payload Queryresult Advancedsettings Dtmfsettings"
    group_item_label: "Usesystementityrule"
  }

  dimension: json_payload__queryresult__advancedsettings__dtmfsettingslist {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.dtmfsettingslist ;;
    group_label: "JSON Payload Queryresult Advancedsettings"
    group_item_label: "Dtmfsettingslist"
  }

  dimension: json_payload__queryresult__advancedsettings__loggingsettings__enableinteractionlogging {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.loggingsettings.enableinteractionlogging ;;
    group_label: "JSON Payload Queryresult Advancedsettings Loggingsettings"
    group_item_label: "Enableinteractionlogging"
  }

  dimension: json_payload__queryresult__advancedsettings__speechsettings__endpointersensitivity {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.speechsettings.endpointersensitivity ;;
    group_label: "JSON Payload Queryresult Advancedsettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: json_payload__queryresult__advancedsettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.advancedsettings.speechsettings.nospeechtimeout ;;
    group_label: "JSON Payload Queryresult Advancedsettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: json_payload__queryresult__currentflow__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentflow.displayname ;;
    group_label: "JSON Payload Queryresult Currentflow"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__currentflow__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentflow.name ;;
    group_label: "JSON Payload Queryresult Currentflow"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__currentpage__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.displayname ;;
    group_label: "JSON Payload Queryresult Currentpage"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__currentpage__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.currentpage.name ;;
    group_label: "JSON Payload Queryresult Currentpage"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__diagnosticinfo__alternative_matched_intents {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.alternative_matched_intents ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Alternative Matched Intents"
  }

  dimension: json_payload__queryresult__diagnosticinfo__execution_sequence {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.execution_sequence ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Execution Sequence"
  }

  dimension: json_payload__queryresult__diagnosticinfo__response_id {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.response_id ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Response ID"
  }

  dimension: json_payload__queryresult__diagnosticinfo__session_id {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.session_id ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Session ID"
  }

  dimension: json_payload__queryresult__diagnosticinfo__transition_targets_chain {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.transition_targets_chain ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Transition Targets Chain"
  }

  dimension: json_payload__queryresult__diagnosticinfo__triggered_transition_names {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.triggered_transition_names ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Triggered Transition Names"
  }

  dimension: json_payload__queryresult__diagnosticinfo__unfulfilled_parameters {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.unfulfilled_parameters ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo"
    group_item_label: "Unfulfilled Parameters"
  }

  dimension: json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.diagnosticinfo.webhook_latencies__ms_ ;;
    group_label: "JSON Payload Queryresult Diagnosticinfo Webhook Latencies"
    group_item_label: "Ms "
  }

  dimension: json_payload__queryresult__dtmf__digits {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.dtmf.digits ;;
    group_label: "JSON Payload Queryresult Dtmf"
    group_item_label: "Digits"
  }

  dimension: json_payload__queryresult__formfillinginfo__entitytype {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.formfillinginfo.entitytype ;;
    group_label: "JSON Payload Queryresult Formfillinginfo"
    group_item_label: "Entitytype"
  }

  dimension: json_payload__queryresult__formfillinginfo__parameter {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.formfillinginfo.parameter ;;
    group_label: "JSON Payload Queryresult Formfillinginfo"
    group_item_label: "Parameter"
  }

  dimension: json_payload__queryresult__intent__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.displayname ;;
    group_label: "JSON Payload Queryresult Intent"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__intent__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.intent.name ;;
    group_label: "JSON Payload Queryresult Intent"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__intentdetectionconfidence {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.intentdetectionconfidence ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Intentdetectionconfidence"
  }

  dimension: json_payload__queryresult__languagecode {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.languagecode ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Languagecode"
  }

  dimension: json_payload__queryresult__match__confidence {
    type: number
    sql: ${TABLE}.jsonPayload.queryresult.match.confidence ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Confidence"
  }

  dimension: json_payload__queryresult__match__event {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.event ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Event"
  }

  dimension: json_payload__queryresult__match__intent__description {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.description ;;
    group_label: "JSON Payload Queryresult Match Intent"
    group_item_label: "Description"
  }

  dimension: json_payload__queryresult__match__intent__displayname {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.displayname ;;
    group_label: "JSON Payload Queryresult Match Intent"
    group_item_label: "Displayname"
  }

  dimension: json_payload__queryresult__match__intent__name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.intent.name ;;
    group_label: "JSON Payload Queryresult Match Intent"
    group_item_label: "Name"
  }

  dimension: json_payload__queryresult__match__matchtype {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.matchtype ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Matchtype"
  }

  dimension: json_payload__queryresult__match__modeltype {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.modeltype ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Modeltype"
  }

  dimension: json_payload__queryresult__match__parameters__benefit_last_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.benefit_last_name ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "Benefit Last Name"
  }

  dimension: json_payload__queryresult__match__parameters__capture_firstletter {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.capture_firstletter ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "Capture Firstletter"
  }

  dimension: json_payload__queryresult__match__parameters__dob__day {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.dob.day ;;
    group_label: "JSON Payload Queryresult Match Parameters Dob"
    group_item_label: "Day"
  }

  dimension: json_payload__queryresult__match__parameters__dob__month {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.dob.month ;;
    group_label: "JSON Payload Queryresult Match Parameters Dob"
    group_item_label: "Month"
  }

  dimension: json_payload__queryresult__match__parameters__dob__year {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.dob.year ;;
    group_label: "JSON Payload Queryresult Match Parameters Dob"
    group_item_label: "Year"
  }

  dimension: json_payload__queryresult__match__parameters__first_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.first_name ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "First Name"
  }

  dimension: json_payload__queryresult__match__parameters__last_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.last_name ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "Last Name"
  }

  dimension: json_payload__queryresult__match__parameters__number {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.number ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "Number"
  }

  dimension: json_payload__queryresult__match__parameters__phone_number {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.parameters.phone_number ;;
    group_label: "JSON Payload Queryresult Match Parameters"
    group_item_label: "Phone Number"
  }

  dimension: json_payload__queryresult__match__resolvedinput {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.match.resolvedinput ;;
    group_label: "JSON Payload Queryresult Match"
    group_item_label: "Resolvedinput"
  }

  dimension: json_payload__queryresult__parameters__benefit_last_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.benefit_last_name ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Benefit Last Name"
  }

  dimension: json_payload__queryresult__parameters__capture_firstletter {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.capture_firstletter ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Capture Firstletter"
  }

  dimension: json_payload__queryresult__parameters__captured_first_letter {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.captured_first_letter ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Captured First Letter"
  }

  dimension: json_payload__queryresult__parameters__captured_first_letter_range {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.captured_first_letter_range ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Captured First Letter Range"
  }

  dimension: json_payload__queryresult__parameters__captured_question {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.captured_question ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Captured Question"
  }

  dimension: json_payload__queryresult__parameters__confirm_route {
    type: yesno
    sql: ${TABLE}.jsonPayload.queryresult.parameters.confirm_route ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Confirm Route"
  }

  dimension: json_payload__queryresult__parameters__dob__day {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.dob.day ;;
    group_label: "JSON Payload Queryresult Parameters Dob"
    group_item_label: "Day"
  }

  dimension: json_payload__queryresult__parameters__dob__month {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.dob.month ;;
    group_label: "JSON Payload Queryresult Parameters Dob"
    group_item_label: "Month"
  }

  dimension: json_payload__queryresult__parameters__dob__year {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.dob.year ;;
    group_label: "JSON Payload Queryresult Parameters Dob"
    group_item_label: "Year"
  }

  dimension: json_payload__queryresult__parameters__first_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.first_name ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "First Name"
  }

  dimension: json_payload__queryresult__parameters__furast {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.furast ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Furast"
  }

  dimension: json_payload__queryresult__parameters__is_benefit {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.is_benefit ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Is Benefit"
  }

  dimension: json_payload__queryresult__parameters__is_general {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.is_general ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Is General"
  }

  dimension: json_payload__queryresult__parameters__last_answered {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_answered ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Answered"
  }

  dimension: json_payload__queryresult__parameters__last_answered_text {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_answered_text ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Answered Text"
  }

  dimension: json_payload__queryresult__parameters__last_answered_voice {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_answered_voice ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: json_payload__queryresult__parameters__last_captured {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_captured ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Captured"
  }

  dimension: json_payload__queryresult__parameters__last_name {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_name ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Name"
  }

  dimension: json_payload__queryresult__parameters__last_question {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.last_question ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Last Question"
  }

  dimension: json_payload__queryresult__parameters__max_retry {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.max_retry ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Max Retry"
  }

  dimension: json_payload__queryresult__parameters__number {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.number ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Number"
  }

  dimension: json_payload__queryresult__parameters__phone_number {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.phone_number ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Phone Number"
  }

  dimension: json_payload__queryresult__parameters__phone_retry {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.phone_retry ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Phone Retry"
  }

  dimension: json_payload__queryresult__parameters__say_ticket {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.say_ticket ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Say Ticket"
  }

  dimension: json_payload__queryresult__parameters__ticket_generated {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.ticket_generated ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Ticket Generated"
  }

  dimension: json_payload__queryresult__parameters__ticket_number {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.ticket_number ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Ticket Number"
  }

  dimension: json_payload__queryresult__parameters__ticket_number_str {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.parameters.ticket_number_str ;;
    group_label: "JSON Payload Queryresult Parameters"
    group_item_label: "Ticket Number Str"
  }

  dimension: json_payload__queryresult__responsemessages {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.responsemessages ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Responsemessages"
  }

  dimension: json_payload__queryresult__text {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.text ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Text"
  }

  dimension: json_payload__queryresult__transcript {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.transcript ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Transcript"
  }

  dimension: json_payload__queryresult__triggerintent {
    type: string
    sql: ${TABLE}.jsonPayload.queryresult.triggerintent ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Triggerintent"
  }

  dimension: json_payload__queryresult__webhookdisplaynames {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.webhookdisplaynames ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Webhookdisplaynames"
  }

  dimension: json_payload__queryresult__webhookids {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.webhookids ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Webhookids"
  }

  dimension: json_payload__queryresult__webhooklatencies {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.webhooklatencies ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Webhooklatencies"
  }

  dimension: json_payload__queryresult__webhooktags {
    hidden: yes
    sql: ${TABLE}.jsonPayload.queryresult.webhooktags ;;
    group_label: "JSON Payload Queryresult"
    group_item_label: "Webhooktags"
  }

  dimension: json_payload__responseid {
    type: string
    sql: ${TABLE}.jsonPayload.responseid ;;
    group_label: "JSON Payload"
    group_item_label: "Responseid"
  }

  dimension: json_payload__responsetype {
    type: string
    sql: ${TABLE}.jsonPayload.responsetype ;;
    group_label: "JSON Payload"
    group_item_label: "Responsetype"
  }

  dimension: json_payload__session {
    type: string
    sql: ${TABLE}.jsonPayload.session ;;
    group_label: "JSON Payload"
    group_item_label: "Session"
  }

  dimension: json_payload__sessioninfo__parameters__benefit_last_name {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.benefit_last_name ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Benefit Last Name"
  }

  dimension: json_payload__sessioninfo__parameters__capture_firstletter {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.capture_firstletter ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Capture Firstletter"
  }

  dimension: json_payload__sessioninfo__parameters__captured_first_letter {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.captured_first_letter ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Captured First Letter"
  }

  dimension: json_payload__sessioninfo__parameters__captured_first_letter_range {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.captured_first_letter_range ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Captured First Letter Range"
  }

  dimension: json_payload__sessioninfo__parameters__captured_question {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.captured_question ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Captured Question"
  }

  dimension: json_payload__sessioninfo__parameters__dob__day {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.dob.day ;;
    group_label: "JSON Payload Sessioninfo Parameters Dob"
    group_item_label: "Day"
  }

  dimension: json_payload__sessioninfo__parameters__dob__month {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.dob.month ;;
    group_label: "JSON Payload Sessioninfo Parameters Dob"
    group_item_label: "Month"
  }

  dimension: json_payload__sessioninfo__parameters__dob__year {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.dob.year ;;
    group_label: "JSON Payload Sessioninfo Parameters Dob"
    group_item_label: "Year"
  }

  dimension: json_payload__sessioninfo__parameters__first_name {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.first_name ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "First Name"
  }

  dimension: json_payload__sessioninfo__parameters__furast {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.furast ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Furast"
  }

  dimension: json_payload__sessioninfo__parameters__is_benefit {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.is_benefit ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Is Benefit"
  }

  dimension: json_payload__sessioninfo__parameters__is_general {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.is_general ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Is General"
  }

  dimension: json_payload__sessioninfo__parameters__last_answered {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_answered ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Answered"
  }

  dimension: json_payload__sessioninfo__parameters__last_answered_text {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_answered_text ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Answered Text"
  }

  dimension: json_payload__sessioninfo__parameters__last_answered_voice {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_answered_voice ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: json_payload__sessioninfo__parameters__last_captured {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_captured ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Captured"
  }

  dimension: json_payload__sessioninfo__parameters__last_name {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_name ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Name"
  }

  dimension: json_payload__sessioninfo__parameters__last_question {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.last_question ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Last Question"
  }

  dimension: json_payload__sessioninfo__parameters__max_retry {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.max_retry ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Max Retry"
  }

  dimension: json_payload__sessioninfo__parameters__number {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.number ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Number"
  }

  dimension: json_payload__sessioninfo__parameters__phone_number {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.phone_number ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Phone Number"
  }

  dimension: json_payload__sessioninfo__parameters__phone_retry {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.phone_retry ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Phone Retry"
  }

  dimension: json_payload__sessioninfo__parameters__say_ticket {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.say_ticket ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Say Ticket"
  }

  dimension: json_payload__sessioninfo__parameters__ticket_generated {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.ticket_generated ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Ticket Generated"
  }

  dimension: json_payload__sessioninfo__parameters__ticket_number {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.ticket_number ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Ticket Number"
  }

  dimension: json_payload__sessioninfo__parameters__ticket_number_str {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.parameters.ticket_number_str ;;
    group_label: "JSON Payload Sessioninfo Parameters"
    group_item_label: "Ticket Number Str"
  }

  dimension: json_payload__sessioninfo__session {
    type: string
    sql: ${TABLE}.jsonPayload.sessioninfo.session ;;
    group_label: "JSON Payload Sessioninfo"
    group_item_label: "Session"
  }

  dimension: json_payload__text {
    type: string
    sql: ${TABLE}.jsonPayload.text ;;
    group_label: "JSON Payload"
    group_item_label: "Text"
  }

  dimension: json_payload__transcript {
    type: string
    sql: ${TABLE}.jsonPayload.transcript ;;
    group_label: "JSON Payload"
    group_item_label: "Transcript"
  }

  dimension: json_payload__triggerintent {
    type: string
    sql: ${TABLE}.jsonPayload.triggerintent ;;
    group_label: "JSON Payload"
    group_item_label: "Triggerintent"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest___type {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest._type ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest"
    group_item_label: " Type"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__debugmode {
    type: yesno
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.debugmode ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest"
    group_item_label: "Debugmode"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__queryinput__languagecode {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.queryinput.languagecode ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest Queryinput"
    group_item_label: "Languagecode"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__queryinput__text__text {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.queryinput.text.text ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest Queryinput Text"
    group_item_label: "Text"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__queryparams__analyzequerytextsentiment {
    type: yesno
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.queryparams.analyzequerytextsentiment ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest Queryparams"
    group_item_label: "Analyzequerytextsentiment"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__queryparams__currentpage {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.queryparams.currentpage ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest Queryparams"
    group_item_label: "Currentpage"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__queryparams__timezone {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.queryparams.timezone ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest Queryparams"
    group_item_label: "Timezone"
  }

  dimension: jsonpayload_v3alpha1_detectintentrequest__session {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentrequest.session ;;
    group_label: "Jsonpayload V3alpha1 Detectintentrequest"
    group_item_label: "Session"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse___type {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse._type ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse"
    group_item_label: " Type"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__advancedsettings__loggingsettings__enableinteractionlogging {
    type: yesno
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.advancedsettings.loggingsettings.enableinteractionlogging ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Advancedsettings Loggingsettings"
    group_item_label: "Enableinteractionlogging"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__advancedsettings__speechsettings__endpointersensitivity {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.advancedsettings.speechsettings.endpointersensitivity ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Advancedsettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__advancedsettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.advancedsettings.speechsettings.nospeechtimeout ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Advancedsettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__currentpage__displayname {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.currentpage.displayname ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Currentpage"
    group_item_label: "Displayname"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__currentpage__name {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.currentpage.name ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Currentpage"
    group_item_label: "Name"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__alternative_matched_intents {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.alternative_matched_intents ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo"
    group_item_label: "Alternative Matched Intents"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.execution_sequence ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo"
    group_item_label: "Execution Sequence"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__session_id {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.session_id ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo"
    group_item_label: "Session ID"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__transition_targets_chain {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.transition_targets_chain ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo"
    group_item_label: "Transition Targets Chain"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.triggered_transition_names ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo"
    group_item_label: "Triggered Transition Names"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.diagnosticinfo.webhook_latencies__ms_ ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Webhook Latencies"
    group_item_label: "Ms "
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__intent__displayname {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.intent.displayname ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Intent"
    group_item_label: "Displayname"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__intent__name {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.intent.name ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Intent"
    group_item_label: "Name"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__intentdetectionconfidence {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.intentdetectionconfidence ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Intentdetectionconfidence"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__languagecode {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.languagecode ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Languagecode"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__confidence {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.confidence ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match"
    group_item_label: "Confidence"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__event {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.event ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match"
    group_item_label: "Event"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__intent__displayname {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.intent.displayname ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match Intent"
    group_item_label: "Displayname"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__intent__name {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.intent.name ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match Intent"
    group_item_label: "Name"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__matchtype {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.matchtype ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match"
    group_item_label: "Matchtype"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__match__resolvedinput {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.match.resolvedinput ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Match"
    group_item_label: "Resolvedinput"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__parameters__captured_question {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.parameters.captured_question ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Parameters"
    group_item_label: "Captured Question"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__parameters__last_answered_text {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.parameters.last_answered_text ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Parameters"
    group_item_label: "Last Answered Text"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__parameters__last_answered_voice {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.parameters.last_answered_voice ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Parameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__parameters__max_retry {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.parameters.max_retry ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Parameters"
    group_item_label: "Max Retry"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__parameters__phone_retry {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.parameters.phone_retry ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Parameters"
    group_item_label: "Phone Retry"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.responsemessages ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Responsemessages"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__sentimentanalysisresult__magnitude {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.sentimentanalysisresult.magnitude ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Sentimentanalysisresult"
    group_item_label: "Magnitude"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__sentimentanalysisresult__score {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.sentimentanalysisresult.score ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult Sentimentanalysisresult"
    group_item_label: "Score"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__text {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.text ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Text"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.webhookdisplaynames ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Webhookdisplaynames"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.webhookids ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Webhookids"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.queryresult.webhooklatencies ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse Queryresult"
    group_item_label: "Webhooklatencies"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__responseid {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.responseid ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse"
    group_item_label: "Responseid"
  }

  dimension: jsonpayload_v3alpha1_detectintentresponse__responsetype {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_detectintentresponse.responsetype ;;
    group_label: "Jsonpayload V3alpha1 Detectintentresponse"
    group_item_label: "Responsetype"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest___type {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest._type ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest"
    group_item_label: " Type"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__detectintentresponseid {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.detectintentresponseid ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest"
    group_item_label: "Detectintentresponseid"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__fulfillmentinfo__tag {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.fulfillmentinfo.tag ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Fulfillmentinfo"
    group_item_label: "Tag"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__intentinfo__confidence {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.intentinfo.confidence ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Intentinfo"
    group_item_label: "Confidence"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__intentinfo__displayname {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.intentinfo.displayname ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Intentinfo"
    group_item_label: "Displayname"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__intentinfo__lastmatchedintent {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.intentinfo.lastmatchedintent ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Intentinfo"
    group_item_label: "Lastmatchedintent"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__languagecode {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.languagecode ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest"
    group_item_label: "Languagecode"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__messages {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.messages ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest"
    group_item_label: "Messages"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__pageinfo__currentpage {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.pageinfo.currentpage ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Pageinfo"
    group_item_label: "Currentpage"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__pageinfo__displayname {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.pageinfo.displayname ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Pageinfo"
    group_item_label: "Displayname"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sentimentanalysisresult__magnitude {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sentimentanalysisresult.magnitude ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sentimentanalysisresult"
    group_item_label: "Magnitude"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sentimentanalysisresult__score {
    type: number
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sentimentanalysisresult.score ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sentimentanalysisresult"
    group_item_label: "Score"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sessioninfo__parameters__last_answered_text {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sessioninfo.parameters.last_answered_text ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sessioninfo Parameters"
    group_item_label: "Last Answered Text"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sessioninfo__parameters__last_answered_voice {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sessioninfo.parameters.last_answered_voice ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sessioninfo Parameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sessioninfo__parameters__max_retry {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sessioninfo.parameters.max_retry ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sessioninfo Parameters"
    group_item_label: "Max Retry"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sessioninfo__parameters__phone_retry {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sessioninfo.parameters.phone_retry ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sessioninfo Parameters"
    group_item_label: "Phone Retry"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__sessioninfo__session {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.sessioninfo.session ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest Sessioninfo"
    group_item_label: "Session"
  }

  dimension: jsonpayload_v3alpha1_webhookrequest__text {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookrequest.text ;;
    group_label: "Jsonpayload V3alpha1 Webhookrequest"
    group_item_label: "Text"
  }

  dimension: jsonpayload_v3alpha1_webhookresponse___type {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookresponse._type ;;
    group_label: "Jsonpayload V3alpha1 Webhookresponse"
    group_item_label: " Type"
  }

  dimension: jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookresponse.fulfillmentresponse.messages ;;
    group_label: "Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse"
    group_item_label: "Messages"
  }

  dimension: jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text {
    hidden: yes
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookresponse.fulfillmentresponse.messages.text.text ;;
    group_label: "Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages Text"
    group_item_label: "Text"
  }

  dimension: jsonpayload_v3alpha1_webhookresponse__sessioninfo__parameters__captured_question {
    type: string
    sql: ${TABLE}.jsonpayload_v3alpha1_webhookresponse.sessioninfo.parameters.captured_question ;;
    group_label: "Jsonpayload V3alpha1 Webhookresponse Sessioninfo Parameters"
    group_item_label: "Captured Question"
  }

  dimension: labels__agent_id {
    type: string
    sql: ${TABLE}.labels.agent_id ;;
    group_label: "Labels"
    group_item_label: "Agent ID"
  }

  dimension: labels__environment_id {
    type: string
    sql: ${TABLE}.labels.environment_id ;;
    group_label: "Labels"
    group_item_label: "Environment ID"
  }

  dimension: labels__location_id {
    type: string
    sql: ${TABLE}.labels.location_id ;;
    group_label: "Labels"
    group_item_label: "Location ID"
  }

  dimension: labels__session_id {
    type: string
    sql: ${TABLE}.labels.session_id ;;
    group_label: "Labels"
    group_item_label: "Session ID"
  }

  dimension: log_name {
    type: string
    sql: ${TABLE}.logName ;;
  }

  dimension: operation__first {
    type: yesno
    sql: ${TABLE}.operation.first ;;
    group_label: "Operation"
    group_item_label: "First"
  }

  dimension: operation__id {
    type: string
    sql: ${TABLE}.operation.id ;;
    group_label: "Operation"
    group_item_label: "ID"
  }

  dimension: operation__last {
    type: yesno
    sql: ${TABLE}.operation.last ;;
    group_label: "Operation"
    group_item_label: "Last"
  }

  dimension: operation__producer {
    type: string
    sql: ${TABLE}.operation.producer ;;
    group_label: "Operation"
    group_item_label: "Producer"
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: receive_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.receiveTimestamp ;;
  }

  dimension: resource__labels__project_id {
    type: string
    sql: ${TABLE}.resource.labels.project_id ;;
    group_label: "Resource Labels"
    group_item_label: "Project ID"
  }

  dimension: resource__type {
    type: string
    sql: ${TABLE}.resource.type ;;
    group_label: "Resource"
    group_item_label: "Type"
  }

  dimension: severity {
    type: string
    sql: ${TABLE}.severity ;;
  }

  dimension: source_location__file {
    type: string
    sql: ${TABLE}.sourceLocation.file ;;
    group_label: "Source Location"
    group_item_label: "File"
  }

  dimension: source_location__function {
    type: string
    sql: ${TABLE}.sourceLocation.function ;;
    group_label: "Source Location"
    group_item_label: "Function"
  }

  dimension: source_location__line {
    type: number
    sql: ${TABLE}.sourceLocation.line ;;
    group_label: "Source Location"
    group_item_label: "Line"
  }

  dimension: span_id {
    type: string
    sql: ${TABLE}.spanId ;;
  }

  dimension: split__index {
    type: number
    sql: ${TABLE}.split.index ;;
    group_label: "Split"
    group_item_label: "Index"
  }

  dimension: split__total_splits {
    type: number
    sql: ${TABLE}.split.totalSplits ;;
    group_label: "Split"
    group_item_label: "Total Splits"
  }

  dimension: split__uid {
    type: string
    sql: ${TABLE}.split.uid ;;
    group_label: "Split"
    group_item_label: "Uid"
  }

  dimension: text_payload {
    type: string
    sql: ${TABLE}.textPayload ;;
  }

  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.timestamp ;;
  }

  dimension: trace {
    type: string
    sql: ${TABLE}.trace ;;
  }

  dimension: trace_sampled {
    type: yesno
    sql: ${TABLE}.traceSampled ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	log_name,
	json_payload__pageinfo__displayname,
	json_payload__intentinfo__displayname,
	json_payload__queryresult__intent__name,
	json_payload__queryresult__currentpage__name,
	json_payload__queryresult__currentflow__name,
	json_payload__queryresult__match__intent__name,
	json_payload__queryresult__intent__displayname,
	json_payload__queryresult__parameters__last_name,
	json_payload__sessioninfo__parameters__last_name,
	json_payload__queryresult__parameters__first_name,
	json_payload__sessioninfo__parameters__first_name,
	json_payload__queryresult__currentpage__displayname,
	json_payload__queryresult__currentflow__displayname,
	json_payload__queryresult__match__intent__displayname,
	json_payload__queryresult__match__parameters__last_name,
	json_payload__queryresult__match__parameters__first_name,
	json_payload__queryresult__parameters__benefit_last_name,
	json_payload__sessioninfo__parameters__benefit_last_name,
	jsonpayload_v3alpha1_webhookrequest__pageinfo__displayname,
	json_payload__queryresult__match__parameters__benefit_last_name,
	jsonpayload_v3alpha1_webhookrequest__intentinfo__displayname,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__intent__name,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__currentpage__name,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__match__intent__name,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__intent__displayname,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__currentpage__displayname,
	jsonpayload_v3alpha1_detectintentresponse__queryresult__match__intent__displayname
	]
  }

}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Messages"
view: my_insights_table_1__json_payload__messages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Allowplaybackinterruption" in Explore.

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Messages Text Text"
view: my_insights_table_1__json_payload__messages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Messages Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__messages__text__text {
    type: string
    sql: my_insights_table_1__json_payload__messages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Webhookids"
view: my_insights_table_1__json_payload__queryresult__webhookids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Webhookids" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__webhookids {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__webhookids ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Webhooktags"
view: my_insights_table_1__json_payload__queryresult__webhooktags {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Webhooktags" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__webhooktags {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__webhooktags ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Webhooklatencies"
view: my_insights_table_1__json_payload__queryresult__webhooklatencies {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Webhooklatencies" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__webhooklatencies {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__webhooklatencies ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Webhookdisplaynames"
view: my_insights_table_1__json_payload__queryresult__webhookdisplaynames {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Webhookdisplaynames" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__webhookdisplaynames {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__webhookdisplaynames ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Responsemessages"
view: my_insights_table_1__json_payload__queryresult__responsemessages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Dtmfsettings Enabled" in Explore.

  dimension: interactivevoiceresponsesettings__dtmfsettings__enabled {
    type: yesno
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.enabled ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Enabled"
  }

  dimension: interactivevoiceresponsesettings__dtmfsettings__maxdigits {
    type: number
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.maxdigits ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Maxdigits"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_interactivevoiceresponsesettings__dtmfsettings__maxdigits {
    type: sum
    sql: ${interactivevoiceresponsesettings__dtmfsettings__maxdigits} ;;  }
  measure: average_interactivevoiceresponsesettings__dtmfsettings__maxdigits {
    type: average
    sql: ${interactivevoiceresponsesettings__dtmfsettings__maxdigits} ;;  }

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: number
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: telephonytransfercall__phonenumber {
    type: string
    sql: ${TABLE}.telephonytransfercall.phonenumber ;;
    group_label: "Telephonytransfercall"
    group_item_label: "Phonenumber"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Pageinfo Forminfo Parameterinfo"
view: my_insights_table_1__json_payload__pageinfo__forminfo__parameterinfo {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Displayname" in Explore.

  dimension: displayname {
    type: string
    sql: ${TABLE}.displayname ;;
  }

  dimension: justcollected {
    type: yesno
    sql: ${TABLE}.justcollected ;;
  }

  dimension: required {
    type: yesno
    sql: ${TABLE}.required ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}.state ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Responsemessages Text Text"
view: my_insights_table_1__json_payload__queryresult__responsemessages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Responsemessages Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__responsemessages__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__responsemessages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Fulfillmentresponse Messages Text Text"
view: my_insights_table_1__json_payload__fulfillmentresponse__messages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Fulfillmentresponse Messages Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__fulfillmentresponse__messages__text__text {
    type: string
    sql: my_insights_table_1__json_payload__fulfillmentresponse__messages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Webhookrequest Messages"
view: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Allowplaybackinterruption" in Explore.

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Webhookrequest Messages Text Text"
view: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Webhookrequest Messages Text Text" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages__text__text {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_webhookrequest__messages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Webhook Latencies Ms "
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Webhook Latencies Ms " in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__webhook_latencies__ms_ ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Unfulfilled Parameters"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__unfulfilled_parameters {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Unfulfilled Parameters" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__unfulfilled_parameters {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__unfulfilled_parameters ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Fulfillmentresponse Messages"
view: my_insights_table_1__json_payload__fulfillmentresponse__messages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookids"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookids" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookids ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Triggered Transition Names"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__triggered_transition_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Triggered Transition Names" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__triggered_transition_names {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__triggered_transition_names ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Advancedsettings Dtmfsettingslist"
view: my_insights_table_1__json_payload__queryresult__advancedsettings__dtmfsettingslist {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Enabled" in Explore.

  dimension: enabled {
    type: yesno
    sql: ${TABLE}.enabled ;;
  }

  dimension: maxdigits {
    type: number
    sql: ${TABLE}.maxdigits ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_maxdigits {
    type: sum
    sql: ${maxdigits} ;;  }
  measure: average_maxdigits {
    type: average
    sql: ${maxdigits} ;;  }

  dimension: usesystementityrule {
    type: yesno
    sql: ${TABLE}.usesystementityrule ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Step 10 Statemachine Flowstate Flowid" in Explore.

  dimension: step_10__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.flowid ;;
    group_label: "Step 10 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_10__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.name ;;
    group_label: "Step 10 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_10__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_10.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 10 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_10__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 10 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_10__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 10 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_10__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 10 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_10__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_10.statemachine.flowstate.version ;;
    group_label: "Step 10 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_10__type {
    type: string
    sql: ${TABLE}.step_10.type ;;
    group_label: "Step 10"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__event {
    type: string
    sql: ${TABLE}.step_1.initialstate.event ;;
    group_label: "Step 1 Initialstate"
    group_item_label: "Event"
  }

  dimension: step_1__initialstate__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.flowid ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_1__initialstate__flowstate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.name ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__activeparameter {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.activeparameter ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Activeparameter"
  }

  dimension: step_1__initialstate__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.formfilled ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_1__initialstate__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.name ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.pageid ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_1__initialstate__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.status ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_1__initialstate__flowstate__version {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.version ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Version"
  }

  dimension: step_1__initialstate__matchedintent__active {
    type: yesno
    sql: ${TABLE}.step_1.initialstate.matchedintent.active ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Active"
  }

  dimension: step_1__initialstate__matchedintent__displayname {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.displayname ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Displayname"
  }

  dimension: step_1__initialstate__matchedintent__id {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.id ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "ID"
  }

  dimension: step_1__initialstate__matchedintent__parameters__benefit_last_name__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.benefit_last_name.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Benefit Last Name"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__benefit_last_name__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.benefit_last_name.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Benefit Last Name"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__benefit_last_name__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.benefit_last_name.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Benefit Last Name"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__capture_firstletter__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.capture_firstletter.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Capture Firstletter"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__capture_firstletter__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.capture_firstletter.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Capture Firstletter"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__capture_firstletter__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.capture_firstletter.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Capture Firstletter"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__dob__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.dob.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Dob"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__dob__resolved__day {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.dob.resolved.day ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Dob Resolved"
    group_item_label: "Day"
  }

  dimension: step_1__initialstate__matchedintent__parameters__dob__resolved__month {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.dob.resolved.month ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Dob Resolved"
    group_item_label: "Month"
  }

  dimension: step_1__initialstate__matchedintent__parameters__dob__resolved__year {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.dob.resolved.year ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Dob Resolved"
    group_item_label: "Year"
  }

  dimension: step_1__initialstate__matchedintent__parameters__dob__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.dob.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Dob"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__first_name__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.first_name.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters First Name"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__first_name__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.first_name.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters First Name"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__first_name__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.first_name.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters First Name"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__last_name__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.last_name.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Last Name"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__last_name__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.last_name.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Last Name"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__last_name__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.last_name.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Last Name"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__number__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.number.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Number"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__number__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.number.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Number"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__number__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.number.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Number"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__parameters__phone_number__original {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.phone_number.original ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Phone Number"
    group_item_label: "Original"
  }

  dimension: step_1__initialstate__matchedintent__parameters__phone_number__resolved {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.phone_number.resolved ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Phone Number"
    group_item_label: "Resolved"
  }

  dimension: step_1__initialstate__matchedintent__parameters__phone_number__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.parameters.phone_number.type ;;
    group_label: "Step 1 Initialstate Matchedintent Parameters Phone Number"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__matchedintent__score {
    type: number
    sql: ${TABLE}.step_1.initialstate.matchedintent.score ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Score"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_step_1__initialstate__matchedintent__score {
    type: sum
    sql: ${step_1__initialstate__matchedintent__score} ;;  }
  measure: average_step_1__initialstate__matchedintent__score {
    type: average
    sql: ${step_1__initialstate__matchedintent__score} ;;  }

  dimension: step_1__initialstate__matchedintent__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.type ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__sessionparameters__benefit_last_name {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.benefit_last_name ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Benefit Last Name"
  }

  dimension: step_1__initialstate__sessionparameters__capture_firstletter {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.capture_firstletter ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Capture Firstletter"
  }

  dimension: step_1__initialstate__sessionparameters__captured_first_letter {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.captured_first_letter ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Captured First Letter"
  }

  dimension: step_1__initialstate__sessionparameters__captured_first_letter_range {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.captured_first_letter_range ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Captured First Letter Range"
  }

  dimension: step_1__initialstate__sessionparameters__captured_question {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.captured_question ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Captured Question"
  }

  dimension: step_1__initialstate__sessionparameters__dob__day {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.dob.day ;;
    group_label: "Step 1 Initialstate Sessionparameters Dob"
    group_item_label: "Day"
  }

  dimension: step_1__initialstate__sessionparameters__dob__month {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.dob.month ;;
    group_label: "Step 1 Initialstate Sessionparameters Dob"
    group_item_label: "Month"
  }

  dimension: step_1__initialstate__sessionparameters__dob__year {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.dob.year ;;
    group_label: "Step 1 Initialstate Sessionparameters Dob"
    group_item_label: "Year"
  }

  dimension: step_1__initialstate__sessionparameters__first_name {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.first_name ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "First Name"
  }

  dimension: step_1__initialstate__sessionparameters__is_benefit {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.is_benefit ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Is Benefit"
  }

  dimension: step_1__initialstate__sessionparameters__is_general {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.is_general ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Is General"
  }

  dimension: step_1__initialstate__sessionparameters__last_answered {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_answered ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Answered"
  }

  dimension: step_1__initialstate__sessionparameters__last_answered_text {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_answered_text ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Answered Text"
  }

  dimension: step_1__initialstate__sessionparameters__last_answered_voice {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_answered_voice ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: step_1__initialstate__sessionparameters__last_captured {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_captured ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Captured"
  }

  dimension: step_1__initialstate__sessionparameters__last_name {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_name ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Name"
  }

  dimension: step_1__initialstate__sessionparameters__last_question {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_question ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Question"
  }

  dimension: step_1__initialstate__sessionparameters__max_retry {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.max_retry ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Max Retry"
  }

  dimension: step_1__initialstate__sessionparameters__number {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.number ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Number"
  }

  dimension: step_1__initialstate__sessionparameters__phone_number {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.phone_number ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Phone Number"
  }

  dimension: step_1__initialstate__sessionparameters__phone_retry {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.phone_retry ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Phone Retry"
  }

  dimension: step_1__initialstate__sessionparameters__say_ticket {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.say_ticket ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Say Ticket"
  }

  dimension: step_1__initialstate__sessionparameters__ticket_generated {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.ticket_generated ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Ticket Generated"
  }

  dimension: step_1__initialstate__sessionparameters__ticket_number {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.ticket_number ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Ticket Number"
  }

  dimension: step_1__initialstate__sessionparameters__ticket_number_str {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.ticket_number_str ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Ticket Number Str"
  }

  dimension: step_1__type {
    type: string
    sql: ${TABLE}.step_1.type ;;
    group_label: "Step 1"
    group_item_label: "Type"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: step_2__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_2.functionexecution.responses ;;
    group_label: "Step 2 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___benefit_last_name {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.benefit_last_name ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Benefit Last Name"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___captured_first_letter {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.captured_first_letter ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Captured First Letter"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___captured_first_letter_range {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.captured_first_letter_range ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Captured First Letter Range"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___confirm_route {
    type: yesno
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.confirm_route ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Confirm Route"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___furast {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.furast ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Furast"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___is_benefit {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.is_benefit ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Is Benefit"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___is_general {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.is_general ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Is General"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_answered {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_answered ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Answered"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_answered_text {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_answered_text ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Answered Text"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_answered_voice {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_answered_voice ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Answered Voice"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_captured {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_captured ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Captured"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_question {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_question ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Question"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___max_retry {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.max_retry ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Max Retry"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___phone_retry {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.phone_retry ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Phone Retry"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___say_ticket {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.say_ticket ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Say Ticket"
  }

  dimension: step_2__functionexecution__webhook__displayname {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.displayname ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Displayname"
  }

  dimension: step_2__functionexecution__webhook__id {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.id ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "ID"
  }

  dimension: step_2__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.latency ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_2__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.status ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_2__functionexecution__webhook__tag {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.tag ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Tag"
  }

  dimension: step_2__functionexecution__webhook__unauthorized_fulfillmentresponse {
    type: yesno
    sql: ${TABLE}.step_2.functionexecution.webhook.unauthorized_fulfillmentresponse ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Unauthorized Fulfillmentresponse"
  }

  dimension: step_2__functionexecution__webhook__unrecognized_parameters__webhook_response___max_retry {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.unrecognized_parameters__webhook_response_.max_retry ;;
    group_label: "Step 2 Functionexecution Webhook Unrecognized Parameters Webhook Response"
    group_item_label: " Max Retry"
  }

  dimension: step_2__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.url ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_2__statemachine__flowleveltransition {
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowleveltransition ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Flowleveltransition"
  }

  dimension: step_2__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.flowid ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_2__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.name ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__activeparameter {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.activeparameter ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Activeparameter"
  }

  dimension: step_2__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_2__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_2__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_2__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.version ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_2__statemachine__targetflow {
    type: string
    sql: ${TABLE}.step_2.statemachine.targetflow ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Targetflow"
  }

  dimension: step_2__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_2.statemachine.targetpage ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_2__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredcondition ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_2__statemachine__triggeredevent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredevent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredevent"
  }

  dimension: step_2__statemachine__triggeredeventhandlerid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredeventhandlerid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredeventhandlerid"
  }

  dimension: step_2__statemachine__triggeredintent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredintent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredintent"
  }

  dimension: step_2__statemachine__triggeredtransitionroutegroupid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredtransitionroutegroupid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredtransitionroutegroupid"
  }

  dimension: step_2__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_2__type {
    type: string
    sql: ${TABLE}.step_2.type ;;
    group_label: "Step 2"
    group_item_label: "Type"
  }

  dimension: step_3__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_3.functionexecution.responses ;;
    group_label: "Step 3 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_3__functionexecution__sessionparameters_updated___captured_question {
    type: string
    sql: ${TABLE}.step_3.functionexecution.sessionparameters_updated_.captured_question ;;
    group_label: "Step 3 Functionexecution Sessionparameters Updated"
    group_item_label: " Captured Question"
  }

  dimension: step_3__functionexecution__sessionparameters_updated___is_benefit {
    type: string
    sql: ${TABLE}.step_3.functionexecution.sessionparameters_updated_.is_benefit ;;
    group_label: "Step 3 Functionexecution Sessionparameters Updated"
    group_item_label: " Is Benefit"
  }

  dimension: step_3__functionexecution__sessionparameters_updated___is_general {
    type: string
    sql: ${TABLE}.step_3.functionexecution.sessionparameters_updated_.is_general ;;
    group_label: "Step 3 Functionexecution Sessionparameters Updated"
    group_item_label: " Is General"
  }

  dimension: step_3__functionexecution__sessionparameters_updated___last_question {
    type: string
    sql: ${TABLE}.step_3.functionexecution.sessionparameters_updated_.last_question ;;
    group_label: "Step 3 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Question"
  }

  dimension: step_3__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.latency ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_3__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.status ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_3__functionexecution__webhook__unauthorized_fulfillmentresponse {
    type: yesno
    sql: ${TABLE}.step_3.functionexecution.webhook.unauthorized_fulfillmentresponse ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Unauthorized Fulfillmentresponse"
  }

  dimension: step_3__functionexecution__webhook__unrecognized_parameters__webhook_response___captured_question {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.unrecognized_parameters__webhook_response_.captured_question ;;
    group_label: "Step 3 Functionexecution Webhook Unrecognized Parameters Webhook Response"
    group_item_label: " Captured Question"
  }

  dimension: step_3__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.url ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_3__statemachine__flowleveltransition {
    type: yesno
    sql: ${TABLE}.step_3.statemachine.flowleveltransition ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Flowleveltransition"
  }

  dimension: step_3__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.flowid ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_3__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.name ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__activeparameter {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.activeparameter ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Activeparameter"
  }

  dimension: step_3__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_3__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_3__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_3__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.version ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_3__statemachine__targetflow {
    type: string
    sql: ${TABLE}.step_3.statemachine.targetflow ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Targetflow"
  }

  dimension: step_3__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_3.statemachine.targetpage ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_3__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_3.statemachine.triggeredcondition ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_3__statemachine__triggeredintent {
    type: string
    sql: ${TABLE}.step_3.statemachine.triggeredintent ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Triggeredintent"
  }

  dimension: step_3__statemachine__triggeredtransitionroutegroupid {
    type: string
    sql: ${TABLE}.step_3.statemachine.triggeredtransitionroutegroupid ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Triggeredtransitionroutegroupid"
  }

  dimension: step_3__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_3.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 3 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_3__type {
    type: string
    sql: ${TABLE}.step_3.type ;;
    group_label: "Step 3"
    group_item_label: "Type"
  }

  dimension: step_4__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_4.functionexecution.responses ;;
    group_label: "Step 4 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_4__functionexecution__sessionparameters_updated___captured_question {
    type: string
    sql: ${TABLE}.step_4.functionexecution.sessionparameters_updated_.captured_question ;;
    group_label: "Step 4 Functionexecution Sessionparameters Updated"
    group_item_label: " Captured Question"
  }

  dimension: step_4__functionexecution__sessionparameters_updated___ticket_generated {
    type: string
    sql: ${TABLE}.step_4.functionexecution.sessionparameters_updated_.ticket_generated ;;
    group_label: "Step 4 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Generated"
  }

  dimension: step_4__functionexecution__sessionparameters_updated___ticket_number {
    type: string
    sql: ${TABLE}.step_4.functionexecution.sessionparameters_updated_.ticket_number ;;
    group_label: "Step 4 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Number"
  }

  dimension: step_4__functionexecution__sessionparameters_updated___ticket_number_str {
    type: string
    sql: ${TABLE}.step_4.functionexecution.sessionparameters_updated_.ticket_number_str ;;
    group_label: "Step 4 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Number Str"
  }

  dimension: step_4__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_4.functionexecution.webhook.latency ;;
    group_label: "Step 4 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_4__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_4.functionexecution.webhook.status ;;
    group_label: "Step 4 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_4__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_4.functionexecution.webhook.url ;;
    group_label: "Step 4 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_4__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.flowid ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_4__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.name ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_4__statemachine__flowstate__pagestate__activeparameter {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.activeparameter ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Activeparameter"
  }

  dimension: step_4__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_4__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_4__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_4__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_4__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.version ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_4__statemachine__targetflow {
    type: string
    sql: ${TABLE}.step_4.statemachine.targetflow ;;
    group_label: "Step 4 Statemachine"
    group_item_label: "Targetflow"
  }

  dimension: step_4__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_4.statemachine.targetpage ;;
    group_label: "Step 4 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_4__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_4.statemachine.triggeredcondition ;;
    group_label: "Step 4 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_4__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_4.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 4 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_4__type {
    type: string
    sql: ${TABLE}.step_4.type ;;
    group_label: "Step 4"
    group_item_label: "Type"
  }

  dimension: step_5__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_5.functionexecution.responses ;;
    group_label: "Step 5 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_5__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_5.functionexecution.webhook.latency ;;
    group_label: "Step 5 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_5__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_5.functionexecution.webhook.status ;;
    group_label: "Step 5 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_5__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_5.functionexecution.webhook.url ;;
    group_label: "Step 5 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_5__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.flowid ;;
    group_label: "Step 5 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_5__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.name ;;
    group_label: "Step 5 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_5__statemachine__flowstate__pagestate__activeparameter {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.pagestate.activeparameter ;;
    group_label: "Step 5 Statemachine Flowstate Pagestate"
    group_item_label: "Activeparameter"
  }

  dimension: step_5__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_5.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 5 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_5__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 5 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_5__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 5 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_5__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 5 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_5__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_5.statemachine.flowstate.version ;;
    group_label: "Step 5 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_5__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_5.statemachine.targetpage ;;
    group_label: "Step 5 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_5__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_5.statemachine.triggeredcondition ;;
    group_label: "Step 5 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_5__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_5.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 5 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_5__type {
    type: string
    sql: ${TABLE}.step_5.type ;;
    group_label: "Step 5"
    group_item_label: "Type"
  }

  dimension: step_6__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_6.functionexecution.responses ;;
    group_label: "Step 6 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_6__functionexecution__sessionparameters_updated___ticket_generated {
    type: string
    sql: ${TABLE}.step_6.functionexecution.sessionparameters_updated_.ticket_generated ;;
    group_label: "Step 6 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Generated"
  }

  dimension: step_6__functionexecution__sessionparameters_updated___ticket_number {
    type: string
    sql: ${TABLE}.step_6.functionexecution.sessionparameters_updated_.ticket_number ;;
    group_label: "Step 6 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Number"
  }

  dimension: step_6__functionexecution__sessionparameters_updated___ticket_number_str {
    type: string
    sql: ${TABLE}.step_6.functionexecution.sessionparameters_updated_.ticket_number_str ;;
    group_label: "Step 6 Functionexecution Sessionparameters Updated"
    group_item_label: " Ticket Number Str"
  }

  dimension: step_6__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_6.functionexecution.webhook.latency ;;
    group_label: "Step 6 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_6__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_6.functionexecution.webhook.status ;;
    group_label: "Step 6 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_6__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_6.functionexecution.webhook.url ;;
    group_label: "Step 6 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_6__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.flowid ;;
    group_label: "Step 6 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_6__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.name ;;
    group_label: "Step 6 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_6__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_6.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 6 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_6__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 6 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_6__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 6 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_6__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 6 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_6__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_6.statemachine.flowstate.version ;;
    group_label: "Step 6 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_6__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_6.statemachine.targetpage ;;
    group_label: "Step 6 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_6__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_6.statemachine.triggeredcondition ;;
    group_label: "Step 6 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_6__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_6.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 6 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_6__type {
    type: string
    sql: ${TABLE}.step_6.type ;;
    group_label: "Step 6"
    group_item_label: "Type"
  }

  dimension: step_7__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_7.functionexecution.responses ;;
    group_label: "Step 7 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_7__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.flowid ;;
    group_label: "Step 7 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_7__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.name ;;
    group_label: "Step 7 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_7__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_7.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 7 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_7__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 7 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_7__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 7 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_7__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 7 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_7__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_7.statemachine.flowstate.version ;;
    group_label: "Step 7 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_7__type {
    type: string
    sql: ${TABLE}.step_7.type ;;
    group_label: "Step 7"
    group_item_label: "Type"
  }

  dimension: step_8__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_8.functionexecution.responses ;;
    group_label: "Step 8 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_8__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.flowid ;;
    group_label: "Step 8 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_8__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.name ;;
    group_label: "Step 8 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_8__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_8.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 8 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_8__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 8 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_8__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 8 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_8__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 8 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_8__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_8.statemachine.flowstate.version ;;
    group_label: "Step 8 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_8__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_8.statemachine.targetpage ;;
    group_label: "Step 8 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_8__statemachine__triggeredcondition {
    type: string
    sql: ${TABLE}.step_8.statemachine.triggeredcondition ;;
    group_label: "Step 8 Statemachine"
    group_item_label: "Triggeredcondition"
  }

  dimension: step_8__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_8.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 8 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_8__type {
    type: string
    sql: ${TABLE}.step_8.type ;;
    group_label: "Step 8"
    group_item_label: "Type"
  }

  dimension: step_9__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_9.functionexecution.responses ;;
    group_label: "Step 9 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_9__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.flowid ;;
    group_label: "Step 9 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_9__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.name ;;
    group_label: "Step 9 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_9__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 9 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_9__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 9 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_9__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 9 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_9__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_9.statemachine.flowstate.version ;;
    group_label: "Step 9 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_9__type {
    type: string
    sql: ${TABLE}.step_9.type ;;
    group_label: "Step 9"
    group_item_label: "Type"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Alternative Matched Intents"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__alternative_matched_intents {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active" in Explore.

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: displayname {
    type: string
    sql: ${TABLE}.displayname ;;
  }

  dimension: parameters__benefit_last_name__original {
    type: string
    sql: ${TABLE}.parameters.benefit_last_name.original ;;
    group_label: "Parameters Benefit Last Name"
    group_item_label: "Original"
  }

  dimension: parameters__benefit_last_name__resolved {
    type: string
    sql: ${TABLE}.parameters.benefit_last_name.resolved ;;
    group_label: "Parameters Benefit Last Name"
    group_item_label: "Resolved"
  }

  dimension: parameters__benefit_last_name__type {
    type: string
    sql: ${TABLE}.parameters.benefit_last_name.type ;;
    group_label: "Parameters Benefit Last Name"
    group_item_label: "Type"
  }

  dimension: parameters__capture_firstletter__original {
    type: string
    sql: ${TABLE}.parameters.capture_firstletter.original ;;
    group_label: "Parameters Capture Firstletter"
    group_item_label: "Original"
  }

  dimension: parameters__capture_firstletter__resolved {
    type: string
    sql: ${TABLE}.parameters.capture_firstletter.resolved ;;
    group_label: "Parameters Capture Firstletter"
    group_item_label: "Resolved"
  }

  dimension: parameters__capture_firstletter__type {
    type: string
    sql: ${TABLE}.parameters.capture_firstletter.type ;;
    group_label: "Parameters Capture Firstletter"
    group_item_label: "Type"
  }

  dimension: parameters__dob__original {
    type: string
    sql: ${TABLE}.parameters.dob.original ;;
    group_label: "Parameters Dob"
    group_item_label: "Original"
  }

  dimension: parameters__dob__resolved__day {
    type: string
    sql: ${TABLE}.parameters.dob.resolved.day ;;
    group_label: "Parameters Dob Resolved"
    group_item_label: "Day"
  }

  dimension: parameters__dob__resolved__month {
    type: string
    sql: ${TABLE}.parameters.dob.resolved.month ;;
    group_label: "Parameters Dob Resolved"
    group_item_label: "Month"
  }

  dimension: parameters__dob__resolved__year {
    type: string
    sql: ${TABLE}.parameters.dob.resolved.year ;;
    group_label: "Parameters Dob Resolved"
    group_item_label: "Year"
  }

  dimension: parameters__dob__type {
    type: string
    sql: ${TABLE}.parameters.dob.type ;;
    group_label: "Parameters Dob"
    group_item_label: "Type"
  }

  dimension: parameters__first_name__original {
    type: string
    sql: ${TABLE}.parameters.first_name.original ;;
    group_label: "Parameters First Name"
    group_item_label: "Original"
  }

  dimension: parameters__first_name__resolved {
    type: string
    sql: ${TABLE}.parameters.first_name.resolved ;;
    group_label: "Parameters First Name"
    group_item_label: "Resolved"
  }

  dimension: parameters__first_name__type {
    type: string
    sql: ${TABLE}.parameters.first_name.type ;;
    group_label: "Parameters First Name"
    group_item_label: "Type"
  }

  dimension: parameters__last_name__original {
    type: string
    sql: ${TABLE}.parameters.last_name.original ;;
    group_label: "Parameters Last Name"
    group_item_label: "Original"
  }

  dimension: parameters__last_name__resolved {
    type: string
    sql: ${TABLE}.parameters.last_name.resolved ;;
    group_label: "Parameters Last Name"
    group_item_label: "Resolved"
  }

  dimension: parameters__last_name__type {
    type: string
    sql: ${TABLE}.parameters.last_name.type ;;
    group_label: "Parameters Last Name"
    group_item_label: "Type"
  }

  dimension: parameters__number__original {
    type: string
    sql: ${TABLE}.parameters.number.original ;;
    group_label: "Parameters Number"
    group_item_label: "Original"
  }

  dimension: parameters__number__resolved {
    type: string
    sql: ${TABLE}.parameters.number.resolved ;;
    group_label: "Parameters Number"
    group_item_label: "Resolved"
  }

  dimension: parameters__number__type {
    type: string
    sql: ${TABLE}.parameters.number.type ;;
    group_label: "Parameters Number"
    group_item_label: "Type"
  }

  dimension: parameters__phone_number__original {
    type: string
    sql: ${TABLE}.parameters.phone_number.original ;;
    group_label: "Parameters Phone Number"
    group_item_label: "Original"
  }

  dimension: parameters__phone_number__resolved {
    type: string
    sql: ${TABLE}.parameters.phone_number.resolved ;;
    group_label: "Parameters Phone Number"
    group_item_label: "Resolved"
  }

  dimension: parameters__phone_number__type {
    type: string
    sql: ${TABLE}.parameters.phone_number.type ;;
    group_label: "Parameters Phone Number"
    group_item_label: "Type"
  }

  dimension: score {
    type: number
    sql: ${TABLE}.score ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_score {
    type: sum
    sql: ${score} ;;  }
  measure: average_score {
    type: average
    sql: ${score} ;;  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhooklatencies"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhooklatencies" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhooklatencies ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryinput Speechtranscripts Finaltranscripts Alternatives"
view: my_insights_table_1__json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryinput Speechtranscripts Finaltranscripts Alternatives" in Explore.

  dimension: my_insights_table_1__json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives {
    type: string
    sql: my_insights_table_1__json_payload__queryinput__speechtranscripts__finaltranscripts__alternatives ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookdisplaynames"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Webhookdisplaynames" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__webhookdisplaynames ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Transition Targets Chain"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__transition_targets_chain {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Targetflow" in Explore.

  dimension: targetflow {
    type: string
    sql: ${TABLE}.targetflow ;;
  }

  dimension: targetpage {
    type: string
    sql: ${TABLE}.targetpage ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages Text Text"
view: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages Text Text" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Responsemessages"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Speechsettings Endpointersensitivity" in Explore.

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: number
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: sum
    sql: ${interactivevoiceresponsesettings__speechsettings__endpointersensitivity} ;;  }
  measure: average_interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: average
    sql: ${interactivevoiceresponsesettings__speechsettings__endpointersensitivity} ;;  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Responsemessages Text Text"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Responsemessages Text Text" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages__text__text {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__responsemessages__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Webhookresponse Fulfillmentresponse Messages"
view: my_insights_table_1__jsonpayload_v3alpha1_webhookresponse__fulfillmentresponse__messages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Webhook Latencies Ms "
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Webhook Latencies Ms " in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__webhook_latencies__ms_ ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Triggered Transition Names"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Triggered Transition Names" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__triggered_transition_names ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Step 1 Initialstate Event" in Explore.

  dimension: step_1__initialstate__event {
    type: string
    sql: ${TABLE}.step_1.initialstate.event ;;
    group_label: "Step 1 Initialstate"
    group_item_label: "Event"
  }

  dimension: step_1__initialstate__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.flowid ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_1__initialstate__flowstate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.name ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.formfilled ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_1__initialstate__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.name ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_1__initialstate__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.pageid ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_1__initialstate__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.pagestate.status ;;
    group_label: "Step 1 Initialstate Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_1__initialstate__flowstate__version {
    type: string
    sql: ${TABLE}.step_1.initialstate.flowstate.version ;;
    group_label: "Step 1 Initialstate Flowstate"
    group_item_label: "Version"
  }

  dimension: step_1__initialstate__matchedintent__active {
    type: yesno
    sql: ${TABLE}.step_1.initialstate.matchedintent.active ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Active"
  }

  dimension: step_1__initialstate__matchedintent__displayname {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.displayname ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Displayname"
  }

  dimension: step_1__initialstate__matchedintent__id {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.id ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "ID"
  }

  dimension: step_1__initialstate__matchedintent__score {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.score ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Score"
  }

  dimension: step_1__initialstate__matchedintent__type {
    type: string
    sql: ${TABLE}.step_1.initialstate.matchedintent.type ;;
    group_label: "Step 1 Initialstate Matchedintent"
    group_item_label: "Type"
  }

  dimension: step_1__initialstate__sessionparameters__captured_question {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.captured_question ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Captured Question"
  }

  dimension: step_1__initialstate__sessionparameters__last_answered_text {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_answered_text ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Answered Text"
  }

  dimension: step_1__initialstate__sessionparameters__last_answered_voice {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.last_answered_voice ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Last Answered Voice"
  }

  dimension: step_1__initialstate__sessionparameters__max_retry {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.max_retry ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Max Retry"
  }

  dimension: step_1__initialstate__sessionparameters__phone_retry {
    type: string
    sql: ${TABLE}.step_1.initialstate.sessionparameters.phone_retry ;;
    group_label: "Step 1 Initialstate Sessionparameters"
    group_item_label: "Phone Retry"
  }

  dimension: step_1__type {
    type: string
    sql: ${TABLE}.step_1.type ;;
    group_label: "Step 1"
    group_item_label: "Type"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: step_2__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_2.functionexecution.responses ;;
    group_label: "Step 2 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_answered_text {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_answered_text ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Answered Text"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___last_answered_voice {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.last_answered_voice ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Last Answered Voice"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___max_retry {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.max_retry ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Max Retry"
  }

  dimension: step_2__functionexecution__sessionparameters_updated___phone_retry {
    type: string
    sql: ${TABLE}.step_2.functionexecution.sessionparameters_updated_.phone_retry ;;
    group_label: "Step 2 Functionexecution Sessionparameters Updated"
    group_item_label: " Phone Retry"
  }

  dimension: step_2__functionexecution__webhook__displayname {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.displayname ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Displayname"
  }

  dimension: step_2__functionexecution__webhook__id {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.id ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "ID"
  }

  dimension: step_2__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.latency ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_2__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.status ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_2__functionexecution__webhook__unauthorized_fulfillmentresponse {
    type: yesno
    sql: ${TABLE}.step_2.functionexecution.webhook.unauthorized_fulfillmentresponse ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "Unauthorized Fulfillmentresponse"
  }

  dimension: step_2__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_2.functionexecution.webhook.url ;;
    group_label: "Step 2 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_2__statemachine__flowleveltransition {
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowleveltransition ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Flowleveltransition"
  }

  dimension: step_2__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.flowid ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_2__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.name ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_2__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_2__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_2__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 2 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_2__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_2.statemachine.flowstate.version ;;
    group_label: "Step 2 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_2__statemachine__targetflow {
    type: string
    sql: ${TABLE}.step_2.statemachine.targetflow ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Targetflow"
  }

  dimension: step_2__statemachine__targetpage {
    type: string
    sql: ${TABLE}.step_2.statemachine.targetpage ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Targetpage"
  }

  dimension: step_2__statemachine__triggeredevent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredevent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredevent"
  }

  dimension: step_2__statemachine__triggeredeventhandlerid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredeventhandlerid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredeventhandlerid"
  }

  dimension: step_2__statemachine__triggeredintent {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredintent ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredintent"
  }

  dimension: step_2__statemachine__triggeredtransitionrouteid {
    type: string
    sql: ${TABLE}.step_2.statemachine.triggeredtransitionrouteid ;;
    group_label: "Step 2 Statemachine"
    group_item_label: "Triggeredtransitionrouteid"
  }

  dimension: step_2__type {
    type: string
    sql: ${TABLE}.step_2.type ;;
    group_label: "Step 2"
    group_item_label: "Type"
  }

  dimension: step_3__functionexecution__responses {
    hidden: yes
    sql: ${TABLE}.step_3.functionexecution.responses ;;
    group_label: "Step 3 Functionexecution"
    group_item_label: "Responses"
  }

  dimension: step_3__functionexecution__sessionparameters_updated___captured_question {
    type: string
    sql: ${TABLE}.step_3.functionexecution.sessionparameters_updated_.captured_question ;;
    group_label: "Step 3 Functionexecution Sessionparameters Updated"
    group_item_label: " Captured Question"
  }

  dimension: step_3__functionexecution__webhook__displayname {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.displayname ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Displayname"
  }

  dimension: step_3__functionexecution__webhook__id {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.id ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "ID"
  }

  dimension: step_3__functionexecution__webhook__latency {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.latency ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Latency"
  }

  dimension: step_3__functionexecution__webhook__status {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.status ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Status"
  }

  dimension: step_3__functionexecution__webhook__unauthorized_fulfillmentresponse {
    type: yesno
    sql: ${TABLE}.step_3.functionexecution.webhook.unauthorized_fulfillmentresponse ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "Unauthorized Fulfillmentresponse"
  }

  dimension: step_3__functionexecution__webhook__url {
    type: string
    sql: ${TABLE}.step_3.functionexecution.webhook.url ;;
    group_label: "Step 3 Functionexecution Webhook"
    group_item_label: "URL"
  }

  dimension: step_3__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.flowid ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_3__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.name ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_3__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_3__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 3 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_3__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_3.statemachine.flowstate.version ;;
    group_label: "Step 3 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_3__type {
    type: string
    sql: ${TABLE}.step_3.type ;;
    group_label: "Step 3"
    group_item_label: "Type"
  }

  dimension: step_4__statemachine__flowstate__flowid {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.flowid ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Flowid"
  }

  dimension: step_4__statemachine__flowstate__name {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.name ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Name"
  }

  dimension: step_4__statemachine__flowstate__pagestate__formfilled {
    type: yesno
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.formfilled ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Formfilled"
  }

  dimension: step_4__statemachine__flowstate__pagestate__name {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.name ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Name"
  }

  dimension: step_4__statemachine__flowstate__pagestate__pageid {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.pageid ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Pageid"
  }

  dimension: step_4__statemachine__flowstate__pagestate__status {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.pagestate.status ;;
    group_label: "Step 4 Statemachine Flowstate Pagestate"
    group_item_label: "Status"
  }

  dimension: step_4__statemachine__flowstate__version {
    type: string
    sql: ${TABLE}.step_4.statemachine.flowstate.version ;;
    group_label: "Step 4 Statemachine Flowstate"
    group_item_label: "Version"
  }

  dimension: step_4__type {
    type: string
    sql: ${TABLE}.step_4.type ;;
    group_label: "Step 4"
    group_item_label: "Type"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Alternative Matched Intents"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__alternative_matched_intents {
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Active" in Explore.

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: displayname {
    type: string
    sql: ${TABLE}.displayname ;;
  }

  dimension: score {
    type: string
    sql: ${TABLE}.score ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Dtmfsettings Enabled" in Explore.

  dimension: interactivevoiceresponsesettings__dtmfsettings__enabled {
    type: yesno
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.enabled ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Enabled"
  }

  dimension: interactivevoiceresponsesettings__dtmfsettings__maxdigits {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.maxdigits ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Maxdigits"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: text__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.text.allowplaybackinterruption ;;
    group_label: "Text"
    group_item_label: "Allowplaybackinterruption"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Ssml" in Explore.

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Speechsettings Endpointersensitivity" in Explore.

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: text__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.text.allowplaybackinterruption ;;
    group_label: "Text"
    group_item_label: "Allowplaybackinterruption"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Dtmfsettings Enabled" in Explore.

  dimension: interactivevoiceresponsesettings__dtmfsettings__enabled {
    type: yesno
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.enabled ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Enabled"
  }

  dimension: interactivevoiceresponsesettings__dtmfsettings__maxdigits {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.dtmfsettings.maxdigits ;;
    group_label: "Interactivevoiceresponsesettings Dtmfsettings"
    group_item_label: "Maxdigits"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: telephonytransfercall__phonenumber {
    type: string
    sql: ${TABLE}.telephonytransfercall.phonenumber ;;
    group_label: "Telephonytransfercall"
    group_item_label: "Phonenumber"
  }

  dimension: text__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.text.allowplaybackinterruption ;;
    group_label: "Text"
    group_item_label: "Allowplaybackinterruption"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Speechsettings Endpointersensitivity" in Explore.

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: telephonytransfercall__phonenumber {
    type: string
    sql: ${TABLE}.telephonytransfercall.phonenumber ;;
    group_label: "Telephonytransfercall"
    group_item_label: "Phonenumber"
  }

  dimension: text__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.text.allowplaybackinterruption ;;
    group_label: "Text"
    group_item_label: "Allowplaybackinterruption"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Transition Targets Chain"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__transition_targets_chain {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Targetflow" in Explore.

  dimension: targetflow {
    type: string
    sql: ${TABLE}.targetflow ;;
  }

  dimension: targetpage {
    type: string
    sql: ${TABLE}.targetpage ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 9 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_9__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 8 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_8__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 7 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_7__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 6 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_6__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 5 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_5__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 4 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_4__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 JSON Payload Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__json_payload__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Interactivevoiceresponsesettings Speechsettings Endpointersensitivity" in Explore.

  dimension: interactivevoiceresponsesettings__speechsettings__endpointersensitivity {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.endpointersensitivity ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Endpointersensitivity"
  }

  dimension: interactivevoiceresponsesettings__speechsettings__nospeechtimeout {
    type: string
    sql: ${TABLE}.interactivevoiceresponsesettings.speechsettings.nospeechtimeout ;;
    group_label: "Interactivevoiceresponsesettings Speechsettings"
    group_item_label: "Nospeechtimeout"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Outputaudiotext Allowplaybackinterruption" in Explore.

  dimension: outputaudiotext__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.outputaudiotext.allowplaybackinterruption ;;
    group_label: "Outputaudiotext"
    group_item_label: "Allowplaybackinterruption"
  }

  dimension: outputaudiotext__ssml {
    type: string
    sql: ${TABLE}.outputaudiotext.ssml ;;
    group_label: "Outputaudiotext"
    group_item_label: "Ssml"
  }

  dimension: responsetype {
    type: string
    sql: ${TABLE}.responsetype ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: text__allowplaybackinterruption {
    type: yesno
    sql: ${TABLE}.text.allowplaybackinterruption ;;
    group_label: "Text"
    group_item_label: "Allowplaybackinterruption"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: text__redactedtext {
    hidden: yes
    sql: ${TABLE}.text.redactedtext ;;
    group_label: "Text"
    group_item_label: "Redactedtext"
  }

  dimension: text__text {
    hidden: yes
    sql: ${TABLE}.text.text ;;
    group_label: "Text"
    group_item_label: "Text"
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Text" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__text ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 2 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_2__functionexecution__responses__text__redactedtext ;;
  }
}

# The name of this view in Looker is "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext"
view: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "My Insights Table 1 Jsonpayload V3alpha1 Detectintentresponse Queryresult Diagnosticinfo Execution Sequence Step 3 Functionexecution Responses Text Redactedtext" in Explore.

  dimension: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext {
    type: string
    sql: my_insights_table_1__jsonpayload_v3alpha1_detectintentresponse__queryresult__diagnosticinfo__execution_sequence__step_3__functionexecution__responses__text__redactedtext ;;
  }
}
