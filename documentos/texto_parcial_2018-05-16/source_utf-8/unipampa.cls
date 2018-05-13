%==============================================================================
% unipampa - classe de documento com padrï¿½es para documentos da UNIPAMPA
%
% Este documento foi baseado no documento construï¿½do pelo UFRGS TeX Users Group,
% Grupo de Usuï¿½rios TeX da UFRGS e adaptado para atender ao manual de normalizaï¿½ï¿½o
% da UNIPAMPA 2016, produzido pelo grupo gestor do Sistema de Bibliotecas da
% UNIPAMPA, pela Profa. Ana Paula Lï¿½dtke Ferreira, do Campus Bagï¿½.
%
% Este arquivo ï¿½ distribuï¿½do por meio da licenï¿½a GNU Public License.
%
% Nï¿½o nos responsabilizamos por manter este documento. Sugestï¿½es e atualizaï¿½ï¿½es
% podem ser enviadas para anaferreira@unipampa.edu.br.
%
%==============================================================================


%==============================================================================
%
% Identificaï¿½ï¿½o deste documento
%
%==============================================================================
\usepackage[utf8]{inputenc} 
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{unipampa}[2016/09/22 Formatacao de documentos para a UNIPAMPA]

%==============================================================================
%
% Informaï¿½ï¿½es sobre cursos e titulaï¿½ï¿½es
%
%==============================================================================

\newcommand{\UNIPAMPA}{Universidade Federal do Pampa}

\newcommand{\course}[1]{\gdef\@course{#1}}                  % nome do curso, sem modalidade - no caso de pï¿½s-graduaï¿½ï¿½o, com nome completo
\newcommand{\modalidade}[1]{\gdef\@modalidade{#1}}          % somente para a graduaï¿½ï¿½o (Licenciatura, Bacharelado, Curso Superior de Tecnologia)
\newcommand{\campus}[1]{\gdef\@campus{#1}}                  % nome do Campus
\newcommand{\advisorname}{Orientador}%
\newcommand{\coadvisorname}{Co-orientador}%


%==============================================================================
%
% Tipos de documentos suportados por este modelo
%
%==============================================================================


\DeclareOption{tcc}{%
    \newcommand{\titlepagespecificinfo}{\tccspecificinfo}
    \def\@cipspecificinfo{\tccname\ (Graduação)}
    \def\textapproval{\tccapproval}
}
\DeclareOption{espec}{%
    \newcommand{\titlepagespecificinfo}{\especspecificinfo}
    \def\@cipspecificinfo{\especname\ (Especializaï¿½ï¿½o)}
    \def\textapproval{\especapproval}
}
\DeclareOption{mestrado}{%
    \newcommand{\titlepagespecificinfo}{\dissspecificinfo}
    \def\@cipspecificinfo{\dissname\ (Mestrado)}
    \def\textapproval{\dissapproval}
}
\DeclareOption{mestradoprof}{%
    \newcommand{\titlepagespecificinfo}{\dissspecificinfo}
    \def\@cipspecificinfo{\dissname\ (Mestrado Profissional)}
    \def\textapproval{\dissapproval}
}
\DeclareOption{doutorado}{%
    \newcommand{\titlepagespecificinfo}{\tesespecificinfo}
    \def\@cipspecificinfo{\tesename\ (Doutorado)}
    \def\textapproval{\teseapproval}
}

%==============================================================================
%
% Outros pacotes locais importados
%
%==============================================================================

\newcommand{\unipampa@novodoc}[1]{\DeclareOption{#1}{\AtEndOfClass{\input{#1.def}}}}

%==============================================================================
%
% Definiï¿½ï¿½es para os cursos de graduaï¿½ï¿½o
%
%==============================================================================

%
% Campus Alegrete
%
\DeclareOption{alcc}{%
  \course{Ciï¿½ncia da Computaï¿½ï¿½o}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncia da Computaï¿½ï¿½o}
}
\DeclareOption{alea}{%
  \course{Engenharia Agrï¿½cola}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Agrï¿½cola}
}
\DeclareOption{alec}{%
  \course{Engenharia Civil}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Civil}
}
\DeclareOption{ales}{%
  \course{Engenharia de Software}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Software}
}
\DeclareOption{alet}{%
  \course{Engenharia de Telecomunicaï¿½ï¿½es}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Telecomunicaï¿½ï¿½es}
}
\DeclareOption{alee}{%
  \course{Engenharia Elï¿½trica}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Elï¿½trica}
}
\DeclareOption{alem}{%
  \course{Engenharia Mecï¿½nica}
  \modalidade{Bacharelado}
  \campus{Alegrete}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Mecï¿½nica}
}
%
% Campus Bagï¿½
%
\DeclareOption{baec}{%
  \course{Engenharia de Computaï¿½ï¿½o}
  \modalidade{Bacharelado}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Computaï¿½ï¿½o}
}

\DeclareOption{baeq}{%
  \course{Engenharia Quï¿½mica}
  \modalidade{Bacharelado}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Quï¿½mica}
}

\DeclareOption{baep}{%
  \course{Engenharia de Produï¿½ï¿½o}
  \modalidade{Bacharelado}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Produï¿½ï¿½o}
}

\DeclareOption{baera}{%
  \course{Engenharia de Energias Renovï¿½veis e de Ambiente}
  \modalidade{Bacharelado}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Energias}
}

\DeclareOption{baee}{%
  \course{Engenharia de Energia}
  \modalidade{Bacharelado}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Energia}
}

\DeclareOption{baea}{%
  \course{Engenharia de Alimentos}
  \modalidade{Bacharelado}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Alimentos}
}

\DeclareOption{balf}{%
  \course{Fï¿½sica}
  \campus{Bagï¿½}
  \modalidade{Licenciatura}
	\providecommand{\titulacaoEm}{Licenciado em Fï¿½sica}
}

\DeclareOption{balm}{%
  \course{Matemï¿½tica}
  \campus{Bagï¿½}
  \modalidade{Licenciatura}
	\providecommand{\titulacaoEm}{Licenciado em Matemï¿½tica}
}

\DeclareOption{balq}{%
  \course{Quï¿½mica}
  \modalidade{Licenciatura}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Licenciado em Quï¿½mica}
}

\DeclareOption{bamu}{%
  \course{Mï¿½sica}
  \modalidade{Licenciatura}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Licenciado em Mï¿½sica}
}

