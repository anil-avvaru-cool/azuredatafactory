## Incremental load - On Prem SQL server to Azure Blob

### PreReq for ADO pipeline
- Add Integration runtime
- Linked service
- Dataset

### Create metadata table with LastProcessed value.

### Lookup Activity: 
Settings> Query > select * from metadata

### Foreach
Settings > Items > @activity('Lookup1').output.value
In side loop add 3 activities:
 - Lookup
 - Copy data 
 - Stored procedure

 Lookup: Dynamic expression ->
 select first row only option
 
 select max(@{item().deltacol}) as maxValue from @{item().schemaname}.@{item().tablename}

 Copy in foreach
 select * from @{item().schemaname}.@{item().tablename} where @{item().deltacol} > '@{item().lastprocessedvalue}'

 Add variable > CurrentDateTime\
 Add Set Variable Activity\
 Provide @utcnow()
 
 Link CurrentDateTime variable with Set Variable Activity