// const mean = sample => 
//   sample.reduce((a, b) => a+b, 0) / sample.length

// const stdev = (sample, sm=mean(sample)) =>
//   Math.sqrt(sample.reduce((a, b) => a + Math.pow(b - sm, 2), 0))

const mean = sample => sample.reduce((a, b) => a+b, 0) / sample.length
const variance = (sample, sm=mean(sample)) => sample.reduce((a, b) => a + Math.pow(b - sm, 2), 0)
const stdev = sample => Math.sqrt(variance(sample))


module.exports = { mean, stdev, variance }