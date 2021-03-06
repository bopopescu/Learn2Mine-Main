sens <- function(pred.labels,correct.labels,tp.label) {
  # First change all things that are no tp.label to 'not tp.label'
  num.tp = sum(pred.labels == correct.labels & correct.labels == tp.label)
  num.fn = sum(pred.labels != correct.labels & correct.labels == tp.label)
  
  return(num.tp/(num.tp + num.fn))
}

spec <- function(pred.labels,correct.labels,tp.label) {
  num.tn = sum(pred.labels == correct.labels & correct.labels != tp.label)
  num.fp = sum(pred.labels != correct.labels & correct.labels != tp.label)
  
  return(num.tn/(num.tn + num.fp))
}

accuracy <- function(pred.labels,correct.labels) {
  num.correct = sum(pred.labels == correct.labels)
  
  return(num.correct/length(correct.labels))
}