\DeclareOption{bale}{%
  \course{Letras -- Portuguï¿½s e Literaturas de Lï¿½ngua Portuguesa}
  \modalidade{Licenciatura}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}

\DeclareOption{bala}{%
  \course{Letras -- Lï¿½nguas Adicionais: Inglï¿½s Espanhol e Respectivas Literaturas}
  \modalidade{Licenciatura}
  \campus{Bagï¿½}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}
%
% Campus Caï¿½apava do Sul
%
\DeclareOption{csce}{%
  \course{Ciï¿½ncias Exatas}
  \modalidade{Licenciatura Interdisciplinar}
  \campus{Caï¿½apava do Sul}
	\providecommand{\titulacaoEm}{Licenciado em Ciï¿½ncias Exatas}
}
\DeclareOption{csesa}{%
  \course{Engenharia Ambiental e Sanitï¿½ria}
  \modalidade{Bacharelado}
  \campus{Caï¿½apava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Ambiental e Sanitï¿½ria}
}
\DeclareOption{csgeo}{%
  \course{Geofísica}
  \modalidade{Bacharelado}
  \campus{Caçapava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Geofísica}
}
\DeclareOption{csgel}{%
  \course{Geologia}
  \modalidade{Bacharelado}
  \campus{Caçapava do Sul}
	\providecommand{\titulacaoEm}{Bacharel em Geologia}
}
\DeclareOption{cstm}{%
  \course{Mineraï¿½ï¿½o}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Caï¿½apava do Sul}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Mineraï¿½ï¿½o}
}
%
% Campus Dom Pedrito
%
\DeclareOption{dplcn}{%
  \course{Ciï¿½ncias da Natureza}
  \modalidade{Licenciatura}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Licenciado em Ciï¿½ncias da Natureza}
}
\DeclareOption{dpta}{%
  \course{Agronegï¿½cio}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Agronegï¿½cio}
}
\DeclareOption{dpec}{%
  \course{Educaï¿½ï¿½o no Campo}
  \modalidade{Licenciatura}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Licenciado em Educaï¿½ï¿½o no Campo}
}
\DeclareOption{dpz}{%
  \course{Zootecnia}
  \modalidade{Bacharelado}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Bacharel em Zootecnia}
}
\DeclareOption{dpe}{%
  \course{Enologia}
  \modalidade{Bacharelado}
  \campus{Dom Pedrito}
	\providecommand{\titulacaoEm}{Bacharel em Enologia}
}
%
% Campus Itaqui
%
\DeclareOption{itagr}{%
  \course{Agronomia}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Agronomia}
}
\DeclareOption{itta}{%
  \course{Ciï¿½ncia e Tecnologia dos Alimentos}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncia e Tecnologia dos Alimentos}
}
\DeclareOption{itea}{%
  \course{Engenharia de Agrimensura}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia de Agrimensura}
}
\DeclareOption{ittc}{%
  \course{Interdisciplinar em Ciï¿½ncia e Tecnologia}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncia e Tecnologia}
}
\DeclareOption{itlm}{%
  \course{Matemï¿½tica}
  \modalidade{Licenciatura}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Licenciado em Matemï¿½tica}
}
\DeclareOption{itnut}{%
  \course{Nutriï¿½ï¿½o}
  \modalidade{Bacharelado}
  \campus{Itaqui}
	\providecommand{\titulacaoEm}{Bacharel em Nutriï¿½ï¿½o}
}
%
% Campus Jaguarï¿½o
%
\DeclareOption{jatur}{%
  \course{Gestï¿½o de Turismo}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Jaguarï¿½o}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Gestï¿½o de Turismo}
}
\DeclareOption{jahis}{%
  \course{Histï¿½ria}
  \modalidade{Licenciatura}
  \campus{Jaguarï¿½o}
	\providecommand{\titulacaoEm}{Licenciado em Histï¿½ria}
}
\DeclareOption{jalpe}{%
  \course{Letras -- Portuguï¿½s, Espanhol e Respectivas Literaturas}
  \modalidade{Licenciatura}
  \campus{Jaguarï¿½o}
	\providecommand{\titulacaoEm}{Licenciado em Letras}
}
\DeclareOption{jape}{%
  \course{Pedagogia}
  \modalidade{Licenciatura}
  \campus{Jaguarï¿½o}
	\providecommand{\titulacaoEm}{Licenciado em Pedagogia}
}
\DeclareOption{jappc}{%
  \course{Produï¿½ï¿½o e Polï¿½tica Cultural}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Jaguarï¿½o}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Produï¿½ï¿½o e Polï¿½tica Cultural}
}
%
% Campus Santana do Livramento
%
\DeclareOption{slgp}{%
  \course{Gestï¿½o Pï¿½blica}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Gestï¿½o Pï¿½blica}
}
\DeclareOption{sla}{%
  \course{Administraï¿½ï¿½o}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Administraï¿½ï¿½o}
}
\DeclareOption{slce}{%
  \course{Ciï¿½ncias Econï¿½micas}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncias Econï¿½micas}
}
\DeclareOption{sldir}{%
  \course{Direito}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Direito}
}
\DeclareOption{slri}{%
  \course{Relaï¿½ï¿½es Internacionais}
  \modalidade{Bacharelado}
  \campus{Santana do Livramento}
	\providecommand{\titulacaoEm}{Bacharel em Relaï¿½ï¿½es Internacionais}
}
%
% Campus Sï¿½o Borja
%
\DeclareOption{sbcp}{%
  \course{Ciï¿½ncias Sociais - Ciï¿½ncia Polï¿½tica}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncias Sociais}
}
\DeclareOption{sbch}{%
  \course{Ciï¿½ncias Humanas}
  \modalidade{Licenciatura}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Licenciado em Ciï¿½ncias Humanas}
}
\DeclareOption{sbjor}{%
  \course{Jornalismo}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Jornalismo}
}
\DeclareOption{sbpp}{%
  \course{Publicidade e Propaganda}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Publicidade e Propaganda}
}
\DeclareOption{sbrp}{%
  \course{Relaï¿½ï¿½es Pï¿½blicas}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Relaï¿½ï¿½es Pï¿½blicas}
}
\DeclareOption{sbss}{%
  \course{Serviï¿½o Social}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Borja}
	\providecommand{\titulacaoEm}{Bacharel em Serviï¿½o Social}
}
%
% Campus Sï¿½o Gabriel
%
\DeclareOption{sgbio}{%
  \course{Biotecnologia}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Biotecnologia}
}
\DeclareOption{sgbic}{%
  \course{Ciï¿½ncias Biolï¿½gicas}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Ciï¿½ncias Biolï¿½gicas}
}
\DeclareOption{sgbil}{%
  \course{Ciï¿½ncias Biolï¿½gicas}
  \modalidade{Licenciatura}
  \campus{Sï¿½o Gabriel}
	\providecommand{\titulacaoEm}{Licenciado em Ciï¿½ncias Biolï¿½gicas}
}
\DeclareOption{sgef}{%
  \course{Engenharia Florestal}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Engenharia Florestal}
}
\DeclareOption{sggea}{%
  \course{Gestï¿½o Ambiental}
  \modalidade{Bacharelado}
  \campus{Sï¿½o Gabriel}
	\providecommand{\titulacaoEm}{Bacharel em Gestï¿½o Ambiental}
}
%
% Campus Uruguaiana
%  
\DeclareOption{ursta}{%
  \course{Aquicultura}
  \modalidade{Curso Superior de Tecnologia}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Tecnï¿½logo em Aquicultura}
}
\DeclareOption{urlcn}{%
  \course{Ciï¿½ncias da Natureza}
  \modalidade{Licenciatura}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Licenciado em Ciï¿½ncias da Natureza}
}
\DeclareOption{urlef}{%
  \course{Educaï¿½ï¿½o Fï¿½sica}
  \modalidade{Licenciatura}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Licenciado em Educaï¿½ï¿½o Fï¿½sica}
}
\DeclareOption{urenf}{%
  \course{Enfermagem}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Enfermagem}
}
\DeclareOption{urfar}{%
  \course{Farmï¿½cia}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Farmï¿½cia}
}
\DeclareOption{urfis}{%
  \course{Fisioterapia}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Fisioterapia}
}
\DeclareOption{urmed}{%
  \course{Medicina}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Medicina}
}
\DeclareOption{urvet}{%
  \course{Medicina Veterinï¿½ria}
  \modalidade{Bacharelado}
  \campus{Uruguaiana}
	\providecommand{\titulacaoEm}{Bacharel em Medicina Veterinï¿½ria}
}
%==============================================================================
%
% Definiï¿½ï¿½es para os cursos de cursos de pï¿½s-graduaï¿½ï¿½o
%
%==============================================================================
\DeclareOption{ppgee}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Engenharia Elï¿½trica}
    \providecommand{\areacourse}{Sistemas de Energia}
    \providecommand{\titulacaoEm}{Engenharia Elï¿½trica}
    \campus{Alegrete}
}

