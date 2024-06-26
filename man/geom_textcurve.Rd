% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geom_textcurve.R
\name{geom_textcurve}
\alias{geom_textcurve}
\alias{geom_labelcurve}
\title{Text on a curve}
\usage{
geom_textcurve(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "identity",
  ...,
  curvature = 0.5,
  angle = 90,
  ncp = 5,
  arrow = NULL,
  lineend = "butt",
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE
)

geom_labelcurve(
  mapping = NULL,
  data = NULL,
  stat = "identity",
  position = "identity",
  ...,
  curvature = 0.5,
  angle = 90,
  ncp = 5,
  arrow = NULL,
  lineend = "butt",
  label.r = unit(0.15, "lines"),
  label.padding = unit(0.25, "lines"),
  na.rm = FALSE,
  show.legend = NA,
  inherit.aes = TRUE
)
}
\arguments{
\item{mapping}{Set of aesthetic mappings created by \code{\link[ggplot2:aes]{aes()}}. If specified and
\code{inherit.aes = TRUE} (the default), it is combined with the default mapping
at the top level of the plot. You must supply \code{mapping} if there is no plot
mapping.}

\item{data}{The data to be displayed in this layer. There are three
options:

If \code{NULL}, the default, the data is inherited from the plot
data as specified in the call to \code{\link[ggplot2:ggplot]{ggplot()}}.

A \code{data.frame}, or other object, will override the plot
data. All objects will be fortified to produce a data frame. See
\code{\link[ggplot2:fortify]{fortify()}} for which variables will be created.

A \code{function} will be called with a single argument,
the plot data. The return value must be a \code{data.frame}, and
will be used as the layer data. A \code{function} can be created
from a \code{formula} (e.g. \code{~ head(.x, 10)}).}

\item{stat}{The statistical transformation to use on the data for this layer.
When using a \verb{geom_*()} function to construct a layer, the \code{stat}
argument can be used the override the default coupling between geoms and
stats. The \code{stat} argument accepts the following:
\itemize{
\item A \code{Stat} ggproto subclass, for example \code{StatCount}.
\item A string naming the stat. To give the stat as a string, strip the
function name of the \code{stat_} prefix. For example, to use \code{stat_count()},
give the stat as \code{"count"}.
\item For more information and other ways to specify the stat, see the
\link[ggplot2:layer_stats]{layer stat} documentation.
}}

\item{position}{A position adjustment to use on the data for this layer. This
can be used in various ways, including to prevent overplotting and
improving the display. The \code{position} argument accepts the following:
\itemize{
\item The result of calling a position function, such as \code{position_jitter()}.
This method allows for passing extra arguments to the position.
\item A string naming the position adjustment. To give the position as a
string, strip the function name of the \code{position_} prefix. For example,
to use \code{position_jitter()}, give the position as \code{"jitter"}.
\item For more information and other ways to specify the position, see the
\link[ggplot2:layer_positions]{layer position} documentation.
}}

\item{...}{Other arguments passed on to \code{\link[ggplot2:layer]{layer}}. These are often aesthetics, used to set an aesthetic to a fixed value, like \code{colour = "red"} or \code{size = 3}. These can also be the following text-path parameters:\describe{\item{\code{text_only}}{A \code{logical(1)} indicating whether the path part should be plotted along with the text (\code{FALSE}, the default). If \code{TRUE}, any parameters or aesthetics relating to the drawing of the path will be ignored.}\item{\code{gap}}{A \code{logical(1)} which if \code{TRUE}, breaks the path into two sections with a gap on either side of the label. If \code{FALSE}, the path is plotted as a whole. Alternatively, if \code{NA}, the path will be broken if the string has a \code{vjust} between 0 and 1, and not otherwise. The default for the label variant is \code{FALSE} and for the text variant is \code{NA}.}\item{\code{upright}}{A \code{logical(1)} which if \code{TRUE} (default), inverts any text where the majority of letters would upside down along the path, to improve legibility. If \code{FALSE}, the path decides the orientation of text.}\item{\code{halign}}{A \code{character(1)} describing how multi-line text should be justified. Can either be \code{"center"} (default), \code{"left"} or \code{"right"}.}\item{\code{offset}}{A \code{\link[grid:unit]{unit}} object of length 1 to determine the offset of the text from the path. If this is \code{NULL} (default), the \code{vjust} parameter decides the offset. If not \code{NULL}, the \code{offset} argument overrules the \code{vjust} setting.}\item{\code{parse}}{A \code{logical(1)} which if \code{TRUE}, will coerce the labels into expressions, allowing for plotmath syntax to be used.}\item{\code{straight}}{A \code{logical(1)} which if \code{TRUE}, keeps the letters of a label on a straight baseline and if \code{FALSE} (default), lets individual letters follow the curve. This might be helpful for noisy paths.}\item{\code{padding}}{A \code{\link[grid:unit]{unit}} object of length 1 to determine the padding between the text and the path when the \code{gap} parameter trims the path.}\item{\code{rich}}{A \code{logical(1)} whether to interpret the text as html/markdown formatted rich text. Default: \code{FALSE}. See also the rich text section of the details in \code{\link[=geom_textpath]{geom_textpath()}}.}\item{\code{remove_long}}{if TRUE, labels that are longer than their associated path will be removed.}}}

\item{curvature}{A numeric value giving the amount of curvature.
    Negative values produce left-hand curves, positive values
    produce right-hand curves, and zero produces a straight line.}

\item{angle}{A numeric value between 0 and 180,
    giving an amount to skew the control
    points of the curve.  Values less than 90 skew the curve towards
    the start point and values greater than 90 skew the curve
    towards the end point.}

\item{ncp}{The number of control points used to draw the curve.
    More control points creates a smoother curve.}

\item{arrow}{Arrow specification, as created by \code{\link[grid:arrow]{grid::arrow()}}.}

\item{lineend}{Line end style (round, butt, square).}

\item{na.rm}{If \code{FALSE}, the default, missing values are removed with
a warning. If \code{TRUE}, missing values are silently removed.}

\item{show.legend}{logical. Should this layer be included in the legends?
\code{NA}, the default, includes if any aesthetics are mapped.
\code{FALSE} never includes, and \code{TRUE} always includes.
It can also be a named logical vector to finely select the aesthetics to
display.}

\item{inherit.aes}{If \code{FALSE}, overrides the default aesthetics,
rather than combining with them. This is most useful for helper functions
that define both data and aesthetics and shouldn't inherit behaviour from
the default plot specification, e.g. \code{\link[ggplot2:borders]{borders()}}.}

\item{label.r}{Radius of rounded corners. Defaults to 0.15 lines.}

\item{label.padding}{Amount of padding around label. Defaults to 0.25 lines.}
}
\value{
A \code{Layer} ggproto object that can be added to a plot.
}
\description{
\code{geom_textcurve()} and \code{geom_labelcurve()} draw text on curved lines. See
the underlying \code{\link[grid:grid.curve]{grid::curveGrob()}} for the parameters that
control the curve.
}
\section{Aesthetics}{

\code{geom_textcurve()} understands the following aesthetics (required aesthetics are in bold):
\itemize{
  \item \strong{\code{x}}
  \item \strong{\code{xend}}
  \item \strong{\code{y}}
  \item \strong{\code{yend}}
  \item \strong{\code{label}}
  \item \code{alpha}
  \item \code{angle}
  \item \code{colour}
  \item \code{family}
  \item \code{fontface}
  \item \code{group}
  \item \code{hjust}
  \item \code{linecolour}
  \item \code{lineheight}
  \item \code{linetype}
  \item \code{linewidth}
  \item \code{size}
  \item \code{spacing}
  \item \code{textcolour}
  \item \code{vjust}
}
In addition to aforementioned aesthetics, \code{geom_labelcurve()} also understands:
\itemize{
  \item \code{boxcolour}
  \item \code{boxlinetype}
  \item \code{boxlinewidth}
  \item \code{fill}
}
The \code{spacing} aesthetic allows fine control of spacing
 of text, which is called 'tracking' in typography.
The default is 0 and units are measured in 1/1000 em.
Numbers greater than zero increase the spacing,
whereas negative numbers decrease the spacing.


Learn more about setting these aesthetics 
in \code{vignette("ggplot2-specs")}.
}

\examples{
t <- seq(0, 2 * pi, length.out = 4)[-1]

df <- data.frame(
  x = cos(t),
  y = sin(t),
  xend = cos(t + 1.8),
  yend = sin(t + 1.8)
)

ggplot(df, aes(x, y, xend = xend, yend = yend)) +
  geom_textcurve(
    label = c(
      "A chicken lays an egg",
      "A chick becomes a chicken",
      "An egg hatches into a chick"
    ),
    curvature = 0.5, vjust = 2,
    arrow = arrow(ends = "first")
  ) +
  coord_equal(xlim = c(-1.1, 1.1), ylim = c(-1.1, 1.1))
}
