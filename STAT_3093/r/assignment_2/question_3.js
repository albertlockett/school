
const { mean, stdev, variance } = require('./util')
IQ = [82, 96, 102, 103, 106, 107, 108, 108, 108, 109, 110, 110, 111, 113, 113, 113, 115, 115, 118, 119, 121, 122, 127, 136, 140, 146]
xBar = mean(IQ)

console.log(variance(IQ))
console.log(stdev(IQ))

stdErr = stdev(IQ) / Math.sqrt(IQ.length)
console.table([{ xBar, stdErr }])


const median = (s, sample = s.sort()) => {
  const n = sample.length
  if (n % 2 == 0) {
    return (sample[n/2-1] + sample[n/2]) / 2
  } else {
    return sample[Math.floor(n/2)]
  }
}

const boostrapSample = sample => {
  return sample.map(() => sample[Math.floor(Math.random() * sample.length)])
}

const B = 200;
const bootstrapMedians = []
for (let i = 0; i < B; i++) {
  bootstrapMedians.push(median(boostrapSample(IQ)))
}
const SB = Math.sqrt(1/(B - 1) * variance(bootstrapMedians))
console.log(SB)
