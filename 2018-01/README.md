## SmartSeq2 and template meata+data for demoing at the 2017 Q4 quarterly meeting in Boston.

This directory contains materials for the ingest team's demo of ingesting a SmartSeq2 dummy dataset, downloading template metadata spreadsheets, and ingesting a real 10x_v2 dataset. The SmartSeq2 data is the same that will be demoed by the mint (secondary analysis) team.

### `SmartSeq2` directory includes:

- `Q4DemoSS2Metadata_VALID.xlsx` - A metadata spreadsheet that should validate against metadata schema version 4.4.0
- `Q4DemoSS2Metadata_INVALID.xlsx` - A metadata spreadsheet that should FAIL validation against metadata schema version 4.4.0
  - Is missing the required field `is_living` in the donor tab
  - Has an incorrect column/field name in the file tab: `format` should be `file_format`
- `R1.fastq.gz` - The r1 dummy reads
- `R2.fastq.gz` - The r2 dummy reads

### `templates` directory includes:

- `Empty_template_v4.4.0_spreadsheet_PROJECTTAB.xlsx` - An empty metadata template spreadsheet valid against metadata schema version 4.4.0. Contains the project tab and is used to upload metadata to an already existing project.
- `Empty_template_v4.4.0_spreadsheet_NOPROJECTTAB.xlsx` - An empty metadata template spreadsheet valid against metadata schema version 4.4.0. Does not contain the project tab and is used to upload a complete set of metadata when the project doesn't exist yet.

