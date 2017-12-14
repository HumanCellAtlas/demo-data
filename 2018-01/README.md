## SmartSeq2 and template meta+data for the 2017 Q4 quarterly meeting demo in Boston.

This directory contains materials for the ingest team's demo of ingesting a SmartSeq2 dummy dataset, downloading template metadata spreadsheets, and ingesting a real 10x_v2 dataset. The SmartSeq2 data is the same that will be demoed by the mint (secondary analysis) team.

### `SmartSeq2/` directory includes:

- `Q4DemoSS2Metadata_VALID.xlsx` - A metadata spreadsheet that should validate against metadata schema version 4.4.0-4.5.0
- `Q4DemoSS2Metadata_INVALID.xlsx` - A metadata spreadsheet that should FAIL validation against metadata schema version 4.4.0-4.5.0
  - Is missing the required field `is_living` in the donor tab
  - Has an incorrect column/field name in the file tab: `format` should be `file_format`
- `R1.fastq.gz` - The r1 dummy reads
- `R2.fastq.gz` - The r2 dummy reads

#### `10x_v2/` directory:

- `metadata_spleen_20171115_DOESNT_TRIGGER.xlsx` - A metadata spreadsheet valid against metadata schema version 4.4.0-4.5.0. "10x_v2" has been changed to "10x_v1" to avoid triggering Mint Team workflows.
- `metadata_spleen_20171115_FREEZE.xlsx` - A metadata spreadsheet valid against metadata schema version 4.4.0-4.5.0. Contain references to "10x_v2" which will trigger Mint Team workflows. Please avoid using this file unless specifically testing Mint Team workflows.

### `templates/` directory includes:

- `Empty_template_v4.4.0_spreadsheet_PROJECTTAB.xlsx` - An empty metadata template spreadsheet valid against metadata schema version 4.4.0-4.5.0. Contains the project tab and is used to upload metadata when the project doesn't exist yet.
- `Empty_template_v4.4.0_spreadsheet_NOPROJECTTAB.xlsx` - An empty metadata template spreadsheet valid against metadata schema version 4.4.0-4.5.0. Does not contain the project tab and is used to upload a complete set of metadata to an already existing project.
