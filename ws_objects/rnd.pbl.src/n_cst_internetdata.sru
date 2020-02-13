$PBExportHeader$n_cst_internetdata.sru
forward
global type n_cst_internetdata from internetresult
end type
end forward

global type n_cst_internetdata from internetresult
end type
global n_cst_internetdata n_cst_internetdata

type variables
string is_data,is_filename,is_actual_file,is_output_file,is_storage_dir,is_type,is_file_data
integer ii_read_type,ii_file_read
end variables

forward prototypes
public function integer internetdata (blob data)
end prototypes

public function integer internetdata (blob data);//Changed If Image is from URL Request Only If ii_read_type = 1
long ll_byte_read,ll_flen
integer li_file_open,li_count,li_loops
blob lb_actual_str,lb_current

IF ii_read_type = 1 THEN	//For ImageURL Reading
	file_write(is_output_file,data)
	ll_flen = FileLength(is_output_file)
	li_file_open = FileOpen(is_output_file,StreamMode!, Read!, LockRead!)
	IF ll_flen > 32765 THEN
		  IF Mod(ll_flen, 32765) = 0 THEN
				li_loops = ll_flen/32765
		  ELSE
				li_loops = (ll_flen/32765) + 1
		  END IF
	ELSE
		 li_loops = 1
	END IF
	// Even Used for Printing Downloaded URL Image
	FOR li_count = 1 to li_loops
		ll_byte_read = FileRead(li_file_open,lb_current)
		lb_actual_str = lb_actual_str + lb_current
		IF Left(string(lb_current,EncodingANSI!),4) ="ÿØÿà" Or Left(string(lb_current,EncodingANSI!),4)= "ÿØÿÛ" THEN
			is_type = "JPG"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="‰PNG" THEN
			is_type = "PNG"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="BMJ®" THEN
			is_type = "BMP"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="GIF8" THEN
			is_type = "GIF"
			Exit
		END IF
	NEXT
	FileClose(li_file_open)
	
	IF IsNull(is_type) Or Trim(is_type)="" THEN is_type = "JPG"
	is_filename = is_filename+"."+is_type
	IF Not FileExists(is_filename) THEN 
		file_write(is_filename,data)
	END IF
ELSEIF ii_read_type = 2 THEN	//For GetURL
	is_data = string(data,EncodingANSI!)
ELSEIF ii_read_type = 3 THEN
	file_write(is_output_file,data)
	ll_flen = FileLength(is_output_file)
	li_file_open = FileOpen(is_output_file,StreamMode!, Read!, LockRead!)
	IF ll_flen > 32765 THEN
		  IF Mod(ll_flen, 32765) = 0 THEN
				li_loops = ll_flen/32765
		  ELSE
				li_loops = (ll_flen/32765) + 1
		  END IF
	ELSE
		 li_loops = 1
	END IF
	// Even Used for Printing Downloaded URL Image
	FOR li_count = 1 to li_loops
		ll_byte_read = FileRead(li_file_open,lb_current)
		lb_actual_str = lb_actual_str + lb_current
		IF Left( string(data,EncodingANSI!),4) ="ÿØÿà" THEN
			is_type = "JPG"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="‰PNG" THEN
			is_type = "PNG"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="BMJ®" THEN
			is_type = "BMP"
			Exit
		ELSEIF Left(string(lb_current,EncodingANSI!),4) ="GIF8" THEN
			is_type = "GIF"
			Exit
		END IF
	NEXT
	FileClose(li_file_open)
	IF IsNull(is_type) Or Trim(is_type)="" THEN is_type = "JPG"
	IF is_type = "JPG" Or is_type="BMP" Or is_type="GIF" THEN
		is_filename = is_filename+"."+is_type
		file_write(is_filename,data)
	END IF
ELSEIF ii_read_type = 4 THEN	//Encoding UTF-8
		is_data = string(data,EncodingUTF8!) 
ELSE	//Default Call from Ecogreen
	is_data = string(data,EncodingANSI!) 
	IF is_filename <> "" THEN
		file_write(is_filename,data)
	END IF
END IF

IF ii_file_read = 1 THEN
	integer li_file
	li_file = FileOpen(is_filename,StreamMode!)
	FileRead(li_file,is_file_data)
	FileClose(li_file)
	if fileexists(is_filename) then filedelete(is_filename)
END IF


Return 1
end function

on n_cst_internetdata.create
call super::create
TriggerEvent( this, "constructor" )
end on

on n_cst_internetdata.destroy
TriggerEvent( this, "destructor" )
call super::destroy
end on

