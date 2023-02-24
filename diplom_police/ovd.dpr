program ovd;

uses
  Forms,
  main in 'main.pas' {F_main},
  big in 'big.pas' {F_big},
  sotrudnik in 'sotrudnik.pas' {F_sotrudnik},
  prestupnik in 'prestupnik.pas' {F_prestupnik},
  poterpev in 'poterpev.pas' {F_poterpev},
  DM in 'DM.pas' {fDM: TDataModule},
  FQ_sotrud in 'FQ_sotrud.pas' {F_otchet_sotr},
  zapros in 'zapros.pas' {F_zapros},
  Fq_prest in 'Fq_prest.pas' {FQ_prestup},
  F_poterp in 'F_poterp.pas' {FQ_poterp},
  Fq_obshee in 'Fq_obshee.pas' {FQ_obsh};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TF_main, F_main);
  Application.CreateForm(TF_big, F_big);
  Application.CreateForm(TfDM, fDM);
  Application.CreateForm(TF_sotrudnik, F_sotrudnik);
  Application.CreateForm(TF_prestupnik, F_prestupnik);
  Application.CreateForm(TF_poterpev, F_poterpev);
  Application.CreateForm(TF_otchet_sotr, F_otchet_sotr);
  Application.CreateForm(TF_zapros, F_zapros);
  Application.CreateForm(TFQ_prestup, FQ_prestup);
  Application.CreateForm(TFQ_poterp, FQ_poterp);
  Application.CreateForm(TFQ_obsh, FQ_obsh);
  Application.Run;
end.
