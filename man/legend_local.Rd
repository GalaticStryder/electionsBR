% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/legend_local.R
\name{legend_local}
\alias{legend_local}
\title{Download data on local election coalitions in Brazil}
\usage{
legend_local(year, uf = "all", br_archive = FALSE, ascii = FALSE,
  encoding = "latin1", export = FALSE)
}
\arguments{
\item{year}{Election year. For this function, only the years 1996, 2000, 2004, 2008, 2012 and 2016
are available.}

\item{uf}{Federation Unit acronym (\code{character vector}).}

\item{br_archive}{In the TSE's data repository, some results can be obtained for the whole country by loading a single
file. By setting this argumento to \code{TRUE}.}

\item{ascii}{(\code{logical}). Should the text be transformed from Latin-1 to ASCII format?}

\item{encoding}{Data original encoding (defaults to 'Latin-1'). This can be changed to avoid errors
when \code{ascii = TRUE}.}

\item{export}{(\code{logical}). Should the downloaded data be saved in .dta and .sav in the current directory?}
}
\value{
\code{legend_local()} returns a \code{data.frame} with the following variables:

\itemize{
  \item DATA_GERACAO: Generation date of the file (when the data was collected).
  \item HORA_GERACAO: Generation time of the file (when the data was collected), Brasilia Time.
  \item ANO_ELEICAO: Election year.
  \item NUM_TURNO: Round number.
  \item DESCRICAO_ELEICAO: Description of the election.
  \item SIGLA_UF: Units of the Federation's acronym in which occurred the election.
  \item SIGLA_UE: Units of the Federation's acronym (In case of major election is the FU's
  acronym in which the candidate runs for (text) and in case of municipal election is the
  municipal's Supreme Electoral Court code (number)). Assume the special values BR, ZZ and
  VT to designate, respectively, Brazil, Overseas and Absentee Ballot.
  \item NOME_UE: Electoral Unit name.
  \item CODIGO_CARGO: Code of the position that the candidate runs for.
  \item DESCRICAO_CARGO: Description of the position that the candidate runs for.
  \item TIPO_LEGENDA: It informs it the candidate runs for 'coalition' or 'isolated party'.
  \item NUM_PARTIDO: Party number.
  \item SIGLA_PARTIDO: Party acronym.
  \item NOME_PARTIDO: Party name.
  \item SIGLA_COLIGACAO: Coalition's acronym.
  \item CODIGO_COLIGACAO: Coalition's code.
  \item COMPOSICAO_COLIGACAO: Coalition's composition.
  \item SEQUENCIAL_COLIGACAO: Coalition's sequential number, generated internally by the electoral justice.
}
}
\description{
\code{legend_local()} downloads and aggregates the party denomonations (coalitions or parties) from the local elections in Brazil,
disaggregated by cities. The function returns a \code{data.frame} where each observation
corresponds to a city.
}
\details{
If export is set to \code{TRUE}, the downloaded data is saved as .dta and .sav
 files in the current directory.
}
\note{
For the elections prior to 2000, some infomration can be incomplete.
}
\examples{
\dontrun{
df <- legend_local(2000)
}
}
\seealso{
\code{\link{legend_fed}} for federal elections in Brazil.
}
