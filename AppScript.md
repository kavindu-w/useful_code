# code to streamline the process of jumping to a list of cells (instead of scrolling or typing the cell number everytime)

```gs
// List of cells to jump through
const TARGETS =['G4', 'G988', 'G999', 'G2545', 'G3366', 'G3970', 'G7301', 'G8199', 'G11962', 'G11977', 'G17941', 'G21667'];

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
