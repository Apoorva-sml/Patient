# Un-hide and use this explore, or copy the joins into another explore, to get all the fully nested relationships from this view
explore: patient_table {
  hidden: yes
    join: patient_table__link {
      view_label: "Patient Table: Link"
      sql: LEFT JOIN UNNEST(${patient_table.link}) as patient_table__link ;;
      relationship: one_to_many
    }
    join: patient_table__name {
      view_label: "Patient Table: Name"
      sql: LEFT JOIN UNNEST(${patient_table.name}) as patient_table__name ;;
      relationship: one_to_many
    }
    join: patient_table__photo {
      view_label: "Patient Table: Photo"
      sql: LEFT JOIN UNNEST(${patient_table.photo}) as patient_table__photo ;;
      relationship: one_to_many
    }
    join: patient_table__contact {
      view_label: "Patient Table: Contact"
      sql: LEFT JOIN UNNEST(${patient_table.contact}) as patient_table__contact ;;
      relationship: one_to_many
    }
    join: patient_table__telecom {
      view_label: "Patient Table: Telecom"
      sql: LEFT JOIN UNNEST(${patient_table.telecom}) as patient_table__telecom ;;
      relationship: one_to_many
    }
    join: patient_table__address {
      view_label: "Patient Table: Address"
      sql: LEFT JOIN UNNEST(${patient_table.address}) as patient_table__address ;;
      relationship: one_to_many
    }
    join: patient_table__identifier {
      view_label: "Patient Table: Identifier"
      sql: LEFT JOIN UNNEST(${patient_table.identifier}) as patient_table__identifier ;;
      relationship: one_to_many
    }
    join: patient_table__name__given {
      view_label: "Patient Table: Name Given"
      sql: LEFT JOIN UNNEST(${patient_table__name.given}) as patient_table__name__given ;;
      relationship: one_to_many
    }
    join: patient_table__name__prefix {
      view_label: "Patient Table: Name Prefix"
      sql: LEFT JOIN UNNEST(${patient_table__name.prefix}) as patient_table__name__prefix ;;
      relationship: one_to_many
    }
    join: patient_table__name__suffix {
      view_label: "Patient Table: Name Suffix"
      sql: LEFT JOIN UNNEST(${patient_table__name.suffix}) as patient_table__name__suffix ;;
      relationship: one_to_many
    }
    join: patient_table__address__line {
      view_label: "Patient Table: Address Line"
      sql: LEFT JOIN UNNEST(${patient_table__address.line}) as patient_table__address__line ;;
      relationship: one_to_many
    }
    join: patient_table__meta__profile {
      view_label: "Patient Table: Meta Profile"
      sql: LEFT JOIN UNNEST(${patient_table.meta__profile}) as patient_table__meta__profile ;;
      relationship: one_to_many
    }
    join: patient_table__communication {
      view_label: "Patient Table: Communication"
      sql: LEFT JOIN UNNEST(${patient_table.communication}) as patient_table__communication ;;
      relationship: one_to_many
    }
    join: patient_table__meta__tag {
      view_label: "Patient Table: Meta Tag"
      sql: LEFT JOIN UNNEST(${patient_table.meta__tag}) as patient_table__meta__tag ;;
      relationship: one_to_many
    }
    join: patient_table__contact__name__given {
      view_label: "Patient Table: Contact Name Given"
      sql: LEFT JOIN UNNEST(${patient_table__contact.name__given}) as patient_table__contact__name__given ;;
      relationship: one_to_many
    }
    join: patient_table__meta__security {
      view_label: "Patient Table: Meta Security"
      sql: LEFT JOIN UNNEST(${patient_table.meta__security}) as patient_table__meta__security ;;
      relationship: one_to_many
    }
    join: patient_table__contact__name__prefix {
      view_label: "Patient Table: Contact Name Prefix"
      sql: LEFT JOIN UNNEST(${patient_table__contact.name__prefix}) as patient_table__contact__name__prefix ;;
      relationship: one_to_many
    }
    join: patient_table__contact__name__suffix {
      view_label: "Patient Table: Contact Name Suffix"
      sql: LEFT JOIN UNNEST(${patient_table__contact.name__suffix}) as patient_table__contact__name__suffix ;;
      relationship: one_to_many
    }
    join: patient_table__contact__telecom {
      view_label: "Patient Table: Contact Telecom"
      sql: LEFT JOIN UNNEST(${patient_table__contact.telecom}) as patient_table__contact__telecom ;;
      relationship: one_to_many
    }
    join: patient_table__general_practitioner {
      view_label: "Patient Table: Generalpractitioner"
      sql: LEFT JOIN UNNEST(${patient_table.general_practitioner}) as patient_table__general_practitioner ;;
      relationship: one_to_many
    }
    join: patient_table__contact__address__line {
      view_label: "Patient Table: Contact Address Line"
      sql: LEFT JOIN UNNEST(${patient_table__contact.address__line}) as patient_table__contact__address__line ;;
      relationship: one_to_many
    }
    join: patient_table__animal__breed__coding {
      view_label: "Patient Table: Animal Breed Coding"
      sql: LEFT JOIN UNNEST(${patient_table.animal__breed__coding}) as patient_table__animal__breed__coding ;;
      relationship: one_to_many
    }
    join: patient_table__contact__relationship {
      view_label: "Patient Table: Contact Relationship"
      sql: LEFT JOIN UNNEST(${patient_table__contact.relationship}) as patient_table__contact__relationship ;;
      relationship: one_to_many
    }
    join: patient_table__marital_status__coding {
      view_label: "Patient Table: Maritalstatus Coding"
      sql: LEFT JOIN UNNEST(${patient_table.marital_status__coding}) as patient_table__marital_status__coding ;;
      relationship: one_to_many
    }
    join: patient_table__animal__species__coding {
      view_label: "Patient Table: Animal Species Coding"
      sql: LEFT JOIN UNNEST(${patient_table.animal__species__coding}) as patient_table__animal__species__coding ;;
      relationship: one_to_many
    }
    join: patient_table__identifier__type__coding {
      view_label: "Patient Table: Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__identifier.type__coding}) as patient_table__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__animal__gender_status__coding {
      view_label: "Patient Table: Animal Genderstatus Coding"
      sql: LEFT JOIN UNNEST(${patient_table.animal__gender_status__coding}) as patient_table__animal__gender_status__coding ;;
      relationship: one_to_many
    }
    join: patient_table__contact__relationship__coding {
      view_label: "Patient Table: Contact Relationship Coding"
      sql: LEFT JOIN UNNEST(${patient_table__contact__relationship.coding}) as patient_table__contact__relationship__coding ;;
      relationship: one_to_many
    }
    join: patient_table__communication__language__coding {
      view_label: "Patient Table: Communication Language Coding"
      sql: LEFT JOIN UNNEST(${patient_table__communication.language__coding}) as patient_table__communication__language__coding ;;
      relationship: one_to_many
    }
    join: patient_table__link__other__identifier__type__coding {
      view_label: "Patient Table: Link Other Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__link.other__identifier__type__coding}) as patient_table__link__other__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__general_practitioner__identifier__type__coding {
      view_label: "Patient Table: Generalpractitioner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__general_practitioner.identifier__type__coding}) as patient_table__general_practitioner__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__identifier__assigner__identifier__type__coding {
      view_label: "Patient Table: Identifier Assigner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__identifier.assigner__identifier__type__coding}) as patient_table__identifier__assigner__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__contact__organization__identifier__type__coding {
      view_label: "Patient Table: Contact Organization Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__contact.organization__identifier__type__coding}) as patient_table__contact__organization__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__managing_organization__identifier__type__coding {
      view_label: "Patient Table: Managingorganization Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table.managing_organization__identifier__type__coding}) as patient_table__managing_organization__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__link__other__identifier__assigner__identifier__type__coding {
      view_label: "Patient Table: Link Other Identifier Assigner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__link.other__identifier__assigner__identifier__type__coding}) as patient_table__link__other__identifier__assigner__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__general_practitioner__identifier__assigner__identifier__type__coding {
      view_label: "Patient Table: Generalpractitioner Identifier Assigner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__general_practitioner.identifier__assigner__identifier__type__coding}) as patient_table__general_practitioner__identifier__assigner__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__contact__organization__identifier__assigner__identifier__type__coding {
      view_label: "Patient Table: Contact Organization Identifier Assigner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table__contact.organization__identifier__assigner__identifier__type__coding}) as patient_table__contact__organization__identifier__assigner__identifier__type__coding ;;
      relationship: one_to_many
    }
    join: patient_table__managing_organization__identifier__assigner__identifier__type__coding {
      view_label: "Patient Table: Managingorganization Identifier Assigner Identifier Type Coding"
      sql: LEFT JOIN UNNEST(${patient_table.managing_organization__identifier__assigner__identifier__type__coding}) as patient_table__managing_organization__identifier__assigner__identifier__type__coding ;;
      relationship: one_to_many
    }
}
# The name of this view in Looker is "Patient Table"
view: patient_table {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `optical-legend-400205.my_insights_dataset.patient_table` ;;
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
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: animal__breed__coding {
    hidden: yes
    sql: ${TABLE}.animal.breed.coding ;;
    group_label: "Animal Breed"
    group_item_label: "Coding"
  }

  dimension: animal__breed__text {
    type: string
    sql: ${TABLE}.animal.breed.text ;;
    group_label: "Animal Breed"
    group_item_label: "Text"
  }

  dimension: animal__gender_status__coding {
    hidden: yes
    sql: ${TABLE}.animal.genderStatus.coding ;;
    group_label: "Animal Gender Status"
    group_item_label: "Coding"
  }

  dimension: animal__gender_status__text {
    type: string
    sql: ${TABLE}.animal.genderStatus.text ;;
    group_label: "Animal Gender Status"
    group_item_label: "Text"
  }

  dimension: animal__species__coding {
    hidden: yes
    sql: ${TABLE}.animal.species.coding ;;
    group_label: "Animal Species"
    group_item_label: "Coding"
  }

  dimension: animal__species__text {
    type: string
    sql: ${TABLE}.animal.species.text ;;
    group_label: "Animal Species"
    group_item_label: "Text"
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: birth_place__value__address__city {
    type: string
    sql: ${TABLE}.birthPlace.value.address.city ;;
    group_label: "Birth Place Value Address"
    group_item_label: "City"
  }

  dimension: birth_place__value__address__country {
    type: string
    sql: ${TABLE}.birthPlace.value.address.country ;;
    group_label: "Birth Place Value Address"
    group_item_label: "Country"
  }

  dimension: birth_place__value__address__state {
    type: string
    sql: ${TABLE}.birthPlace.value.address.state ;;
    group_label: "Birth Place Value Address"
    group_item_label: "State"
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: contact {
    hidden: yes
    sql: ${TABLE}.contact ;;
  }

  dimension: deceased__boolean {
    type: yesno
    sql: ${TABLE}.deceased.boolean ;;
    group_label: "Deceased"
    group_item_label: "Boolean"
  }

  dimension: deceased__date_time {
    type: string
    sql: ${TABLE}.deceased.dateTime ;;
    group_label: "Deceased"
    group_item_label: "Date Time"
  }

  dimension: disability_adjusted_life_years__value__decimal {
    type: number
    sql: ${TABLE}.disability_adjusted_life_years.value.decimal ;;
    group_label: "Disability Adjusted Life Years Value"
    group_item_label: "Decimal"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_disability_adjusted_life_years__value__decimal {
    type: sum
    sql: ${disability_adjusted_life_years__value__decimal} ;;  }
  measure: average_disability_adjusted_life_years__value__decimal {
    type: average
    sql: ${disability_adjusted_life_years__value__decimal} ;;  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: general_practitioner {
    hidden: yes
    sql: ${TABLE}.generalPractitioner ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: link {
    hidden: yes
    sql: ${TABLE}.link ;;
  }

  dimension: managing_organization__display {
    type: string
    sql: ${TABLE}.managingOrganization.display ;;
    group_label: "Managing Organization"
    group_item_label: "Display"
  }

  dimension: managing_organization__identifier__assigner__display {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.display ;;
    group_label: "Managing Organization Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: managing_organization__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.assigner.display ;;
    group_label: "Managing Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: managing_organization__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Managing Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: managing_organization__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Managing Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: managing_organization__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.period.`end` ;;
    group_label: "Managing Organization Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: managing_organization__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.period.start ;;
    group_label: "Managing Organization Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: managing_organization__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.system ;;
    group_label: "Managing Organization Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: managing_organization__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.type.coding ;;
    group_label: "Managing Organization Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: managing_organization__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.type.text ;;
    group_label: "Managing Organization Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: managing_organization__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.use ;;
    group_label: "Managing Organization Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: managing_organization__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.identifier.value ;;
    group_label: "Managing Organization Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: managing_organization__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.organizationId ;;
    group_label: "Managing Organization Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: managing_organization__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.assigner.reference ;;
    group_label: "Managing Organization Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: managing_organization__identifier__period__end {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.period.`end` ;;
    group_label: "Managing Organization Identifier Period"
    group_item_label: "End"
  }

  dimension: managing_organization__identifier__period__start {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.period.start ;;
    group_label: "Managing Organization Identifier Period"
    group_item_label: "Start"
  }

  dimension: managing_organization__identifier__system {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.system ;;
    group_label: "Managing Organization Identifier"
    group_item_label: "System"
  }

  dimension: managing_organization__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.managingOrganization.identifier.type.coding ;;
    group_label: "Managing Organization Identifier Type"
    group_item_label: "Coding"
  }

  dimension: managing_organization__identifier__type__text {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.type.text ;;
    group_label: "Managing Organization Identifier Type"
    group_item_label: "Text"
  }

  dimension: managing_organization__identifier__use {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.use ;;
    group_label: "Managing Organization Identifier"
    group_item_label: "Use"
  }

  dimension: managing_organization__identifier__value {
    type: string
    sql: ${TABLE}.managingOrganization.identifier.value ;;
    group_label: "Managing Organization Identifier"
    group_item_label: "Value"
  }

  dimension: managing_organization__organization_id {
    type: string
    sql: ${TABLE}.managingOrganization.organizationId ;;
    group_label: "Managing Organization"
    group_item_label: "Organization ID"
  }

  dimension: managing_organization__reference {
    type: string
    sql: ${TABLE}.managingOrganization.reference ;;
    group_label: "Managing Organization"
    group_item_label: "Reference"
  }

  dimension: marital_status__coding {
    hidden: yes
    sql: ${TABLE}.maritalStatus.coding ;;
    group_label: "Marital Status"
    group_item_label: "Coding"
  }

  dimension: marital_status__text {
    type: string
    sql: ${TABLE}.maritalStatus.text ;;
    group_label: "Marital Status"
    group_item_label: "Text"
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: meta__last_updated {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.meta.lastUpdated ;;
  }

  dimension: meta__profile {
    hidden: yes
    sql: ${TABLE}.meta.profile ;;
    group_label: "Meta"
    group_item_label: "Profile"
  }

  dimension: meta__security {
    hidden: yes
    sql: ${TABLE}.meta.security ;;
    group_label: "Meta"
    group_item_label: "Security"
  }

  dimension: meta__tag {
    hidden: yes
    sql: ${TABLE}.meta.tag ;;
    group_label: "Meta"
    group_item_label: "Tag"
  }

  dimension: meta__version_id {
    type: string
    sql: ${TABLE}.meta.versionId ;;
    group_label: "Meta"
    group_item_label: "Version ID"
  }

  dimension: multiple_birth__boolean {
    type: yesno
    sql: ${TABLE}.multipleBirth.boolean ;;
    group_label: "Multiple Birth"
    group_item_label: "Boolean"
  }

  dimension: multiple_birth__integer {
    type: number
    sql: ${TABLE}.multipleBirth.integer ;;
    group_label: "Multiple Birth"
    group_item_label: "Integer"
  }

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: patient_mothers_maiden_name__value__string {
    type: string
    sql: ${TABLE}.patient_mothersMaidenName.value.string ;;
    group_label: "Patient Mothers Maiden Name Value"
    group_item_label: "String"
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: quality_adjusted_life_years__value__decimal {
    type: number
    sql: ${TABLE}.quality_adjusted_life_years.value.decimal ;;
    group_label: "Quality Adjusted Life Years Value"
    group_item_label: "Decimal"
  }

  dimension: shr_actor_fictional_person_extension__value__boolean {
    type: yesno
    sql: ${TABLE}.shr_actor_FictionalPerson_extension.value.boolean ;;
    group_label: "Shr Actor Fictional Person Extension Value"
    group_item_label: "Boolean"
  }

  dimension: shr_demographics_social_security_number_extension__value__string {
    type: string
    sql: ${TABLE}.shr_demographics_SocialSecurityNumber_extension.value.string ;;
    group_label: "Shr Demographics Social Security Number Extension Value"
    group_item_label: "String"
  }

  dimension: shr_entity_fathers_name_extension__value__human_name__text {
    type: string
    sql: ${TABLE}.shr_entity_FathersName_extension.value.humanName.text ;;
    group_label: "Shr Entity Fathers Name Extension Value Human Name"
    group_item_label: "Text"
  }

  dimension: shr_entity_person_extension__value__reference__basic_id {
    type: string
    sql: ${TABLE}.shr_entity_Person_extension.value.reference.basicId ;;
    group_label: "Shr Entity Person Extension Value Reference"
    group_item_label: "Basic ID"
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }

  dimension: text__div {
    type: string
    sql: ${TABLE}.text.div ;;
    group_label: "Text"
    group_item_label: "Div"
  }

  dimension: text__status {
    type: string
    sql: ${TABLE}.text.status ;;
    group_label: "Text"
    group_item_label: "Status"
  }

  dimension: us_core_birthsex__value__code {
    type: string
    sql: ${TABLE}.us_core_birthsex.value.code ;;
    group_label: "Us Core Birthsex Value"
    group_item_label: "Code"
  }

  dimension: us_core_ethnicity__omb_category__value__coding__code {
    type: string
    sql: ${TABLE}.us_core_ethnicity.ombCategory.value.coding.code ;;
    group_label: "Us Core Ethnicity Omb Category Value Coding"
    group_item_label: "Code"
  }

  dimension: us_core_ethnicity__omb_category__value__coding__display {
    type: string
    sql: ${TABLE}.us_core_ethnicity.ombCategory.value.coding.display ;;
    group_label: "Us Core Ethnicity Omb Category Value Coding"
    group_item_label: "Display"
  }

  dimension: us_core_ethnicity__omb_category__value__coding__system {
    type: string
    sql: ${TABLE}.us_core_ethnicity.ombCategory.value.coding.system ;;
    group_label: "Us Core Ethnicity Omb Category Value Coding"
    group_item_label: "System"
  }

  dimension: us_core_ethnicity__text__value__string {
    type: string
    sql: ${TABLE}.us_core_ethnicity.text.value.string ;;
    group_label: "Us Core Ethnicity Text Value"
    group_item_label: "String"
  }

  dimension: us_core_race__omb_category__value__coding__code {
    type: string
    sql: ${TABLE}.us_core_race.ombCategory.value.coding.code ;;
    group_label: "Us Core Race Omb Category Value Coding"
    group_item_label: "Code"
  }

  dimension: us_core_race__omb_category__value__coding__display {
    type: string
    sql: ${TABLE}.us_core_race.ombCategory.value.coding.display ;;
    group_label: "Us Core Race Omb Category Value Coding"
    group_item_label: "Display"
  }

  dimension: us_core_race__omb_category__value__coding__system {
    type: string
    sql: ${TABLE}.us_core_race.ombCategory.value.coding.system ;;
    group_label: "Us Core Race Omb Category Value Coding"
    group_item_label: "System"
  }

  dimension: us_core_race__text__value__string {
    type: string
    sql: ${TABLE}.us_core_race.text.value.string ;;
    group_label: "Us Core Race Text Value"
    group_item_label: "String"
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}

# The name of this view in Looker is "Patient Table Link"
view: patient_table__link {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Other Display" in Explore.

  dimension: other__display {
    type: string
    sql: ${TABLE}.other.display ;;
    group_label: "Other"
    group_item_label: "Display"
  }

  dimension: other__identifier__assigner__display {
    type: string
    sql: ${TABLE}.other.identifier.assigner.display ;;
    group_label: "Other Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: other__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.assigner.display ;;
    group_label: "Other Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: other__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Other Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: other__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Other Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: other__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.period.`end` ;;
    group_label: "Other Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: other__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.period.start ;;
    group_label: "Other Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: other__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.system ;;
    group_label: "Other Identifier Assigner Identifier"
    group_item_label: "System"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: other__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.other.identifier.assigner.identifier.type.coding ;;
    group_label: "Other Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: other__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.type.text ;;
    group_label: "Other Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: other__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.use ;;
    group_label: "Other Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: other__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.other.identifier.assigner.identifier.value ;;
    group_label: "Other Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: other__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.other.identifier.assigner.organizationId ;;
    group_label: "Other Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: other__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.other.identifier.assigner.reference ;;
    group_label: "Other Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: other__identifier__period__end {
    type: string
    sql: ${TABLE}.other.identifier.period.`end` ;;
    group_label: "Other Identifier Period"
    group_item_label: "End"
  }

  dimension: other__identifier__period__start {
    type: string
    sql: ${TABLE}.other.identifier.period.start ;;
    group_label: "Other Identifier Period"
    group_item_label: "Start"
  }

  dimension: other__identifier__system {
    type: string
    sql: ${TABLE}.other.identifier.system ;;
    group_label: "Other Identifier"
    group_item_label: "System"
  }

  dimension: other__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.other.identifier.type.coding ;;
    group_label: "Other Identifier Type"
    group_item_label: "Coding"
  }

  dimension: other__identifier__type__text {
    type: string
    sql: ${TABLE}.other.identifier.type.text ;;
    group_label: "Other Identifier Type"
    group_item_label: "Text"
  }

  dimension: other__identifier__use {
    type: string
    sql: ${TABLE}.other.identifier.use ;;
    group_label: "Other Identifier"
    group_item_label: "Use"
  }

  dimension: other__identifier__value {
    type: string
    sql: ${TABLE}.other.identifier.value ;;
    group_label: "Other Identifier"
    group_item_label: "Value"
  }

  dimension: other__patient_id {
    type: string
    sql: ${TABLE}.other.patientId ;;
    group_label: "Other"
    group_item_label: "Patient ID"
  }

  dimension: other__reference {
    type: string
    sql: ${TABLE}.other.reference ;;
    group_label: "Other"
    group_item_label: "Reference"
  }

  dimension: other__related_person_id {
    type: string
    sql: ${TABLE}.other.relatedPersonId ;;
    group_label: "Other"
    group_item_label: "Related Person ID"
  }

  dimension: patient_table__link {
    type: string
    hidden: yes
    sql: patient_table__link ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }
}

# The name of this view in Looker is "Patient Table Name"
view: patient_table__name {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Family" in Explore.

  dimension: family {
    type: string
    sql: family ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: given {
    hidden: yes
    sql: given ;;
  }

  dimension: patient_table__name {
    type: string
    hidden: yes
    sql: patient_table__name ;;
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: prefix {
    hidden: yes
    sql: prefix ;;
  }

  dimension: suffix {
    hidden: yes
    sql: suffix ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: use {
    type: string
    sql: use ;;
  }
}

# The name of this view in Looker is "Patient Table Photo"
view: patient_table__photo {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Content Type" in Explore.

  dimension: content_type {
    type: string
    sql: contentType ;;
  }

  dimension: creation {
    type: string
    sql: creation ;;
  }

  dimension: data {
    type: string
    sql: data ;;
  }

  dimension: hash {
    type: string
    sql: `hash` ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: patient_table__photo {
    type: string
    hidden: yes
    sql: patient_table__photo ;;
  }

  dimension: size {
    type: number
    sql: size ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_size {
    type: sum
    sql: ${size} ;;  }
  measure: average_size {
    type: average
    sql: ${size} ;;  }

  dimension: title {
    type: string
    sql: title ;;
  }

  dimension: url {
    type: string
    sql: url ;;
  }
}

# The name of this view in Looker is "Patient Table Contact"
view: patient_table__contact {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Address City" in Explore.

  dimension: address__city {
    type: string
    sql: ${TABLE}.address.city ;;
    group_label: "Address"
    group_item_label: "City"
  }

  dimension: address__country {
    type: string
    sql: ${TABLE}.address.country ;;
    group_label: "Address"
    group_item_label: "Country"
  }

  dimension: address__district {
    type: string
    sql: ${TABLE}.address.district ;;
    group_label: "Address"
    group_item_label: "District"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: address__line {
    hidden: yes
    sql: ${TABLE}.address.line ;;
    group_label: "Address"
    group_item_label: "Line"
  }

  dimension: address__period__end {
    type: string
    sql: ${TABLE}.address.period.`end` ;;
    group_label: "Address Period"
    group_item_label: "End"
  }

  dimension: address__period__start {
    type: string
    sql: ${TABLE}.address.period.start ;;
    group_label: "Address Period"
    group_item_label: "Start"
  }

  dimension: address__postal_code {
    type: string
    sql: ${TABLE}.address.postalCode ;;
    group_label: "Address"
    group_item_label: "Postal Code"
  }

  dimension: address__state {
    type: string
    sql: ${TABLE}.address.state ;;
    group_label: "Address"
    group_item_label: "State"
  }

  dimension: address__text {
    type: string
    sql: ${TABLE}.address.text ;;
    group_label: "Address"
    group_item_label: "Text"
  }

  dimension: address__type {
    type: string
    sql: ${TABLE}.address.type ;;
    group_label: "Address"
    group_item_label: "Type"
  }

  dimension: address__use {
    type: string
    sql: ${TABLE}.address.use ;;
    group_label: "Address"
    group_item_label: "Use"
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name__family {
    type: string
    sql: ${TABLE}.name.family ;;
    group_label: "Name"
    group_item_label: "Family"
  }

  dimension: name__given {
    hidden: yes
    sql: ${TABLE}.name.given ;;
    group_label: "Name"
    group_item_label: "Given"
  }

  dimension: name__period__end {
    type: string
    sql: ${TABLE}.name.period.`end` ;;
    group_label: "Name Period"
    group_item_label: "End"
  }

  dimension: name__period__start {
    type: string
    sql: ${TABLE}.name.period.start ;;
    group_label: "Name Period"
    group_item_label: "Start"
  }

  dimension: name__prefix {
    hidden: yes
    sql: ${TABLE}.name.prefix ;;
    group_label: "Name"
    group_item_label: "Prefix"
  }

  dimension: name__suffix {
    hidden: yes
    sql: ${TABLE}.name.suffix ;;
    group_label: "Name"
    group_item_label: "Suffix"
  }

  dimension: name__text {
    type: string
    sql: ${TABLE}.name.text ;;
    group_label: "Name"
    group_item_label: "Text"
  }

  dimension: name__use {
    type: string
    sql: ${TABLE}.name.use ;;
    group_label: "Name"
    group_item_label: "Use"
  }

  dimension: organization__display {
    type: string
    sql: ${TABLE}.organization.display ;;
    group_label: "Organization"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__display {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.display ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.display ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: organization__identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: organization__identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Organization Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: organization__identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.period.`end` ;;
    group_label: "Organization Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: organization__identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.period.start ;;
    group_label: "Organization Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: organization__identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.system ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "System"
  }

  dimension: organization__identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.organization.identifier.assigner.identifier.type.coding ;;
    group_label: "Organization Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: organization__identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.type.text ;;
    group_label: "Organization Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: organization__identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.use ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: organization__identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.identifier.value ;;
    group_label: "Organization Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: organization__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.organizationId ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: organization__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.organization.identifier.assigner.reference ;;
    group_label: "Organization Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: organization__identifier__period__end {
    type: string
    sql: ${TABLE}.organization.identifier.period.`end` ;;
    group_label: "Organization Identifier Period"
    group_item_label: "End"
  }

  dimension: organization__identifier__period__start {
    type: string
    sql: ${TABLE}.organization.identifier.period.start ;;
    group_label: "Organization Identifier Period"
    group_item_label: "Start"
  }

  dimension: organization__identifier__system {
    type: string
    sql: ${TABLE}.organization.identifier.system ;;
    group_label: "Organization Identifier"
    group_item_label: "System"
  }

  dimension: organization__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.organization.identifier.type.coding ;;
    group_label: "Organization Identifier Type"
    group_item_label: "Coding"
  }

  dimension: organization__identifier__type__text {
    type: string
    sql: ${TABLE}.organization.identifier.type.text ;;
    group_label: "Organization Identifier Type"
    group_item_label: "Text"
  }

  dimension: organization__identifier__use {
    type: string
    sql: ${TABLE}.organization.identifier.use ;;
    group_label: "Organization Identifier"
    group_item_label: "Use"
  }

  dimension: organization__identifier__value {
    type: string
    sql: ${TABLE}.organization.identifier.value ;;
    group_label: "Organization Identifier"
    group_item_label: "Value"
  }

  dimension: organization__organization_id {
    type: string
    sql: ${TABLE}.organization.organizationId ;;
    group_label: "Organization"
    group_item_label: "Organization ID"
  }

  dimension: organization__reference {
    type: string
    sql: ${TABLE}.organization.reference ;;
    group_label: "Organization"
    group_item_label: "Reference"
  }

  dimension: patient_table__contact {
    type: string
    hidden: yes
    sql: patient_table__contact ;;
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: relationship {
    hidden: yes
    sql: relationship ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }
}

# The name of this view in Looker is "Patient Table Telecom"
view: patient_table__telecom {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: patient_table__telecom {
    type: string
    hidden: yes
    sql: patient_table__telecom ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Period End" in Explore.

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: rank {
    type: number
    sql: rank ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rank {
    type: sum
    sql: ${rank} ;;  }
  measure: average_rank {
    type: average
    sql: ${rank} ;;  }

  dimension: system {
    type: string
    sql: system ;;
  }

  dimension: use {
    type: string
    sql: use ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Patient Table Address"
view: patient_table__address {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: city ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: country ;;
  }

  dimension: district {
    type: string
    sql: district ;;
  }

  dimension: geolocation__latitude__value__decimal {
    type: number
    sql: ${TABLE}.geolocation.latitude.value.decimal ;;
    group_label: "Geolocation Latitude Value"
    group_item_label: "Decimal"
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_geolocation__latitude__value__decimal {
    type: sum
    sql: ${geolocation__latitude__value__decimal} ;;  }
  measure: average_geolocation__latitude__value__decimal {
    type: average
    sql: ${geolocation__latitude__value__decimal} ;;  }

  dimension: geolocation__longitude__value__decimal {
    type: number
    sql: ${TABLE}.geolocation.longitude.value.decimal ;;
    group_label: "Geolocation Longitude Value"
    group_item_label: "Decimal"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: line {
    hidden: yes
    sql: line ;;
  }

  dimension: patient_table__address {
    type: string
    hidden: yes
    sql: patient_table__address ;;
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: postal_code {
    type: string
    sql: postalCode ;;
  }

  dimension: state {
    type: string
    sql: state ;;
  }

  dimension: text {
    type: string
    sql: text ;;
  }

  dimension: type {
    type: string
    sql: type ;;
  }

  dimension: use {
    type: string
    sql: use ;;
  }
}

# The name of this view in Looker is "Patient Table Identifier"
view: patient_table__identifier {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Assigner Display" in Explore.

  dimension: assigner__display {
    type: string
    sql: ${TABLE}.assigner.display ;;
    group_label: "Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.display ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.organizationId ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.assigner.identifier.assigner.reference ;;
    group_label: "Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.assigner.identifier.period.`end` ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.assigner.identifier.period.start ;;
    group_label: "Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: assigner__identifier__system {
    type: string
    sql: ${TABLE}.assigner.identifier.system ;;
    group_label: "Assigner Identifier"
    group_item_label: "System"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.assigner.identifier.type.coding ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.assigner.identifier.type.text ;;
    group_label: "Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: assigner__identifier__use {
    type: string
    sql: ${TABLE}.assigner.identifier.use ;;
    group_label: "Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: assigner__identifier__value {
    type: string
    sql: ${TABLE}.assigner.identifier.value ;;
    group_label: "Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: assigner__organization_id {
    type: string
    sql: ${TABLE}.assigner.organizationId ;;
    group_label: "Assigner"
    group_item_label: "Organization ID"
  }

  dimension: assigner__reference {
    type: string
    sql: ${TABLE}.assigner.reference ;;
    group_label: "Assigner"
    group_item_label: "Reference"
  }

  dimension: patient_table__identifier {
    type: string
    hidden: yes
    sql: patient_table__identifier ;;
  }

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: system {
    type: string
    sql: system ;;
  }

  dimension: type__coding {
    hidden: yes
    sql: ${TABLE}.type.coding ;;
    group_label: "Type"
    group_item_label: "Coding"
  }

  dimension: type__text {
    type: string
    sql: ${TABLE}.type.text ;;
    group_label: "Type"
    group_item_label: "Text"
  }

  dimension: use {
    type: string
    sql: use ;;
  }

  dimension: value {
    type: string
    sql: value ;;
  }
}

# The name of this view in Looker is "Patient Table Name Given"
view: patient_table__name__given {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Name Given" in Explore.

  dimension: patient_table__name__given {
    type: string
    sql: patient_table__name__given ;;
  }
}

# The name of this view in Looker is "Patient Table Name Prefix"
view: patient_table__name__prefix {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Name Prefix" in Explore.

  dimension: patient_table__name__prefix {
    type: string
    sql: patient_table__name__prefix ;;
  }
}

# The name of this view in Looker is "Patient Table Name Suffix"
view: patient_table__name__suffix {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Name Suffix" in Explore.

  dimension: patient_table__name__suffix {
    type: string
    sql: patient_table__name__suffix ;;
  }
}

# The name of this view in Looker is "Patient Table Address Line"
view: patient_table__address__line {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Address Line" in Explore.

  dimension: patient_table__address__line {
    type: string
    sql: patient_table__address__line ;;
  }
}

# The name of this view in Looker is "Patient Table Meta Profile"
view: patient_table__meta__profile {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Meta Profile" in Explore.

  dimension: patient_table__meta__profile {
    type: string
    sql: patient_table__meta__profile ;;
  }
}

# The name of this view in Looker is "Patient Table Communication"
view: patient_table__communication {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: language__coding {
    hidden: yes
    sql: ${TABLE}.language.coding ;;
    group_label: "Language"
    group_item_label: "Coding"
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Language Text" in Explore.

  dimension: language__text {
    type: string
    sql: ${TABLE}.language.text ;;
    group_label: "Language"
    group_item_label: "Text"
  }

  dimension: patient_table__communication {
    type: string
    hidden: yes
    sql: patient_table__communication ;;
  }

  dimension: preferred {
    type: yesno
    sql: preferred ;;
  }
}

# The name of this view in Looker is "Patient Table Meta Tag"
view: patient_table__meta__tag {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Name Given"
view: patient_table__contact__name__given {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Contact Name Given" in Explore.

  dimension: patient_table__contact__name__given {
    type: string
    sql: patient_table__contact__name__given ;;
  }
}

# The name of this view in Looker is "Patient Table Meta Security"
view: patient_table__meta__security {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Name Prefix"
view: patient_table__contact__name__prefix {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Contact Name Prefix" in Explore.

  dimension: patient_table__contact__name__prefix {
    type: string
    sql: patient_table__contact__name__prefix ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Name Suffix"
view: patient_table__contact__name__suffix {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Contact Name Suffix" in Explore.

  dimension: patient_table__contact__name__suffix {
    type: string
    sql: patient_table__contact__name__suffix ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Telecom"
view: patient_table__contact__telecom {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Period End" in Explore.

  dimension: period__end {
    type: string
    sql: ${TABLE}.period.`end` ;;
    group_label: "Period"
    group_item_label: "End"
  }

  dimension: period__start {
    type: string
    sql: ${TABLE}.period.start ;;
    group_label: "Period"
    group_item_label: "Start"
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_rank {
    type: sum
    sql: ${rank} ;;  }
  measure: average_rank {
    type: average
    sql: ${rank} ;;  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: use {
    type: string
    sql: ${TABLE}.use ;;
  }

  dimension: value {
    type: string
    sql: ${TABLE}.value ;;
  }
}

# The name of this view in Looker is "Patient Table General Practitioner"
view: patient_table__general_practitioner {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Display" in Explore.

  dimension: display {
    type: string
    sql: display ;;
  }

  dimension: identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.display ;;
    group_label: "Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__display {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.display ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Display"
  }

  dimension: identifier__assigner__identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.assigner.reference ;;
    group_label: "Identifier Assigner Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__assigner__identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.`end` ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__assigner__identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.period.start ;;
    group_label: "Identifier Assigner Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__assigner__identifier__system {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.system ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "System"
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: identifier__assigner__identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.assigner.identifier.type.coding ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__assigner__identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.type.text ;;
    group_label: "Identifier Assigner Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__assigner__identifier__use {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.use ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__assigner__identifier__value {
    type: string
    sql: ${TABLE}.identifier.assigner.identifier.value ;;
    group_label: "Identifier Assigner Identifier"
    group_item_label: "Value"
  }

  dimension: identifier__assigner__organization_id {
    type: string
    sql: ${TABLE}.identifier.assigner.organizationId ;;
    group_label: "Identifier Assigner"
    group_item_label: "Organization ID"
  }

  dimension: identifier__assigner__reference {
    type: string
    sql: ${TABLE}.identifier.assigner.reference ;;
    group_label: "Identifier Assigner"
    group_item_label: "Reference"
  }

  dimension: identifier__period__end {
    type: string
    sql: ${TABLE}.identifier.period.`end` ;;
    group_label: "Identifier Period"
    group_item_label: "End"
  }

  dimension: identifier__period__start {
    type: string
    sql: ${TABLE}.identifier.period.start ;;
    group_label: "Identifier Period"
    group_item_label: "Start"
  }

  dimension: identifier__system {
    type: string
    sql: ${TABLE}.identifier.system ;;
    group_label: "Identifier"
    group_item_label: "System"
  }

  dimension: identifier__type__coding {
    hidden: yes
    sql: ${TABLE}.identifier.type.coding ;;
    group_label: "Identifier Type"
    group_item_label: "Coding"
  }

  dimension: identifier__type__text {
    type: string
    sql: ${TABLE}.identifier.type.text ;;
    group_label: "Identifier Type"
    group_item_label: "Text"
  }

  dimension: identifier__use {
    type: string
    sql: ${TABLE}.identifier.use ;;
    group_label: "Identifier"
    group_item_label: "Use"
  }

  dimension: identifier__value {
    type: string
    sql: ${TABLE}.identifier.value ;;
    group_label: "Identifier"
    group_item_label: "Value"
  }

  dimension: organization_id {
    type: string
    sql: organizationId ;;
  }

  dimension: patient_table__general_practitioner {
    type: string
    hidden: yes
    sql: patient_table__general_practitioner ;;
  }

  dimension: practitioner_id {
    type: string
    sql: practitionerId ;;
  }

  dimension: reference {
    type: string
    sql: reference ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Address Line"
view: patient_table__contact__address__line {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Patient Table Contact Address Line" in Explore.

  dimension: patient_table__contact__address__line {
    type: string
    sql: patient_table__contact__address__line ;;
  }
}

# The name of this view in Looker is "Patient Table Animal Breed Coding"
view: patient_table__animal__breed__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Relationship"
view: patient_table__contact__relationship {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: coding {
    hidden: yes
    sql: ${TABLE}.coding ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Text" in Explore.

  dimension: text {
    type: string
    sql: ${TABLE}.text ;;
  }
}

# The name of this view in Looker is "Patient Table Marital Status Coding"
view: patient_table__marital_status__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Animal Species Coding"
view: patient_table__animal__species__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Identifier Type Coding"
view: patient_table__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Animal Gender Status Coding"
view: patient_table__animal__gender_status__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Relationship Coding"
view: patient_table__contact__relationship__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Communication Language Coding"
view: patient_table__communication__language__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Link Other Identifier Type Coding"
view: patient_table__link__other__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table General Practitioner Identifier Type Coding"
view: patient_table__general_practitioner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Identifier Assigner Identifier Type Coding"
view: patient_table__identifier__assigner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Organization Identifier Type Coding"
view: patient_table__contact__organization__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Managing Organization Identifier Type Coding"
view: patient_table__managing_organization__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Link Other Identifier Assigner Identifier Type Coding"
view: patient_table__link__other__identifier__assigner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table General Practitioner Identifier Assigner Identifier Type Coding"
view: patient_table__general_practitioner__identifier__assigner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Contact Organization Identifier Assigner Identifier Type Coding"
view: patient_table__contact__organization__identifier__assigner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}

# The name of this view in Looker is "Patient Table Managing Organization Identifier Assigner Identifier Type Coding"
view: patient_table__managing_organization__identifier__assigner__identifier__type__coding {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Code" in Explore.

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: user_selected {
    type: yesno
    sql: ${TABLE}.userSelected ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}.version ;;
  }
}
