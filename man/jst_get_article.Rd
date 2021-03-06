% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/article.R
\name{jst_get_article}
\alias{jst_get_article}
\title{Extract meta information for articles}
\usage{
jst_get_article(file_path)
}
\arguments{
\item{file_path}{A \code{.xml}-file for a journal-article.}
}
\value{
A \code{tibble} containing the extracted meta-data with the following
columns:
\itemize{
\item file_name \emph{(chr)}: The file_name of the original .xml-file. Can be used
for joining with other parts (authors, references, footnotes, full-texts).
\item journal_doi \emph{(chr)}: A registered identifier for the journal.
\item journal_jcode \emph{(chr)}: A identifier for the journal like "amerjsoci" for
the "American Journal of Sociology".
\item journal_pub_id \emph{(chr)}: Similar to journal_jcode. Most of the time either
one is present.
\item journal_title \emph{(chr)}: The title of the journal.
\item article_doi \emph{(chr)}: A registered unique identifier for the article.
\item article_jcode \emph{(chr)}: A unique identifier for the article (not a DOI).
\item article_pub_id \emph{(chr)}: Infrequent, either part of the DOI or the
article_jcode.
\item article_type \emph{(chr)}: The type of article (research-article, book-review,
etc.).
\item article_title \emph{(chr)}: The title of the article.
\item volume \emph{(chr)}: The volume the article was published in.
\item issue \emph{(chr)}: The issue the article was published in.
\item language \emph{(chr)}: The language of the article.
\item pub_day \emph{(chr)}: Publication day, if specified.
\item pub_month \emph{(chr)}: Publication month, if specified.
\item pub_year \emph{(int)}: Year of publication.
\item first_page \emph{(int)}: Page number for the first page of the article.
\item last_page \emph{(int)}: Page number for the last page of the article.
\item page_range \emph{(chr)}: The range of pages for the article.
}

A note about publication dates: always the first entry is being extracted,
which should correspond to the oldest date, in case there is more than one
date.
}
\description{
\code{jst_get_article()} extracts meta-data from JSTOR-XML files for journal
articles.
}
\examples{
jst_get_article(jst_example("sample_with_references.xml"))
}
