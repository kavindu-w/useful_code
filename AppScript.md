# code to streamline the process of jumping to a list of cells (instead of scrolling or typing the cell number everytime)

```gs
// List of cells to jump through
const TARGETS =[  'H7588', 'H7693', 'H8134', 'H8348', 'H8713', 'H8840', 'H9520', 'H9818', 'H10205', 'H10376', 'H10566'];

function onOpen() {
  // Create a custom menu in the toolbar
  SpreadsheetApp.getUi()
    .createMenu('Jump')
    .addItem('Next Target', 'jumpToNext')
    .addToUi();
}

function jumpToNext() {
  const sheet = SpreadsheetApp.getActiveSheet();
  const activeCell = sheet.getActiveCell();
  const currentA1 = activeCell.getA1Notation();
  const idx = TARGETS.indexOf(currentA1);

  if (idx === -1) {
    // If not currently on any target, go to the first one
    sheet.setActiveRange(sheet.getRange(TARGETS[0]));
  } else if (idx < TARGETS.length - 1) {
    // Go to next cell in list
    sheet.setActiveRange(sheet.getRange(TARGETS[idx + 1]));
  } else {
    // If at the last, loop back to the first
    sheet.setActiveRange(sheet.getRange(TARGETS[0]));
  }
}
```
