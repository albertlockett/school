import { mean, stdev } from './util'

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
