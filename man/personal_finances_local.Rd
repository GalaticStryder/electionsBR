% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/personal_finances_local.R
\name{personal_finances_local}
\alias{personal_finances_local}
\title{Download data on local candidates' personal financial disclosures}
\usage{
personal_finances_local(year, uf = "all", br_archive = FALSE,
  ascii = FALSE, encoding = "latin1", export = FALSE)
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
\code{assets_candidate_local()} returns a \code{data.frame} with the following variables:

\itemize{
  \item DATA_GERACAO: Generation date of the file (when the data was collected).
  \item HORA_GERACAO: Generation time of the file (when the data was collected), Brasilia Time.
  \item ANO_ELEICAO: Election year.
  \item DESCRICAO_ELEICAO: Description of the election.
  \item SIGLA_UF: Units of the Federation's acronym in which occurred the election.
  \item SQ_CANDIDATO: Candidate's ID ID attributed by TSE.
  \item CD_TIPO_BEM_CANDIDATO: Code of the property.
  \item DS_TIPO_BEM_CANDIDATO: Description of the property.
  \item DETALHE_BEM: Addional details of the property.
  \item VALOR_BEM: Value, in current Brazilian reais, of the property.
  \item DATA_ULT_TOTALIZACAO: Date of the last totalization in that city and zone.
  \item HORA_ULT_TOTALIZACAO: Time of the last totalization in that city and zone.
}
}
\description{
\code{personal_finances_local()} downloads and aggregates the data on local candidates' personal financial disclosures. The function returns a \code{data.frame} where each observation corresponds to a candidate's property.
}
\details{
If export is set to \code{TRUE}, the downloaded data is saved as .dta and .sav
 files in the current directory.
}
\note{
For the elections prior to 2000, some information may be incomplete.
}
\examples{
\dontrun{
df <- personal_finances_local(2000)
}
}
\seealso{
\code{\link{personal_finances_fed}} for personal financial disclosures of running candidates in federal elections.
}
