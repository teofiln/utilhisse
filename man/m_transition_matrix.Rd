% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utilhisse.R
\name{m_transition_matrix}
\alias{m_transition_matrix}
\title{Extract transition rates from a multistate HiSSE model (MuSSE, MuHiSSE or CID)}
\usage{
m_transition_matrix(model_fit, hidden_states = TRUE, states)
}
\arguments{
\item{model_fit}{A muhisse fit object}

\item{hidden_states}{Logical whether the model contains hidden states}

\item{states}{A vector of state labels to replace hisse's 0/1 notation (see examples)}
}
\value{
The estimated transition rates formatted in a matrix
}
\description{
A helper function that formats \code{hisse::MuHiSSE}'s output into a matrix so transition rates between states can be easier to visualize.
}
\examples{

# The translation should follow the order of states in model_fit$solution.
# In this example, hisse's 00, 01, 10, and 11 states correspond to
# marine-plankton, marine-benthos, freshwater-plankton, and freshwater-benthos

States <- c("mp", "mb", "fp", "fb")

# muhisse model
data("diatoms")
m_transition_matrix(
 model_fit = diatoms$muhisse,
 hidden_states = TRUE,
 states = States)

# CID8 model
# we have 8 hidden states, so the transition matrix is cumbersome
m_transition_matrix(
 model_fit = diatoms$cid8,
 hidden_states = TRUE,
 states = States)

# musse model, no hidden states
m_transition_matrix(
 model_fit = diatoms$musse,
 hidden_states = FALSE,
 states = c("mp", "mb", "fp", "fb"))

}
