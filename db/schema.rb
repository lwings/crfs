# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20191104152516) do

  create_table "adverse_events", force: :cascade do |t|
    t.integer  "patient_id",          limit: 4
    t.integer  "events",              limit: 4
    t.date     "occurence_date"
    t.integer  "turnover",            limit: 4
    t.date     "recover_date"
    t.text     "remark",              limit: 65535
    t.integer  "NCI_CTCAE_V_4",       limit: 4
    t.boolean  "is_SAE"
    t.integer  "is_related_to_drugs", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "adverse_events", ["patient_id"], name: "index_adverse_events_on_patient_id", using: :btree

  create_table "basement_assessments", force: :cascade do |t|
    t.integer  "patient_id",                              limit: 4
    t.float    "height",                                  limit: 24
    t.float    "weight",                                  limit: 24
    t.float    "BMI",                                     limit: 24
    t.float    "systolic_blood_pressure",                 limit: 24
    t.float    "diastolic_blood_pressure",                limit: 24
    t.integer  "physical_state_assessment",               limit: 4
    t.date     "pregnancy_test_date"
    t.integer  "pregnancy_test_result",                   limit: 4
    t.date     "electrocardiogram_date"
    t.integer  "electrocarddiogram_diagnosis",            limit: 4
    t.text     "electrocarddiogram_description",          limit: 65535
    t.date     "breast_B_ultrasound_date"
    t.integer  "breast_B_ultrasound_date_diagnosis",      limit: 4
    t.text     "breast_B_ultrasound_date_description",    limit: 65535
    t.date     "Mammography_date"
    t.integer  "Mammography_diagnosis",                   limit: 4
    t.text     "Mammography_description",                 limit: 65535
    t.date     "abdominal_B_ultrasound_date"
    t.integer  "abdominal_B_ultrasound_date_diagnosis",   limit: 4
    t.text     "abdominal_B_ultrasound_date_description", limit: 65535
    t.date     "breast_CT_date"
    t.integer  "breast_CT_diagnosis",                     limit: 4
    t.text     "breast_CT_description",                   limit: 65535
    t.date     "echocardiography_date"
    t.float    "LVEF",                                    limit: 24
    t.integer  "echocardiography_diagnosis",              limit: 4
    t.text     "echocardiography_description",            limit: 65535
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  add_index "basement_assessments", ["patient_id"], name: "index_basement_assessments_on_patient_id", using: :btree

  create_table "biological_sample_collections", force: :cascade do |t|
    t.integer  "patient_id",        limit: 4
    t.integer  "biological_sample", limit: 4
    t.date     "date_of_sampling"
    t.string   "sample_number",     limit: 255
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "biological_sample_collections", ["patient_id"], name: "index_biological_sample_collections_on_patient_id", using: :btree

  create_table "biopsy_clinical_infos", force: :cascade do |t|
    t.integer  "clinical_pathology_id",  limit: 4
    t.integer  "biopsy_position",        limit: 4
    t.string   "biopsy_position_remark", limit: 255
    t.date     "biopsy_date"
    t.integer  "biopsy_mode",            limit: 4
    t.integer  "histological_type",      limit: 4
    t.integer  "histological_grading",   limit: 4
    t.integer  "ER",                     limit: 4
    t.integer  "ER_strength",            limit: 4
    t.integer  "PR",                     limit: 4
    t.integer  "PR_strength",            limit: 4
    t.integer  "HER2_IHC",               limit: 4
    t.integer  "HER2_FISH",              limit: 4
    t.integer  "Ki67",                   limit: 4
    t.integer  "AR",                     limit: 4
    t.integer  "AR_strength",            limit: 4
    t.string   "comment",                limit: 255
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "biopsy_clinical_infos", ["clinical_pathology_id"], name: "index_biopsy_clinical_infos_on_clinical_pathology_id", using: :btree

  create_table "blood_biochemistries", force: :cascade do |t|
    t.integer  "basement_assessment_id", limit: 4
    t.integer  "name",                   limit: 4
    t.float    "value",                  limit: 24
    t.date     "sample_date"
    t.integer  "unit",                   limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "blood_biochemistries", ["basement_assessment_id"], name: "index_blood_biochemistries_on_basement_assessment_id", using: :btree

  create_table "blood_biochemistry_meds", force: :cascade do |t|
    t.integer  "medication_completion_id", limit: 4
    t.integer  "name",                     limit: 4
    t.float    "value",                    limit: 24
    t.date     "sample_date"
    t.integer  "unit",                     limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "blood_biochemistry_meds", ["medication_completion_id"], name: "index_blood_biochemistry_meds_on_medication_completion_id", using: :btree

  create_table "blood_biochemistry_thes", force: :cascade do |t|
    t.integer  "course_id",   limit: 4
    t.integer  "name",        limit: 4
    t.float    "value",       limit: 24
    t.date     "sample_date"
    t.integer  "unit",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "blood_biochemistry_thes", ["course_id"], name: "index_blood_biochemistry_thes_on_course_id", using: :btree

  create_table "blood_routine_meds", force: :cascade do |t|
    t.integer  "medication_completion_id", limit: 4
    t.integer  "name",                     limit: 4
    t.float    "value",                    limit: 24
    t.date     "sample_date"
    t.integer  "unit",                     limit: 4
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "blood_routine_meds", ["medication_completion_id"], name: "index_blood_routine_meds_on_medication_completion_id", using: :btree

  create_table "blood_routine_thes", force: :cascade do |t|
    t.integer  "course_id",   limit: 4
    t.integer  "name",        limit: 4
    t.float    "value",       limit: 24
    t.date     "sample_date"
    t.integer  "unit",        limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "blood_routine_thes", ["course_id"], name: "index_blood_routine_thes_on_course_id", using: :btree

  create_table "blood_routines", force: :cascade do |t|
    t.integer  "basement_assessment_id", limit: 4
    t.integer  "name",                   limit: 4
    t.float    "value",                  limit: 24
    t.date     "sample_date"
    t.integer  "unit",                   limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "blood_routines", ["basement_assessment_id"], name: "index_blood_routines_on_basement_assessment_id", using: :btree

  create_table "center_project_relationships", force: :cascade do |t|
    t.integer  "project_id",             limit: 4
    t.integer  "center_id",              limit: 4
    t.integer  "planned_patients_count", limit: 4, default: 0
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "center_project_relationships", ["center_id"], name: "index_center_project_relationships_on_center_id", using: :btree
  add_index "center_project_relationships", ["project_id"], name: "index_center_project_relationships_on_project_id", using: :btree

  create_table "centers", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "clinical_pathologies", force: :cascade do |t|
    t.integer  "patient_id",           limit: 4
    t.integer  "primary_lesion",       limit: 4
    t.integer  "regional_lympth_node", limit: 4
    t.boolean  "matastasis"
    t.integer  "histological_type",    limit: 4
    t.integer  "histological_grading", limit: 4
    t.integer  "vascular_invasion",    limit: 4
    t.float    "ER",                   limit: 24
    t.float    "PR",                   limit: 24
    t.float    "HER2_IHC",             limit: 24
    t.float    "HER2_FISH",            limit: 24
    t.float    "Ki67",                 limit: 24
    t.float    "AR",                   limit: 24
    t.date     "date_of_operation"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "op_breast_mode",       limit: 4
    t.integer  "op_armpit_mode",       limit: 4
    t.string   "comment",              limit: 255
  end

  add_index "clinical_pathologies", ["patient_id"], name: "index_clinical_pathologies_on_patient_id", using: :btree

  create_table "concomitant_drugs", force: :cascade do |t|
    t.integer  "patient_id",          limit: 4
    t.string   "drugs",               limit: 255
    t.string   "cause_for_this_drug", limit: 255
    t.float    "daily_dose",          limit: 24
    t.string   "unit_of_dose",        limit: 255
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "concomitant_drugs", ["patient_id"], name: "index_concomitant_drugs_on_patient_id", using: :btree

  create_table "course_medications", force: :cascade do |t|
    t.integer  "course_id",                  limit: 4
    t.float    "dose",                       limit: 24
    t.date     "date_of_administration"
    t.boolean  "if_delay_administration"
    t.integer  "reason_for_delay",           limit: 4
    t.text     "description_for_delay",      limit: 65535
    t.boolean  "if_change_dose"
    t.integer  "reason_for_change",          limit: 4
    t.text     "description_for_change",     limit: 65535
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "experimental_medication_id", limit: 4
  end

  add_index "course_medications", ["course_id"], name: "index_course_medications_on_course_id", using: :btree
  add_index "course_medications", ["experimental_medication_id"], name: "index_course_medications_on_experimental_medication_id", using: :btree

  create_table "course_monitors", force: :cascade do |t|
    t.integer  "patient_id",        limit: 4
    t.integer  "research_group_id", limit: 4
    t.integer  "record_phase_seq",  limit: 4, default: 0
    t.integer  "record_course_seq", limit: 4, default: 0
    t.integer  "overdue_course",    limit: 4, default: 0
    t.date     "last_record_date"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "course_monitors", ["patient_id"], name: "index_course_monitors_on_patient_id", using: :btree
  add_index "course_monitors", ["research_group_id"], name: "index_course_monitors_on_research_group_id", using: :btree

  create_table "course_schedules", force: :cascade do |t|
    t.integer  "research_group_id", limit: 4
    t.integer  "number_of_courses", limit: 4
    t.integer  "cure_span",         limit: 4
    t.integer  "rest_span",         limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "seq",               limit: 4, null: false
  end

  add_index "course_schedules", ["research_group_id"], name: "index_course_schedules_on_research_group_id", using: :btree

  create_table "courses", force: :cascade do |t|
    t.integer  "patient_id",        limit: 4
    t.date     "interview"
    t.float    "height",            limit: 24
    t.float    "weight",            limit: 24
    t.float    "body_surface_area", limit: 24
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "courses", ["patient_id"], name: "index_courses_on_patient_id", using: :btree

  create_table "death_records", force: :cascade do |t|
    t.integer  "patient_id",               limit: 4
    t.date     "date_of_death"
    t.integer  "cause_of_death",           limit: 4
    t.integer  "relation_with_medication", limit: 4
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "death_records", ["patient_id"], name: "index_death_records_on_patient_id", using: :btree

  create_table "experimental_medications", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.string   "remark",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "project_id", limit: 4
  end

  add_index "experimental_medications", ["project_id"], name: "index_experimental_medications_on_project_id", using: :btree

  create_table "family_histories", force: :cascade do |t|
    t.integer  "clinical_pathology_id", limit: 4
    t.string   "relation_with_patient", limit: 255
    t.integer  "age_at_diagnose",       limit: 4
    t.string   "treatment",             limit: 255
    t.integer  "procession_of_disease", limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "family_histories", ["clinical_pathology_id"], name: "index_family_histories_on_clinical_pathology_id", using: :btree

  create_table "first_diagnosis_clinical_phases", force: :cascade do |t|
    t.integer  "clinical_pathology_id", limit: 4
    t.integer  "primary_lesion",        limit: 4
    t.integer  "regional_lympth_node",  limit: 4
    t.integer  "matastasis",            limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "first_diagnosis_clinical_phases", ["clinical_pathology_id"], name: "index_first_diagnosis_clinical_phases_on_clinical_pathology_id", using: :btree

  create_table "followup_monitors", force: :cascade do |t|
    t.integer  "patient_id",         limit: 4
    t.integer  "research_group_id",  limit: 4
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.integer  "base_followup_days", limit: 4, default: 0
    t.date     "start_date"
    t.date     "last_followup_date"
    t.integer  "base_interval",      limit: 4
    t.integer  "overdue_followup",   limit: 4
  end

  add_index "followup_monitors", ["patient_id"], name: "index_followup_monitors_on_patient_id", using: :btree
  add_index "followup_monitors", ["research_group_id"], name: "index_followup_monitors_on_research_group_id", using: :btree

  create_table "followups", force: :cascade do |t|
    t.integer  "patient_id",                          limit: 4
    t.date     "date_of_visit"
    t.boolean  "local_recurrence"
    t.date     "date_of_local_recurrence"
    t.boolean  "matastasis"
    t.date     "date_of_matastasis"
    t.boolean  "contralateral_breast_cancer"
    t.date     "date_of_contralateral_breast_cancer"
    t.boolean  "second_primary_cancer"
    t.date     "date_of_second_primary_cancer"
    t.boolean  "death"
    t.date     "date_of_death"
    t.integer  "cause_of_death",                      limit: 4
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "followups", ["patient_id"], name: "index_followups_on_patient_id", using: :btree

  create_table "group_informations", force: :cascade do |t|
    t.integer  "patient_id",                 limit: 4
    t.integer  "research_group_id",          limit: 4
    t.boolean  "is_meet_inclusion_criteria"
    t.date     "inform_consent_date"
    t.date     "random_groping_date"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "group_informations", ["patient_id"], name: "index_group_informations_on_patient_id", using: :btree
  add_index "group_informations", ["research_group_id"], name: "index_group_informations_on_research_group_id", using: :btree

  create_table "history_of_nonbreast_cancers", force: :cascade do |t|
    t.integer  "clinical_pathology_id", limit: 4
    t.string   "name",                  limit: 255, null: false
    t.date     "diagnostic_date"
    t.integer  "disease_status",        limit: 4
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  add_index "history_of_nonbreast_cancers", ["clinical_pathology_id"], name: "index_history_of_nonbreast_cancers_on_clinical_pathology_id", using: :btree

  create_table "medication_completions", force: :cascade do |t|
    t.integer  "patient_id",             limit: 4
    t.date     "visit_date"
    t.float    "height",                 limit: 24
    t.float    "weight",                 limit: 24
    t.integer  "ECOG",                   limit: 4
    t.integer  "physical_examination",   limit: 4
    t.text     "description",            limit: 65535
    t.boolean  "if_followup"
    t.date     "breast_Bultra_date"
    t.integer  "breast_Bultra_diagnose", limit: 4
    t.string   "breast_abnormal",        limit: 255
    t.date     "abdo_Bultra_date"
    t.integer  "abdo_Bultra_diagnose",   limit: 4
    t.string   "abdo_abnormalt",         limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "medication_completions", ["patient_id"], name: "index_medication_completions_on_patient_id", using: :btree

  create_table "new_lesions", force: :cascade do |t|
    t.string   "position",            limit: 255
    t.integer  "inspection_method",   limit: 4
    t.date     "date"
    t.integer  "tumor_evaluation_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "new_lesions", ["tumor_evaluation_id"], name: "index_new_lesions_on_tumor_evaluation_id", using: :btree

  create_table "no_target_lesions", force: :cascade do |t|
    t.string   "position",            limit: 255
    t.integer  "inspection_method",   limit: 4
    t.integer  "is_exist",            limit: 4
    t.integer  "tumor_evaluation_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "no_target_lesions", ["tumor_evaluation_id"], name: "index_no_target_lesions_on_tumor_evaluation_id", using: :btree

  create_table "operation_clinical_infos", force: :cascade do |t|
    t.integer  "clinical_pathology_id", limit: 4
    t.integer  "op_position",           limit: 4
    t.date     "op_date"
    t.integer  "op_breast_mode",        limit: 4
    t.integer  "op_armpit_mode",        limit: 4
    t.float    "tumor_size",            limit: 24
    t.integer  "lympth_matastasis_cnt", limit: 4
    t.integer  "histological_type",     limit: 4
    t.integer  "histological_grading",  limit: 4
    t.integer  "ER",                    limit: 4
    t.integer  "ER_strength",           limit: 4
    t.integer  "PR",                    limit: 4
    t.integer  "PR_strength",           limit: 4
    t.integer  "HER2_IHC",              limit: 4
    t.integer  "HER2_FISH",             limit: 4
    t.integer  "Ki67",                  limit: 4
    t.integer  "AR",                    limit: 4
    t.integer  "AR_strength",           limit: 4
    t.string   "comment",               limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.integer  "primary_lesion",        limit: 4
    t.integer  "regional_lympth_node",  limit: 4
  end

  add_index "operation_clinical_infos", ["clinical_pathology_id"], name: "index_operation_clinical_infos_on_clinical_pathology_id", using: :btree

  create_table "patients", force: :cascade do |t|
    t.integer  "status",                limit: 4,   default: 0
    t.integer  "project_id",            limit: 4
    t.integer  "user_id",               limit: 4
    t.string   "name",                  limit: 255,             null: false
    t.string   "pid",                   limit: 255
    t.string   "hosptalization_number", limit: 255
    t.date     "date_of_birth"
    t.string   "ID_number",             limit: 255
    t.string   "phone_number_1",        limit: 255
    t.string   "phone_number_2",        limit: 255
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
    t.integer  "center_id",             limit: 4
  end

  add_index "patients", ["center_id"], name: "index_patients_on_center_id", using: :btree
  add_index "patients", ["project_id"], name: "index_patients_on_project_id", using: :btree
  add_index "patients", ["user_id"], name: "index_patients_on_user_id", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",         limit: 255,   null: false
    t.text     "remark",       limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "initiator_id", limit: 4
  end

  create_table "radiation_therapies", force: :cascade do |t|
    t.integer  "patient_id",              limit: 4
    t.boolean  "is_radiation"
    t.integer  "radiotherapy_site",       limit: 4
    t.integer  "therapy_type",            limit: 4
    t.float    "radiotherapy_dose",       limit: 24
    t.date     "radiotherapy_start_date"
    t.date     "radiotherapy_end_date"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  add_index "radiation_therapies", ["patient_id"], name: "index_radiation_therapies_on_patient_id", using: :btree

  create_table "relationships", force: :cascade do |t|
    t.integer  "project_id", limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "center_id",  limit: 4
  end

  add_index "relationships", ["center_id"], name: "index_relationships_on_center_id", using: :btree
  add_index "relationships", ["project_id"], name: "index_relationships_on_project_id", using: :btree
  add_index "relationships", ["user_id"], name: "index_relationships_on_user_id", using: :btree

  create_table "research_groups", force: :cascade do |t|
    t.string   "name",               limit: 255, null: false
    t.string   "remark",             limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.integer  "project_id",         limit: 4
    t.integer  "base_followup_days", limit: 4
    t.integer  "total_courses",      limit: 4
    t.integer  "base_interval",      limit: 4
  end

  add_index "research_groups", ["project_id"], name: "index_research_groups_on_project_id", using: :btree

  create_table "researches", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "project_id",  limit: 4
  end

  add_index "researches", ["project_id"], name: "index_researches_on_project_id", using: :btree

  create_table "reserach_completions", force: :cascade do |t|
    t.integer  "patient_id",                            limit: 4
    t.date     "date_of_last_confirmation"
    t.boolean  "if_complete_therapy_according_to_plan"
    t.integer  "reason_for_early_quit",                 limit: 4
    t.text     "description",                           limit: 65535
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "reserach_completions", ["patient_id"], name: "index_reserach_completions_on_patient_id", using: :btree

  create_table "roles", force: :cascade do |t|
    t.string   "name",        limit: 255,   null: false
    t.text     "description", limit: 65535
    t.integer  "pri",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "target_lesions", force: :cascade do |t|
    t.string   "position",            limit: 255
    t.integer  "inspection_method",   limit: 4
    t.float    "max_diameter",        limit: 24
    t.integer  "tumor_evaluation_id", limit: 4
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "target_lesions", ["tumor_evaluation_id"], name: "index_target_lesions_on_tumor_evaluation_id", using: :btree

  create_table "tumor_evaluations", force: :cascade do |t|
    t.date     "date"
    t.integer  "interview",                   limit: 4
    t.integer  "patient_id",                  limit: 4
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
    t.float    "sum_diameter",                limit: 24
    t.float    "base_line_diameter",          limit: 24
    t.float    "cmp_base_line_diameter",      limit: 24
    t.float    "min_diameter",                limit: 24
    t.float    "cmp_min_diameter",            limit: 24
    t.integer  "target_lesion_evaluation",    limit: 4
    t.integer  "no_target_lesion_evaluation", limit: 4
    t.integer  "lesion_evaluation",           limit: 4
    t.string   "comment",                     limit: 255
  end

  add_index "tumor_evaluations", ["patient_id"], name: "index_tumor_evaluations_on_patient_id", using: :btree

  create_table "tumor_maker_meds", force: :cascade do |t|
    t.integer  "medication_completion_id", limit: 4
    t.float    "value",                    limit: 24
    t.date     "sample_date"
    t.boolean  "is_local_hospital"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "name",                     limit: 4,  null: false
    t.integer  "unit",                     limit: 4,  null: false
  end

  add_index "tumor_maker_meds", ["medication_completion_id"], name: "index_tumor_maker_meds_on_medication_completion_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "role_id",                limit: 4
    t.string   "username",               limit: 255,              null: false
    t.string   "realname",               limit: 255
    t.string   "phone",                  limit: 255
    t.integer  "status",                 limit: 4
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["role_id"], name: "index_users_on_role_id", using: :btree

  add_foreign_key "biopsy_clinical_infos", "clinical_pathologies"
  add_foreign_key "course_medications", "experimental_medications"
  add_foreign_key "first_diagnosis_clinical_phases", "clinical_pathologies"
  add_foreign_key "new_lesions", "tumor_evaluations"
  add_foreign_key "no_target_lesions", "tumor_evaluations"
  add_foreign_key "operation_clinical_infos", "clinical_pathologies"
  add_foreign_key "patients", "centers"
  add_foreign_key "researches", "projects"
  add_foreign_key "target_lesions", "tumor_evaluations"
  add_foreign_key "tumor_evaluations", "patients"
end