\DeclareOption{ppgeng}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Engenharia}
    \providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Engenharia}
    \campus{Alegrete}
}
%
% Campus Bagï¿½
%
\DeclareOption{ppgcap}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Computaï¿½ï¿½o Aplicada}
    \providecommand{\areacourse}{Tecnologias para a produï¿½ï¿½o agropecuï¿½ria}
    \providecommand{\titulacaoEm}{Computaï¿½ï¿½o Aplicada}
    \campus{Bagï¿½}
}

\DeclareOption{ppgec}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Ensino de Ciï¿½ncias}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ensino de Ciï¿½ncias}
    \campus{Bagï¿½}
}

\DeclareOption{ppgel}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Ensino de Lï¿½nguas}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ensino de Lï¿½nguas}
    \campus{Bagï¿½}
}
%
% Campus Caï¿½apava do Sul
%
\DeclareOption{ppgtm}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Tecnologia Mineral}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Tecnologia Mineral}
    \campus{Caï¿½apava do Sul}
}
%
% Campus Jaguarï¿½o
%
\DeclareOption{ppgedu}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Educaï¿½ï¿½o}
    \providecommand{\areacourse}{Planejamento educacional}
    \providecommand{\titulacaoEm}{Educaï¿½ï¿½o}
    \campus{Jaguarï¿½o}
}
%
% Campus Santana do Livramento
%
\DeclareOption{ppga}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Administraï¿½ï¿½o}
    \providecommand{\areacourse}{Administraï¿½ï¿½o}
    \providecommand{\titulacaoEm}{Administraï¿½ï¿½o}
    \campus{Santana do Livramento}
}
%
% Campus Sï¿½o Gabriel
%
\DeclareOption{ppgcb}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Ciï¿½ncias Biolï¿½gicas}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ciï¿½ncias Biolï¿½gicas}
    \campus{Sï¿½o Gabriel}
}
%
% Campus Uruguaiana
%
\DeclareOption{ppgbioq}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Bioquï¿½mica}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Bioquï¿½mica}
    \campus{Uruguaiana}
}

\DeclareOption{ppgca}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Ciï¿½ncia Animal}
    \providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ciï¿½ncia Animal}
    \campus{Uruguaiana}
}

\DeclareOption{ppgcf}{%
    \course{Programa de Pï¿½s-Graduaï¿½ï¿½o em Ciï¿½ncias Farmacï¿½uticas}
    %\providecommand{\areacourse}{}
    \providecommand{\titulacaoEm}{Ciï¿½ncias Farmacï¿½uticas}
    \campus{Uruguaiana}
}

\DeclareOption{pmpgcf}{%
    \course{Programa Multicï¿½ntrico de Pï¿½s-Graduaï¿½ï¿½o em Ciï¿½ncias Fisiolï¿½gicas}
    \providecommand{\areacourse}{Fisiologia}
    \providecommand{\titulacaoEm}{Ciï¿½ncias Fisiolï¿½gicas}
    \campus{Uruguaiana}
}

%==============================================================================
%
% Outros documentos necessï¿½rios para a produï¿½ï¿½o dos documentos
%
%==============================================================================

\unipampa@novodoc{formais} 						% pacote para definiï¿½ï¿½es formais - definiï¿½ï¿½es, teoremas, provas, etc.

%==============================================================================
%
% Declaraï¿½ï¿½es de lï¿½ngua e estrutura base dos documentos
%
%==============================================================================

\DeclareOption{english}{\@englishtrue\OptionNotUsed}\newif\if@english
\DeclareOption{noabntcite}{\@noabntcitetrue\OptionNotUsed}\newif\if@noabntcite
\DeclareOption{oneside}{\AtEndOfClass{\@twosidefalse}\OptionNotUsed}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax


