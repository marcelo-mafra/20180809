unit cosmos.business.messages;

interface

type

  //Alguns termos usados pelas classes dessa unidade.
  TCampoTrabalhoShort = class
    const
      Lectorium = 'LEC';
      TM  = 'TMO';
      TMB = 'TMB';
      TP  = 'TPU';
      Simpatizantes = 'SIM';
  end;

  //Nomes de tipos de locais de trabalho ou focos.
  TFocusTypesShort = class
    const
      Ra = 'Regi�o Administrativa';
      Centro = 'Centro de Confer�ncias';
      NucleoCentro = 'N�cleo e Centro de Confer�ncias';
      Nucleo = 'N�cleo';
      Sala = 'Sala do Trabalho P�blico';
      Local = 'Local do Trabalho P�blico';
      Unknown = 'Desconhecido';
      SedeNacional = 'Sede Nacional';
      SedeInternacional = 'Sede Internacional';
  end;

implementation

end.
