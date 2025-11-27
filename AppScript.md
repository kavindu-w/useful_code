# code to streamline the process of jumping to a list of cells (instead of scrolling or typing the cell number everytime)

```gs
// List of cells to jump through
const TARGETS =
['E415', 'E1323', 'E1351', 'E1397', 'E1409', 'E1546:E1547', 'E1550', 'E1568', 'E1603', 'E1607', 'E1713', 'E1715', 'E1720', 'E1733', 'E1736', 'E1738', 'E1814:E1815', 'E1961', 'E1994', 'E1999', 'E2341', 'E2362', 'E2410:E2411', 'E2413:E2414', 'E2424:E2425', 'E2428', 'E2472', 'E2522', 'E2552', 'E2846', 'E3012:E3013', 'E3070', 'E3194', 'E3323', 'E3411', 'E3545', 'E3635', 'E3658', 'E3720', 'E4089', 'E4370', 'E4373', 'E4513', 'E4519', 'E4521', 'E4592', 'E4625', 'E4686', 'E4692', 'E4704', 'E4884', 'E4928', 'E4931', 'E4944', 'E4970', 'E5036', 'E5182:E5183', 'E5265', 'E5267', 'E5270', 'E5318', 'E5323', 'E5325:E5326', 'E5349', 'E5418', 'E5437', 'E5533', 'E5538', 'E5608', 'E5610', 'E5613', 'E5638', 'E5689', 'E5728', 'E5732', 'E5787', 'E5836', 'E6177', 'E6284', 'E6287', 'E6301:E6303', 'E6314', 'E6326', 'E6338', 'E6478', 'E6514', 'F1809', 'F1968', 'F2330', 'F2536', 'F2846', 'F2872', 'F3411', 'F3470', 'F3658', 'F4482', 'F4884', 'F4887', 'F5185', 'F5291', 'F5787', 'F6314']
;

function onOpen() {
  SpreadsheetApp.getUi()
    .createMenu('Jump')
    .addItem('Next Target', 'jumpToNext')
    .addItem('Reset', 'resetJump')
    .addToUi();
}

function resetJump() {
  PropertiesService.getDocumentProperties().deleteProperty("jumpIndex");
  SpreadsheetApp.getActive().toast("Jump index reset");
}
function jumpToNext() {
  const props = PropertiesService.getDocumentProperties();
  let idx = Number(props.getProperty("jumpIndex") || 0);

  const sheet = SpreadsheetApp.getActiveSheet();
  const range = sheet.getRange(TARGETS[idx]);

  const firstRow = range.getRow();
  const col = range.getColumn();

  const rowsBelow = 5; // number of rows you want to see below the target
  const lastRow = sheet.getMaxRows();
  
  // Calculate a row to scroll so that some rows below target are visible
  const scrollRow = Math.max(1, firstRow - 2); // scroll a bit above target
  const tempRow = Math.min(firstRow + rowsBelow, lastRow); // row below target

  // Temporarily select the row below to scroll
  sheet.setActiveSelection(sheet.getRange(tempRow, col));
  SpreadsheetApp.flush(); // apply scroll

  // Re-select the actual target cell
  range.activate();

  // Update index for next jump
  idx = (idx + 1) % TARGETS.length;
  props.setProperty("jumpIndex", idx);
}








```