%==============================================================================
%
% Inclusï¿½o de opï¿½ï¿½es da classe 'report' e outros pacotes e arquivos
%
%==============================================================================

\LoadClass[12pt,a4paper,twoside]{report}

\RequirePackage{xspace}
\RequirePackage{keyval}
\RequirePackage{fixltx2e}

\RequirePackage[english,brazilian]{babel}
\input{brazilian.babel}
\input{english.babel}
\if@english
        \selectlanguage{english}
        \AtBeginDocument{\selectlanguage{english}}
\fi
\RequirePackage{lastpage}
\RequirePackage{indentfirst}
%\RequirePackage{unipampadefs}
\RequirePackage{setspace}
\RequirePackage{ccaption}
\RequirePackage{caption}
\RequirePackage{titlesec}
\RequirePackage{fancyhdr}
\RequirePackage[usenames,dvipsnames,svgnames,table]{xcolor}
\RequirePackage[tocindentauto,tocfullflat]{tocstyle}
\settocfeature[toc][0]{entryhook}{\bfseries\uppercase}
\settocfeature[toc][1]{entryhook}{\bfseries}
\settocstylefeature{pagenumberbox}{\pnbox}
\settocfeature[lof][1]{entryhook}{\figurename\hspace{0.2em}} % valor calculado no olho. Deveria ser um espaï¿½o de tamanho fixo, mas ~ tem tamanho variï¿½vel
\settocfeature[lot][1]{entryhook}{\tablename\hspace{0.2em}}

\RequirePackage[%
        bookmarksnumbered=true,
        breaklinks=true,
        unicode=true,
%
        colorlinks=true,
        anchorcolor=black,
        citecolor=black,
        filecolor=black,
        linkcolor=black,
        urlcolor=black
]{hyperref}[2009/10/09]
\RequirePackage[all]{hypcap}

\ifxetex
  \usepackage{tgtermes}
\else
  \usepackage{times}              % pacote para usar fonte Adobe Times
  \RequirePackage[T1]{fontenc}
\fi

\if@noabntcite
\else
\RequirePackage[
    % Habilita o uso de citaï¿½ï¿½es no formato autor-data.
	alf,
	% O modelo da UFRGS requer que os tÃ­tulos dos trabalhos estejam em negrito.
    % Isso Ã© opcional na norma ABNT (que permite que seja usado itÃ¡lico) e
    % nÃ£o Ã© o padrÃ£o do abntex2.
    abnt-emphasize=bf
]{abntex2cite}
\fi

% espaï¿½amento entre as linhas
\newcommand{\setlinespacing}{\setstretch{1.415}}
\setlinespacing

% estes valores estï¿½o no segundo parï¿½grafo da introduï¿½ï¿½o dos documentos da biblioteca e, portanto, estÃ£o corretos
% a numeraÃ§Ã£o deve estar a 20mm do topo, logo headsep=30mm-20mm = 10mm
\RequirePackage[top=30mm,bottom=20mm,left=30mm,right=30mm,headsep=10mm]{geometry}
%\RequirePackage{calc}

\vfuzz=30pt % prevent "overfull \vbox while \output is active" warning

%==============================================================================
% Margens do texto
%==============================================================================

% indentaÃ§Ã£o dos parÃ¡grafos (medido no olho)
\setlength{\parindent}{3em}
\AtBeginDocument{\setlength{\parskip}{0mm}}

%==============================================================================
% NumeraÃ§Ã£o das pÃ¡ginas
%==============================================================================
\def\ps@iiufrgs{
        \let\@oddfoot\@empty
        \let\@evenfoot\@empty
        \def\@evenhead{{\small\thepage}}
        \def\@oddhead{\hspace*{\fill}{\small\thepage}}
}
\pagestyle{empty}
\let\ps@plain\ps@empty

