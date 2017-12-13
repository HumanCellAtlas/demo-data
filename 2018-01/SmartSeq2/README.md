## Demo SmartSeq2 data for demoing at the 2017 Q4 quarterly meeting in Boston.

This directory contains materials for the ingest team's demo of ingesting a SmartSeq2 dummy dataset. This is the same dataset that will be demoed by the mint (secondary analysis) team.

Directory includes:

- `Q4DemoSS2Metadata_VALID.xlsx` - A metadata spreadsheet that should validate against metadata schema version 4.4.0
- `Q4DemoSS2Metadata_INVALID.xlsx` - A metadata spreadsheet that should FAIL validation against metadata schema version 4.4.0
  - Is missing the required field `is_living` in the donor tab
  - Has an incorrect column/field name in the file tab: `format` should be `file_format`
- `R1.fastq.gz` - The r1 dummy reads
- `R2.fastq.gz` - The r2 dummy reads
