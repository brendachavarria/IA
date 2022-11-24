var numRows;
var numColumns;
var startRowIndex;
var startColumnIndex;
var solutionGrid;
var solutionPath;
var pathNumber;
var showSolutionTimeoutMs;
var showSolutionDelay;
var allTimeoutsList = [];
var useWarnsdorfsRule;
var totalMovesCount;
var startTime;
var endTime;
var maxProcessingTimeInMs;
var maxProcessingTimeReached;
var counterToCheckMaxProcessingTime;
var backwardsMovements;


const knightMoves = [
{ row: -2, column: 1 },
{ row: -1, column: 2 },
{ row: 1, column: 2 },
{ row: 2, column: 1 },
{ row: 2, column: -1 },
{ row: 1, column: -2 },
{ row: -1, column: -2 },
{ row: -2, column: -1 }
];

onSolveClicked = () => {

let optionsForm = getElementById('options-form');
if (!optionsForm.checkValidity()) {
  onError("Invalid options");
  return;
}

getElementById('solve-button').setAttribute("disabled", true);
hideElementById('error');

getElementById('info').innerHTML = "Thinking...";
showElementById('info');

resetVariables();
createSolutionArray();

setTimeout(() => {
  solve();
}, 50);

};

resetVariables = () => {
numRows = parseInt(getElementValueById('numRows'));
numColumns = parseInt(getElementValueById('numColumns'));
startRowIndex = parseInt(getElementValueById('startRowIndex')) - 1;
startColumnIndex = parseInt(getElementValueById('startColumnIndex')) - 1;
showSolutionDelay = parseInt(getElementValueById('showSolutionDelay'));
useWarnsdorfsRule = (getElementValueById('algorithm') === "warnsdorfsRule");
maxProcessingTimeInMs = (parseInt(getElementValueById('maxProcessingTimeInSeconds')) * 1000);

pathNumber = 0;
solutionGrid = [];
solutionPath = [];
showSolutionTimeoutMs = 0;
allTimeoutsList = [];
totalMovesCount = 0;
counterToCheckMaxProcessingTime = 0;
backwardsMovements = 0;
maxProcessingTimeReached = false;

}

createSolutionArray = () => {
solutionGrid = new Array(numRows);
for (let i = 0; i < numRows; i++) {
  solutionGrid[i] = new Array(numColumns);
}

for (let i = 0; i < numRows; i++) {
  for (let j = 0; j < numColumns; j++) {
    solutionGrid[i][j] = null;
  }
}
}

solve = () => {

startTime = new Date().getTime();

try {

  if (findPath(startRowIndex, startColumnIndex, 0)) {
    showSolution();
  } else {
    showNoSolutionFound();
  }

}
catch (error) {
  console.error(error);
  onError("Maximum capacity exceeded<br>Please try with a smaller chessboard");
}
}

showNoSolutionFound = () => {
if (maxProcessingTimeReached) {
  endTime = new Date().getTime();
  let movesPerSecond = Math.floor(totalMovesCount / ((endTime - startTime) / 1000));
  onError(`Max processing time reached<br>Could not find a solution<br>${totalMovesCount.toLocaleString()} moves tried <small>(${movesPerSecond.toLocaleString()} moves per second)</small>`);
} else {
  onError("There is no solution for this scenario");
}
}

getWarnsdorfSortedPossibleMoves = (row, column) => {
// Returns the list of possible next moves, sorted by the number of moves that the next cell has got.

let possibleMoves = [];

for (let gameMoveIndex = 0; gameMoveIndex < knightMoves.length; gameMoveIndex++) {
  let nextMoveRow = row + knightMoves[gameMoveIndex].row;
  let nextMoveCol = column + knightMoves[gameMoveIndex].column;

  if (canMove(nextMoveRow, nextMoveCol)) {
    let move = {
      possibleMovesCount: (getNextPossibleMovesCount(nextMoveRow, nextMoveCol) - 1), // -1 not to count the current cell.
      gameMoveIndex: gameMoveIndex
    };
    possibleMoves.push(move);
  }
}

return possibleMoves.sort((a, b) => {
  return a.possibleMovesCount - b.possibleMovesCount;
});
}

checkMaxProcessingTime = () => {
if ((new Date().getTime() - startTime) > maxProcessingTimeInMs) {
  maxProcessingTimeReached = true;
}
}

findPath = (row, column, index) => {

// Check if we reached the max processing time only every 500k tries as that check actually takes time and slows down the process.
counterToCheckMaxProcessingTime++;
if (counterToCheckMaxProcessingTime > 500000) {
  counterToCheckMaxProcessingTime = 0;
  checkMaxProcessingTime();
  if (maxProcessingTimeReached) {
    return false;
  }
}

totalMovesCount++;

pathNumber++;
// mark cell as used
solutionGrid[row][column] = pathNumber;
// store knight's path
solutionPath[pathNumber] = { row: row, column: column };

if (index === ((numRows * numColumns) - 1)) {
  //Solution found
  endTime = new Date().getTime();
  return true;
}


if (useWarnsdorfsRule) {
  let sortedPossibleMoves = getWarnsdorfSortedPossibleMoves(row, column);

  // Recursively find a path
  for (let j = 0; j < sortedPossibleMoves.length; j++) {

    if (findPath(row + knightMoves[sortedPossibleMoves[j].gameMoveIndex].row, column + knightMoves[sortedPossibleMoves[j].gameMoveIndex].column, index + 1)) {
      return true;
    }

    if (maxProcessingTimeReached) {
      break;
    }

  }
}
else { // Don't use WarnsdorfsRule
  for (let z = 0; z < knightMoves.length; z++) {

    if (canMove(row + knightMoves[z].row, column + knightMoves[z].column) && findPath(row + knightMoves[z].row, column + knightMoves[z].column, index + 1)) {
      return true;
    }

    if (maxProcessingTimeReached) {
      break;
    }

  }
}

// Path not found -> backtrack
solutionGrid[row][column] = null;
solutionPath[pathNumber] = null;
pathNumber--;
backwardsMovements++;
return false;
}