%==============================================================================
% Definiï¿½ï¿½o de autor(es), orientador e co-orientador
%==============================================================================
\newcounter{ii@authorcount}
\renewcommand{\author}[2]{
        \addtocounter{ii@authorcount}{1}
        \expandafter\gdef\csname @author\alph{ii@authorcount}last\endcsname{#1}
        \expandafter\gdef\csname @author\alph{ii@authorcount}first\endcsname{#2}
        \expandafter\gdef\csname @author\alph{ii@authorcount}\endcsname{#2 #1}
}
\DeclareRobustCommand{\advisor}[3][]{
        \gdef\@advisorlast{#2}
        \gdef\@advisorfirst{#3}
        \gdef\@advisor{#1~#3 #2}
}
\DeclareRobustCommand{\coadvisor}[3][]{
        \gdef\@coadvisorlast{#2}
        \gdef\@coadvisorfirst{#3}
        \gdef\@coadvisor{#1~#3 #2}
}

%==============================================================================
% Definiï¿½ï¿½o dos membros da banca e suas instituiï¿½ï¿½es
%==============================================================================
\newcounter{ii@bancacount}
\newcounter{ii@instcount}

\newcommand{\banca}[3][]{
        \addtocounter{ii@bancacount}{1}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}last\endcsname{#1}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}first\endcsname{#2}
        \expandafter\gdef\csname @banca\alph{ii@bancacount}\endcsname{#1 #3 #2}
}

\newcommand{\inst}[1]{
        \addtocounter{ii@instcount}{1}
        \expandafter\gdef\csname @inst\alph{ii@instcount}\endcsname{#1}
}

%==============================================================================
% Definiï¿½ï¿½o das palavras-chave (max. 10)
%==============================================================================
\newcounter{kwcounter}
\newcommand{\keyword}[1]{
        \addtocounter{kwcounter}{1}
        \expandafter\gdef\csname keyw\alph{kwcounter}\endcsname{#1}
}
\newcommand{\@cipkw}{%
        \@ifundefined{keywa}{}{1.~\expandafter\MakeUppercase\keywa\@. }%
        \@ifundefined{keywb}{}{2.~\expandafter\MakeUppercase\keywb\@. }%
        \@ifundefined{keywc}{}{3.~\expandafter\MakeUppercase\keywc\@. }%
        \@ifundefined{keywd}{}{4.~\expandafter\MakeUppercase\keywd\@. }%
        \@ifundefined{keywe}{}{5.~\expandafter\MakeUppercase\keywe\@. }%
        \@ifundefined{keywf}{}{6.~\expandafter\MakeUppercase\keywf\@. }%
        \@ifundefined{keywg}{}{7.~\expandafter\MakeUppercase\keywg\@. }%
        \@ifundefined{keywh}{}{8.~\expandafter\MakeUppercase\keywh\@. }%
        \@ifundefined{keywi}{}{9.~\expandafter\MakeUppercase\keywi\@. }%
        \@ifundefined{keywj}{}{10.~\expandafter\MakeUppercase\keywj\@. }%
}
\newcommand{\@abstractkw}{%
        \@ifundefined{keywa}{}{\expandafter\MakeUppercase\keywa}%
        \@ifundefined{keywb}{}{. \keywb}%
        \@ifundefined{keywc}{}{. \keywc}%
        \@ifundefined{keywd}{}{. \keywd}%
        \@ifundefined{keywe}{}{. \keywe}%
        \@ifundefined{keywf}{}{. \keywf}%
        \@ifundefined{keywg}{}{. \keywg}%
        \@ifundefined{keywh}{}{. \keywh}%
        \@ifundefined{keywi}{}{. \keywi}%
        \@ifundefined{keywj}{}{. \keywj}%
}

%==============================================================================
% Redefiniï¿½ï¿½o da data (para ter mï¿½s e ano separados)
%==============================================================================
\renewcommand{\date}[2]{
        \gdef\@publmonth{#1}
        \gdef\@publyear{#2}%
}
\date{\monthname}{\number\year}

%==============================================================================
% Definiï¿½ï¿½o padrï¿½o da folha de rosto.
% Os dados especï¿½ficos do tipo de trabalho (dissertaï¿½ï¿½o, tese, etc.) sï¿½o
% informados definindo-se o comando \titlepagespecificinfo. Veja os
% arquivos .def incluï¿½dos com a classe.
%==============================================================================
\newlength{\titlepagewinwidth}\setlength{\titlepagewinwidth}{150mm} %95
\newlength{\titlepagewinheight}\setlength{\titlepagewinheight}{64mm}
\newlength{\titlepagewinvoffset}\setlength{\titlepagewinvoffset}{112mm}
\newlength{\approvalpagewinvoffset}\setlength{\approvalpagewinvoffset}{30mm}
\newlength{\bancapagewinvoffset}\setlength{\bancapagewinvoffset}{40mm}

\newcommand{\location}[2]{
        \gdef\@city{#1}
        \gdef\@state{#2}
}
\renewcommand{\maketitle}{%
  \setstretch{0.92}
  \hypersetup{%
    pdftitle={\@title},%
    pdfauthor={%
      \@authora%
      \@ifundefined{@authorb}{}{, \@authorb}%
      \@ifundefined{@authorc}{}{, \@authorc}%
      \@ifundefined{@authord}{}{, \@authord}%
    },%
    pdfkeywords={%
      \@ifundefined{keywa}{}{\keywa}%
      \@ifundefined{keywb}{}{. \keywb}%
      \@ifundefined{keywc}{}{. \keywc}%
      \@ifundefined{keywd}{}{. \keywd}%
      \@ifundefined{keywe}{}{. \keywe}%
      \@ifundefined{keywf}{}{. \keywf}%
      \@ifundefined{keywg}{}{. \keywg}%
      \@ifundefined{keywh}{}{. \keywh}%
      \@ifundefined{keywi}{}{. \keywi}%
      \@ifundefined{keywj}{}{. \keywj}%
    }%
  }%
  \begin{titlepage}
      \thetitlepage
  \end{titlepage}%
  \clearpage
  \setcounter{page}{2}%
  %\@ifundefined{@cipspecificinfo}{\@makenominatapage}{\@makecippage}
  \@ifundefined{@cipspecificinfo}{}{\@makecippage}
  \setlinespacing
  \folhadeaprovacao
}
\newcommand{\thetitlepage}{%
  \noindent\@topbox\\
  %\vspace{5.9ex}\\
  \vfill
  \centerline{\textbf{\@city}}
  \centerline{\textbf{\ii@date}}
  \vspace{8mm}
  \clearpage
  \noindent\@authorbox\\
  \vspace{5.9ex}\\
  \setstretch{0.95}
  \@ifundefined{titlepagespecificinfo}{}{
    \hspace*{\fill}\makebox[.56\textwidth][l]{%
      \parbox[t]{0.56\textwidth}{\lefthyphenmin=64\titlepagespecificinfo}%
    }%
    \vspace{5.5ex}\\
  }
  \@ifundefined{@advisor}{}{
    \hspace*{\fill}\makebox[.56\textwidth][l]{%
      \parbox[t]{0.56\textwidth}{\raggedright\lefthyphenmin=64\titlepageadvisorinfo}%
    }%
  }
  \vfill
  \centerline{\textbf{\@city}}
  \centerline{\textbf{\ii@date}}
  \vspace{8mm}
}
\def\@topbox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to \titlepagewinvoffset{%
                        \titlepagetopinfo\vfill\@winbox
                }
        }
}
\def\@authorbox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to \titlepagewinvoffset{%
                        \titlepageauthorinfo\vfill\@authorwinbox
                }
        }
}
\def\@authorwinbox{%
%       \fbox{
        \parbox[b]{\titlepagewinwidth}{%
        \centering\vbox to \titlepagewinheight{%
                \vspace*{5ex}
                {\large\MakeUppercase{\textbf{\@title}}\par}
                \vfill
        }%
       }%
}
\def\@winbox{%
%       \fbox{
        \parbox[b]{\titlepagewinwidth}{%
        \centering\vbox to \titlepagewinheight{%
                \vspace*{5ex}
                \MakeUppercase{\textbf{\@authora}}\\
                \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}%
                \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}%
                \@ifundefined{@authord}{}{\MakeUppercase{\@authord}\\}%
                \vspace{3cm}
                {\large\MakeUppercase{\textbf{\@title}}\par}
                \vfill
        }}%
%       }%
}

\newcommand{\titlepagetopinfo}{%
        \MakeUppercase{\bf\UNIPAMPA}\\
        %\MakeUppercase{Campus \@city}\\
        %\@ifundefined{@dept}{}{\MakeUppercase{\csname dept\@dept\endcsname}\\}%
        %\MakeUppercase{\@course}\\
}
\newcommand{\titlepageauthorinfo}{%
                \MakeUppercase{\textbf{\@authora}}\\
                \@ifundefined{@authorb}{}{\MakeUppercase{\@authorb}\\}%
                \@ifundefined{@authorc}{}{\MakeUppercase{\@authorc}\\}%
                \@ifundefined{@authord}{}{\MakeUppercase{\@authord}\\}%
                %\vspace{3cm}
                %{\large\textbf{\@title}\par}
}
\newcommand{\titlepageadvisorinfo}{%
        \@ifundefined{@advisor}{}{\advisorname:~\@advisorfirst\ \@advisorlast\\}%
        \@ifundefined{@coadvisor}{}{\coadvisorname:~\@coadvisorfirst\ \@coadvisorlast\\}%
}

%==============================================================================
% Definiï¿½ï¿½o da folha de aprovaï¿½ï¿½o
%==============================================================================

\newcommand{\defesa}[3]{        
        \gdef\@defday{#1}
        \gdef\@defmonth{#2}%
        \gdef\@defyear{#3}%
}

\newcommand{\folhadeaprovacao}{%
  \clearpage
  \noindent\@approvalbox\\
  \vfill
  \parbox[b]{.5\titlepagewinwidth}{%
        \centering\vbox to .5\titlepagewinheight{%
                \vspace*{20mm}
				       }%
	}
  \noindent\@bancabox\\
}

\def\@approvalbox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to \approvalpagewinvoffset{%
                        \titlepageauthorinfo
                        \vfill
                        \@approvalwinbox
                        \vspace*{10mm}
                        \setstretch{0.95}
                        \@ifundefined{titlepagespecificinfo}{}{
                           \hspace*{\fill}\makebox[.56\textwidth][l]{%
                              \parbox[t]{0.56\textwidth}{\lefthyphenmin=64\titlepagespecificinfo}%
                           }%
                           \vspace{12pt}\\
                        }
				                \@ifundefined{areacourse}{}{
				                   \hspace*{\fill}\makebox[\textwidth][r]{%
				                      \parbox[t]{0.56\textwidth}{área de concentração: \righthyphenmin=64\areacourse}%
				                   }%
				                   \vspace{18pt}\\
				                }
%                        \vfill
                }
        }
}
\def\@approvalwinbox{%
        \parbox[b]{\titlepagewinwidth}{%
        \centering\vbox to .5\titlepagewinheight{%
                \vspace*{20mm}
                {\large\MakeUppercase{\textbf{\@title}}\par}
        }%
       }%
}

\def\@bancabox{%
        \parbox[t]{\textwidth}{%
                \centering%
                \vbox to .6\textheight{%
                        \@newbancawinbox
                }
        }
}

\def\@newbancawinbox{%
        \raggedright%\framebox[.9\textwidth]{%
        
             \begin{minipage}{.9\textwidth}%
                \setstretch{0.95}
								\centering
                \vspace*{0.2ex}
                \setlength{\parindent}{0em}%
                \setlength{\parskip}{1.3ex}%
                \textapproval\ \@defday\ de \@defmonth\ de \@defyear.\\
    						\vspace*{12pt}
    						Banca examinadora:\\
    						%\hspace*{\fill}
    						\begin{tabular}{p{10mm}cp{10mm}}
    						          & &\\ & &\\ & &\\ 
    						          \hline
      										&\@advisor&\\ 
      										&\advisorname&\\
      										%&\@ifundefined\instorientador{Universidade Federal do Pampa}{\@instorientador}&\\
      										\@ifundefined{@bancaa}{}{& &\\ & &\\ & &\\ \hline &\@bancaa& \\ &\@insta& \\}%
      										\@ifundefined{@bancab}{}{& &\\ & &\\ & &\\ \hline &\@bancab& \\ &\@instb& \\}%
      										\@ifundefined{@bancac}{}{& &\\ & &\\ & &\\ \hline &\@bancac& \\ &\@instc& \\}%
      										\@ifundefined{@bancad}{}{& &\\ & &\\ & &\\ \hline &\@bancad& \\ &\@instd& \\}%
      										\@ifundefined{@bancae}{}{& &\\ & &\\ & &\\ \hline &\@bancae& \\ &\@inste& \\}%
      					\end{tabular}
   							\vspace*{20mm}
								\vfill
             \end{minipage}%
             \vspace*{10mm}
        %}%

        %\parbox[b]{\titlepagewinwidth}{%
        %\centering\vbox to \titlepagewinheight{%
                %\vspace*{5ex}
                %\centering
    					  %\noindent Dissertaï¿½ï¿½o defendida e aprovada em: \@defday\ de \@defmonth\ de \@defyear.\\
                %\vspace{3cm}
                %{\large\textbf{\@title}\par}
                %\vfill
        %}}%
%       }%
}

\def\@bancawinbox{%
        \parbox[b]{\titlepagewinwidth}{%
           \centering\vbox to \titlepagewinheight{%
                \centering
    					  \noindent Dissertação defendida e aprovada em: \@defday\ de \@defmonth\ de \@defyear.\\
    						\vspace{12pt}
    						\noindent Banca examinadora:
    						%\hspace*{\fill}
    						\makebox[\textwidth][c]{%
      							\fbox{\parbox[c]{\textwidth}{%\lefthyphenmin=64%
                          \setstretch{0.95}
     										  \vspace{24pt}\@advisor\\ \advisorname \\%
      										\@ifundefined{@bancaa}{}{\ \vspace{24pt}{\@bancaa}\\}%
      										\@ifundefined{@bancab}{}{\ \vspace{24pt}{\@bancab}\\}%
      										\@ifundefined{@bancac}{}{\ \vspace{24pt}{\@bancac}\\}%
      										\@ifundefined{@bancad}{}{\ \vspace{24pt}{\@bancad}\\}%
      										\@ifundefined{@bancae}{}{\ \vspace{24pt}{\@bancae}\\}%
   							 		      \vfill
   							 		}%
        				    \vspace{20mm}}
        				}%
          }%
     }
}


%==============================================================================
% Catalogaï¿½ï¿½oo na fonte (CIP) 
%==============================================================================
\newcommand{\@makecippage}{%
        \clearpage%
        \ \vfill
        \begin{center}
                %\textbf{\cipcaption}\\[2ex]
                \iiu@cipwindow
        \end{center}
        %\vfill
        %\nominata
}

\newcommand{\cutter}[1]{\gdef\@cutter{#1}}

%
% definiï¿½ï¿½o do quadro de catalogaï¿½ï¿½o bibliogrï¿½fica
%
\def\iiu@cipwindow{%
        \framebox[125mm]{%
        
        \begin{minipage}{110mm}%
                \vspace*{0.2ex}
                \setlength{\parindent}{1.5em}%
                \setlength{\parskip}{1.3ex}%
                \hspace{-12mm}\parbox[t]{5mm}{\@cutter}
                \hspace{12mm}\parbox[t]{95mm}{
                        \setlength{\parindent}{1.5em}%
                        \setlength{\parskip}{1.3ex}%
                				\noindent\@authoralast, \@authorafirst\par
                				\@title\ / \@authora.\ -- \@publmonth, \@publyear. \par
                				\pageref{LastPage}~f.: il. \par
                				\@cipspecificinfo\ -- Universidade Federal do Pampa, Campus \@campus, \@course,  \@publyear. \par
                				``Orientação: \@advisorfirst\ \@advisorlast\@ifundefined{@coadvisor}{}{; Co-orientação: \@coadvisorfirst\ \@coadvisorlast}''.\par
               					 \@cipkw I.~Título.\\
                \vspace{0.2ex}}
        \end{minipage}
        }%
}

%==============================================================================
% Dedicatï¿½ria
%==============================================================================

\newenvironment{dedicatoria}{\clearpage\begin{flushright}\ \vfill\begin{minipage}{.5\textwidth}}{\end{minipage}\end{flushright}}

%==============================================================================
% Epï¿½grafe
%==============================================================================

\newenvironment{epigrafe}{\begin{dedicatoria}}{\end{dedicatoria}}

%==============================================================================
% Ajuste do sumï¿½rio
%==============================================================================
\renewcommand{\@dotsep}{0}
\newlength{\dottedspace}
\newcommand{\pnbox}[1]{\settowidth{\dottedspace}{\bfseries#1}\hb@xt@\dottedspace{#1}}

\newcommand\samepagechapter{
                    %\thispagestyle{plain}%
                    \global\@topnum\z@
                    \@afterindentfalse
                    \secdef\@chapter\@schapter}

\setcounter{tocdepth}{3}
\newif\if@aftertoc
\@aftertocfalse
\renewcommand{\tableofcontents}{%
  \chapter*{\contentsname}
  \vspace{0.4\baselineskip}
  \setstretch{0.95}
  \@starttoc{toc}\@aftertoctrue%
  % retorna o espaÃ§amento ao seu valor original
  \setlinespacing
}
\renewcommand{\listoffigures}{%
  \chapter*{\listfigurename}
  \setstretch{0.95}
  \@starttoc{lof}%
  % retorna o espaÃ§amento ao seu valor original
  \setlinespacing
}
\renewcommand{\listoftables}{%
  \chapter*{\listtablename}
  \setstretch{0.95}
  \@starttoc{lot}%
  % retorna o espaÃ§amento ao seu valor original
  \setlinespacing
}

%==============================================================================
% DefiniÃ§Ã£o das listas de abreviaturas e siglas e de sÃ­mbolos
%==============================================================================
\newenvironment{listofabbrv}[1]{
        \chapter*{\listabbrvname}
        \begin{list}{\textbf{??}}{
                \settowidth{\labelwidth}{#1}
                \setlength{\labelsep}{1em}
                \setlength{\itemindent}{0mm}
                \setlength{\leftmargin}{\labelwidth}
                \addtolength{\leftmargin}{\labelsep}
                \setlength{\rightmargin}{0mm}
                \setlength{\itemsep}{.1\baselineskip}
                \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
        }
}{
        \end{list}
}
\newenvironment{listofsymbols}[1]{
        \chapter*{\listsymbolname}
        \begin{list}{\textbf{??}}{
                \settowidth{\labelwidth}{#1}
                \setlength{\labelsep}{1em}
                \setlength{\itemindent}{0mm}
                \setlength{\leftmargin}{\labelwidth}
                \addtolength{\leftmargin}{\labelsep}
                \setlength{\rightmargin}{0mm}
                \setlength{\itemsep}{.1\baselineskip}
                \renewcommand{\makelabel}[1]{\makebox[\labelwidth][l]{##1}}
        }
}{
        \end{list}
}

%==============================================================================
% Resumo (abstract) e Abstract (englishabstract)
%==============================================================================
\renewenvironment{abstract}{%
        \chapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
    %\par\vfill
    %\\
    \\

    \vspace{\parskip}\noindent\textbf{\keywordsname:} \@abstractkw.
}

\newenvironment{englishabstract}[1]{%
        \if@openright\cleardoublepage\else\clearpage\fi%
        \gdef\@englishkeywords{#1}%
        \iflanguage{english}{
                \begin{otherlanguage}{brazilian}
        }{
                \begin{otherlanguage}{english}
        }
        %\begin{center}%
        %    \textbf{#1}%
        %    \vspace{12pt}
        %\end{center}
        \samepagechapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
  \vspace{12pt}

  \noindent\textbf{\keywordsname:} \@englishkeywords.
\end{otherlanguage}
}

\newenvironment{oldenglishabstract}[2]{%
        \if@openright\cleardoublepage\else\clearpage\fi%
        \gdef\@englishkeywords{#2}%
        \iflanguage{english}{
                \begin{otherlanguage}{brazilian}
        }{
                \begin{otherlanguage}{english}
        }
        \begin{center}%
            \textbf{#1}%
            \vspace{12pt}
        \end{center}
        \samepagechapter*{\abstractname}\setlength{\parindent}{0pt}
}{%
  \vspace{12pt}

  \noindent\textbf{\keywordsname:} \@englishkeywords.
\end{otherlanguage}
}


%==============================================================================
% Formataï¿½ï¿½o dos capï¿½tulos.
% Os comandos \@chapter e \@schapter sï¿½oo redefinidos para que a
% numeraï¿½ï¿½o de pï¿½ginas seja correta (deve aparecer somente a partir do
% primeiro capï¿½tulo do texto, mas nï¿½o nas pï¿½ginas iniciais de
% capï¿½tulos).
% Os comandos \@makechapterhead e \@makeschapterhead fazem a
% formataï¿½ï¿½o dos tï¿½tulos propriamente ditos.
%==============================================================================
\newcounter{schapter}
\newcommand{\ii@chapterfont}{\@setfontsize\Large{12}{18}}
\def\@chapapp{}
\def\@chapappextra{}
\def\@chappositioning{\noindent}
\def\@chapter[#1]#2{%
        \xdef\Hy@chapapp{CHAPTER}%
        \gdef\theHchapter{\thechapter}%
        \refstepcounter{chapter}%
        \addcontentsline{toc}{chapter}{\@chapapp\thechapter~\@chapappextra#1}%
        \addtocontents{lof}{\protect\addvspace{10\p@}}%
        \addtocontents{lot}{\protect\addvspace{10\p@}}%
        \addtocontents{lol}{\protect\addvspace{10\p@}}%
        \pagestyle{iiufrgs}\let\ps@plain\ps@iiufrgs%
        \@makechapterhead{#2}{\@chappositioning}\@afterheading

}

\def\@makechapterhead#1#2{%
        %\vspace*{90pt}
        %\vspace{12pt}
        \reset@font{#2{\ii@chapterfont\textbf{\@chapapp\thechapter\hphantom{~}\@chapappextra\MakeUppercase{#1}}\par}}
        \addvspace{\baselineskip}
        \noindent
        %\par
}
\def\@schapter#1{%
        \xdef\Hy@chapapp{SCHAPTER}%
        \refstepcounter{schapter}%
        \if@aftertoc%
            \hyperdef{SCHAPTER}{\theschapter}{}%
            \@makeschapterhead{#1}\@afterheading%
            \addcontentsline{toc}{chapter}{\@chapapp\xspace{}\@chapappextra#1}%
        \else%
            \pdfbookmark[0]{#1}{MUTESCHAPTER.\theschapter}%
            \@makeschapterhead{#1}\@afterheading%
        \fi%
        \addtocontents{lof}{\protect\addvspace{10\p@}}%
        \addtocontents{lot}{\protect\addvspace{10\p@}}%
}
\def\@makeschapterhead#1{%
        %\vspace*{90pt}
        \reset@font\centerline{\ii@chapterfont\textbf{\MakeUppercase{\@chapapp\xspace{}\@chapappextra#1}}}
        \addvspace{18pt}
}
\renewcommand{\appendix}[1][\appendixname]{
    \setcounter{chapter}{0}%
    \renewcommand{\thechapter}{\Alph{chapter}}%
    \gdef\@chapapp{\texorpdfstring{\MakeUppercase{#1}}{#1}\space}%
    \gdef\@chapappextra{---\space}%
    \gdef\@chappositioning{\centering}
}
\newcommand{\annex}{\appendix[\annexname]}

%==============================================================================
% FormataÃ§Ã£o das seÃ§Ãµes
%==============================================================================
\setcounter{secnumdepth}{5}
\renewcommand{\@seccntformat}[1]{\csname the#1\endcsname\ }

% \renewcommand{\section}{%
%         \@startsection{section}{2}{0pt}{18pt}{18pt}{\reset@font\normalsize\bfseries}
% }
%\titleformat*{\section}{\reset@font\normalsize\bfseries}
\titleformat{\section}[hang]{\bfseries}{\thesection~}{0pt}{}
\titlespacing\section{0pt}{1.5\baselineskip}{\baselineskip}
\titleformat*{\subsection}{\reset@font\normalsize\bfseries}
\titlespacing\subsection{0pt}{1.5\baselineskip}{\baselineskip}
\titleformat*{\subsubsection}{\reset@font\normalsize\itshape}
\titlespacing\subsubsection{0pt}{1\baselineskip}{0.5\baselineskip}
\titleformat*{\paragraph}{\reset@font\normalsize}
\titlespacing\paragraph{0pt}{1\baselineskip}{0.5\baselineskip}
% \renewcommand{\subsection}{%
%         \@startsection{subsection}{3}{0pt}{18pt}{18pt}{\reset@font\bfseries}
% }
% \renewcommand{\subsubsection}{%
%         \@startsection{subsubsection}{4}{0pt}{18pt}{18pt}{\reset@font\itshape}
% }
% \renewcommand{\paragraph}{%
%         \@startsection{paragraph}{5}{0pt}{18pt}{18pt}{\reset@font}
% }

%==============================================================================
% RedefiniÃ§Ã£o do formato de citaÃ§Ãµes longas
%==============================================================================
\renewenvironment{quote}{%
        \setstretch{1}%
        \small%
        \begin{list}{}{\setlength{\leftmargin}{40mm}\item\relax}
        \fontsize{10bp}{12bp}\selectfont%
}{%
        \end{list}
}


%==============================================================================
% Ajuste do espaï¿½amento entre itens em 'enumerate', 'itemize' e 'description'
%==============================================================================
\renewenvironment{enumerate}{%
  \begin{list}{\arabic{enumi}.}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt\usecounter{enumi}}%
}{\end{list}}

\renewenvironment{itemize}{%
  \begin{list}{\bfseries\upshape $\bullet$}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt}%
}{\end{list}}

\renewenvironment{description}{
  \begin{list}{}{\topsep=6pt\itemsep=2pt\parsep=0pt\partopsep=0pt \labelwidth\z@ \itemindent-\leftmargin \let\makelabel\descriptionlabel}
}{\end{list}}

%==============================================================================
% Ajuste das legendas das figuras e tabelas
%==============================================================================
\RequirePackage{float}
\floatstyle{plaintop}
\restylefloat{figure}
\restylefloat{table}

\captiondelim{~\textendash~}																												% separador entre no nome Figura e o seu nome
\captionsetup[figure]{justification=raggedright,singlelinecheck=false}    % tï¿½tulo das figuras alinhado ï¿½ esquerda
\captionsetup[table]{justification=centering,singlelinecheck=false}       % tï¿½tulo das tabelas centralizado
\setlength{\abovecaptionskip}{0pt}
\setlength{\belowcaptionskip}{0pt}
\setlength{\belowlegendskip}{0pt}

%\captiontitlefont{\small}
\newcommand{\fonte}[1]{\legend{{\small Fonte: #1}}}                       % definiï¿½ï¿½o da fonte de figuras e tabelas com fonte menor



