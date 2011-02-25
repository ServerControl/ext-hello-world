use ExtUtils::MakeMaker;

WriteMakefile(
   NAME => 'ServerControl-Extension-HelloWorld',
   VERSION_FROM => 'lib/ServerControl/Extension/HelloWorld.pm',
   PREREQ_PM => {'ServerControl' => '0.90'},
   LICENSE => 'bsd'
);

