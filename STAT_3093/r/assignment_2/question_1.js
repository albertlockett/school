
const mean = sample => sample.reduce((a, b) => a+b, 0) / sample.length
const variance = sample => sample.reduce((a, b) => a + Math.pow(b - sm, 2), 0)
const stdev = (sample, sm=mean(sample)) => Math.sqrt(variance(sample))

const means = {}
const stdevs = {}
let observations = []

for (let i of [0, 1, 2]) {
  for (let j of [0, 1, 2]) {
    let sample = [i, j]
    sampleMean = mean(sample)
    sampleStdev = stdev(sample)
    
    means[sampleMean] = 1 + (means[sampleMean] ?? 0)
    stdevs[sampleStdev] = 1 + (stdevs[sampleStdev] ?? 0)
    observations = [...observations, {i, j, sampleMean, sampleStdev }]
  }
}

const combinations = observations.length

console.table(observations)

console.table(
  Object.keys(means).sort()
    .reduce((acc, x) => [ ...acc, { x, probabilty: `${means[x]}/${combinations}` }], []))

console.table(
  Object.keys(stdevs).sort()
    .reduce((acc, x) => [ ...acc, { x, probabilty: `${stdevs[x]}/${combinations}` }], []))