canMove = (row, col) => {
return ((row >= 0) && (col >= 0) && (row < numRows) && (col < numColumns) && (solutionGrid[row][col] == null));
}

getNextPossibleMovesCount = (row, col) => {

let count = 0;

for (let i = 0; i < knightMoves.length; i++) {
  let targetRow = row + knightMoves[i].row;
  let targetCol = col + knightMoves[i].column;

  if (canMove(targetRow, targetCol)) {
    count++;
  }
}

return count;
}

showSolution = () => {

getElementById('result-solve-seconds').innerHTML = ((endTime - startTime) / 1000).toFixed(4);
getElementById('result-cell-count').innerHTML = numRows + "x" + numColumns + " = " + (numRows * numColumns);
getElementById('result-moves-count').innerHTML = totalMovesCount.toLocaleString();

let movesPerSecond = Math.floor(totalMovesCount / ((endTime - startTime) / 1000));
getElementById('result-moves-per-second').innerHTML = movesPerSecond.toLocaleString();

getElementById('result-backwards-moves').innerHTML = backwardsMovements.toLocaleString();

hideElementById('start-screen');
emptyElementById('board');
showElementById('result-screen');

if (showSolutionDelay > 0) {

  displayBoard(false);

  for (let pathIndex = 1; pathIndex < solutionPath.length; pathIndex++) {
    showSolutionTimeoutMs += showSolutionDelay;

    let newCellId = solutionPath[pathIndex].row + "_" + solutionPath[pathIndex].column;
    let newCellPathNumber = solutionGrid[solutionPath[pathIndex].row][solutionPath[pathIndex].column];
    moveKnight(newCellId, newCellPathNumber);
  }
}
else {
  displayBoard(true);
}
}

displayBoard = (showCellValues) => {

let board = getElementById('board');

let firstRow = document.createElement('div');

let firstRowContent = "<div class='cell index-cell-col-empty'>&nbsp;</div>";
for (let topColIndex = 0; topColIndex < numColumns; topColIndex++) {
  firstRowContent += "<div class='cell index-cell-col'>" + (topColIndex + 1) + "</div>";
}

firstRow.innerHTML = firstRowContent;

board.appendChild(firstRow)

for (let rowIndex = 0; rowIndex < numRows; rowIndex++) {
  let row = document.createElement('div');

  let rowContent = "<div class='cell index-cell-row'><div class='number'>" + (rowIndex + 1) + "</div></div>";
  for (let colIndex = 0; colIndex < numColumns; colIndex++) {
    rowContent += "<div id='" + rowIndex + "_" + colIndex + "' class='cell " + (showCellValues ? "used-cell" : "") + "'>" + (showCellValues && solutionGrid[rowIndex][colIndex] != null ? solutionGrid[rowIndex][colIndex] : "&nbsp;") + "</div>";
  }

  row.innerHTML = rowContent;

  board.appendChild(row)
}
}

moveKnight = (targetCellId, targetPathNumber) => {

let timeoutId = setTimeout(() => {

  let oldKnightCell = getFirstElementByClass('active-knight-cell');
  if (oldKnightCell) {
    oldKnightCell.classList.remove('active-knight-cell');
    oldKnightCell.classList.add('used-cell');
    oldKnightCell.innerText = oldKnightCell.getAttribute('data-path-number');
  }

  let newKnightCell = getElementById(targetCellId);
  newKnightCell.classList.add('active-knight-cell');
  newKnightCell.setAttribute('data-path-number', targetPathNumber);


}, showSolutionTimeoutMs);

allTimeoutsList.push(timeoutId);
}

goToStartScreen = () => {
clearAllTimeoutsList();

hideElementById('result-screen');
hideElementById('info');
hideElementById('error');

showElementById('start-screen');

getElementById('solve-button').removeAttribute("disabled");
}

onError = (htmlText) => {

hideElementById('info');

clearAllTimeoutsList();

getElementById('solve-button').removeAttribute("disabled");

getElementById('error').innerHTML = htmlText

showElementById('error');

}

showElementById = (id) => {
getElementById(id).style.display = 'block';
}

hideElementById = (id) => {
getElementById(id).style.display = 'none';
}

getElementById = (id) => {
return document.getElementById(id);
}

getElementValueById = (id) => {
return document.getElementById(id).value;
}

getFirstElementByClass = (className) => {
let result = document.getElementsByClassName(className);
if (result.length) {
  return result[0];
}
return null
}

emptyElementById = (id) => {
getElementById(id).innerHTML = '';
}

clearAllTimeoutsList = () => {
for (let i = 0; i < allTimeoutsList.length; i++) {
  clearTimeout(allTimeoutsList[i]);
}
}
