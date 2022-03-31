const ERROR_THRESHOLD = 0.0000000000000001;

function abs(x) {
  return x >= 0 ? x : -x;
}

function square(x) {
  return x * x;
}

function average(x, y) {
  return (x + y) / 2;
}

function improve(guess, x) {
  return average(guess, x / guess);
}

function relativeError(estimate, reference) {
  return abs(square(estimate) - reference) / reference;
}

function isGoodEnough(guess, x) {
  const relError = relativeError(guess, x);
  return relError < ERROR_THRESHOLD;
}

function sqrtIter(guess, x) {
  return isGoodEnough(guess, x) ? guess : sqrtIter(improve(guess, x), x);
}

function sqrt(x) {
  return sqrtIter(1, x);
}

// This works good enough
// console.log(sqrt(9));

// This doesn't
// console.log(sqrt(5000000000000000000000000000000000000));
console.log(sqrt(0.00001));
console.log(sqrt(12345678901230));
// This alleviates the problem
