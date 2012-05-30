require 'erubis'
require 'active_support'
require 'mongoid'
require 'uuid'
require 'builder'
require 'csv'
require 'nokogiri'

# Freedom patches
require_relative 'health-data-standards/ext/symbol'
require_relative 'health-data-standards/ext/string'

require_relative 'health-data-standards/util/hl7_helper'
require_relative 'health-data-standards/util/code_system_helper'

require_relative 'health-data-standards/export/template_helper'
require_relative 'health-data-standards/export/view_helper'
require_relative 'health-data-standards/export/rendering_context'
require_relative 'health-data-standards/export/c32'
require_relative 'health-data-standards/export/ccr'
require_relative 'health-data-standards/export/csv'
require_relative 'health-data-standards/export/html'
require_relative 'health-data-standards/export/hdata/metadata'

require_relative 'health-data-standards/export/green_c32/entry'
require_relative 'health-data-standards/export/green_c32/export_generator'

require_relative 'health-data-standards/import/provider_import_utils'
require_relative 'health-data-standards/import/hdata/metadata_importer'

require_relative 'health-data-standards/models/entry'
require_relative 'health-data-standards/models/allergy'
require_relative 'health-data-standards/models/encounter'
require_relative 'health-data-standards/models/condition'
require_relative 'health-data-standards/models/immunization'
require_relative 'health-data-standards/models/fulfillment_history'
require_relative 'health-data-standards/models/order_information'
require_relative 'health-data-standards/models/medication'
require_relative 'health-data-standards/models/procedure'
require_relative 'health-data-standards/models/lab_result'
require_relative 'health-data-standards/models/medical_equipment'  
require_relative 'health-data-standards/models/record'
require_relative 'health-data-standards/models/provider'
require_relative 'health-data-standards/models/provider_performance'
require_relative 'health-data-standards/models/social_history'
require_relative 'health-data-standards/models/support'
require_relative 'health-data-standards/models/vital_sign'
require_relative 'health-data-standards/models/organization'
require_relative 'health-data-standards/models/address'
require_relative 'health-data-standards/models/telecom'
require_relative 'health-data-standards/models/metadata/base'
require_relative 'health-data-standards/models/metadata/author'
require_relative 'health-data-standards/models/metadata/change_info'
require_relative 'health-data-standards/models/metadata/link_info'
require_relative 'health-data-standards/models/metadata/pedigree'

require_relative 'health-data-standards/import/c32/section_importer'
require_relative 'health-data-standards/import/c32/allergy_importer'
require_relative 'health-data-standards/import/c32/encounter_importer'
require_relative 'health-data-standards/import/c32/condition_importer'
require_relative 'health-data-standards/import/c32/immunization_importer'
require_relative 'health-data-standards/import/c32/medication_importer'
require_relative 'health-data-standards/import/c32/procedure_importer'
require_relative 'health-data-standards/import/c32/result_importer'
require_relative 'health-data-standards/import/c32/vital_sign_importer'
require_relative 'health-data-standards/import/c32/patient_importer'
require_relative 'health-data-standards/import/c32/provider_importer'
require_relative 'health-data-standards/import/c32/organization_importer'


require_relative 'health-data-standards/import/ccr/patient_importer'
require_relative 'health-data-standards/import/ccr/provider_importer'
require_relative 'health-data-standards/import/ccr/section_importer'
require_relative 'health-data-standards/import/ccr/result_importer'
require_relative 'health-data-standards/import/ccr/simple_importer'
require_relative 'health-data-standards/import/ccr/product_importer'

require_relative 'health-data-standards/import/green_c32/section_importer'
require_relative 'health-data-standards/import/green_c32/result_importer'
require_relative 'health-data-standards/import/green_c32/condition_importer'
require_relative 'health-data-standards/import/green_c32/vital_sign_importer'
require_relative 'health-data-standards/import/green_c32/procedure_importer'
require_relative 'health-data-standards/import/green_c32/encounter_importer'
require_relative 'health-data-standards/import/green_c32/medication_importer'
require_relative 'health-data-standards/import/green_c32/allergy_importer'
require_relative 'health-data-standards/import/green_c32/social_history_importer'
require_relative 'health-data-standards/import/green_c32/immunization_importer' 
require_relative 'health-data-standards/import/green_c32/support_importer'
require_relative 'health-data-standards/import/green_c32/advance_directive_importer'
require_relative 'health-data-standards/import/green_c32/medical_equipment_importer'
require_relative 'health-data-standards/import/green_c32/care_goal_importer'