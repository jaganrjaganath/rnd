$PBExportHeader$rnd.sra
$PBExportComments$Generated Application Object
forward
global type rnd from application
end type
global transaction sqlca
global dynamicdescriptionarea sqlda
global dynamicstagingarea sqlsa
global error error
global message message
end forward

global variables

end variables
global type rnd from application
string appname = "rnd"
end type
global rnd rnd

on rnd.create
appname="rnd"
message=create message
sqlca=create transaction
sqlda=create dynamicdescriptionarea
sqlsa=create dynamicstagingarea
error=create error
end on

on rnd.destroy
destroy(sqlca)
destroy(sqlda)
destroy(sqlsa)
destroy(error)
destroy(message)
end on

event open;open(w_rnd)
end event

