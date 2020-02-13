$PBExportHeader$w_rnd.srw
forward
global type w_rnd from window
end type
type cb_12 from commandbutton within w_rnd
end type
type cb_11 from commandbutton within w_rnd
end type
type rest from commandbutton within w_rnd
end type
type cb_10 from commandbutton within w_rnd
end type
type cb_9 from commandbutton within w_rnd
end type
type cb_8 from commandbutton within w_rnd
end type
type cb_7 from commandbutton within w_rnd
end type
type cb_6 from commandbutton within w_rnd
end type
type cb_5 from commandbutton within w_rnd
end type
type cb_4 from commandbutton within w_rnd
end type
type cb_3 from commandbutton within w_rnd
end type
type dw_1 from datawindow within w_rnd
end type
type sle_value from singlelineedit within w_rnd
end type
type sle_key from singlelineedit within w_rnd
end type
type cb_2 from commandbutton within w_rnd
end type
type cb_1 from commandbutton within w_rnd
end type
type st_2 from statictext within w_rnd
end type
type st_1 from statictext within w_rnd
end type
end forward

global type w_rnd from window
integer width = 3959
integer height = 1376
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_12 cb_12
cb_11 cb_11
rest rest
cb_10 cb_10
cb_9 cb_9
cb_8 cb_8
cb_7 cb_7
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_3 cb_3
dw_1 dw_1
sle_value sle_value
sle_key sle_key
cb_2 cb_2
cb_1 cb_1
st_2 st_2
st_1 st_1
end type
global w_rnd w_rnd

type prototypes

end prototypes

on w_rnd.create
this.cb_12=create cb_12
this.cb_11=create cb_11
this.rest=create rest
this.cb_10=create cb_10
this.cb_9=create cb_9
this.cb_8=create cb_8
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_3=create cb_3
this.dw_1=create dw_1
this.sle_value=create sle_value
this.sle_key=create sle_key
this.cb_2=create cb_2
this.cb_1=create cb_1
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.cb_12,&
this.cb_11,&
this.rest,&
this.cb_10,&
this.cb_9,&
this.cb_8,&
this.cb_7,&
this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_3,&
this.dw_1,&
this.sle_value,&
this.sle_key,&
this.cb_2,&
this.cb_1,&
this.st_2,&
this.st_1}
end on

on w_rnd.destroy
destroy(this.cb_12)
destroy(this.cb_11)
destroy(this.rest)
destroy(this.cb_10)
destroy(this.cb_9)
destroy(this.cb_8)
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.dw_1)
destroy(this.sle_value)
destroy(this.sle_key)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.st_2)
destroy(this.st_1)
end on

event open;//rnd1
//rnd2
end event

type cb_12 from commandbutton within w_rnd
integer x = 160
integer y = 520
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "url Decode"
end type

event clicked;OleObject wsh
Integer  li_rc
string ls_temp
String ls_value

ls_value = sle_key.text

wsh = CREATE OleObject
li_rc = wsh.ConnectToNewObject( "MSScriptControl.ScriptControl" )
wsh.language = "javascript"
ls_temp = wsh.Eval("unescape('"+ls_value+"')")
sle_value.text = ls_temp
end event

type cb_11 from commandbutton within w_rnd
integer x = 210
integer y = 724
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "loyal"
end type

event clicked;//Dw_1.DataObject = 'd_json4'
Dw_1.DataObject = 'untitled'
OleObject lole_Send
OleObject lole_SrvHTTP
OleObject lole_ScriptControl

String ls_status
String ls_response
String ls_value
String url, s_key, ls_res, header[]

String ls_data =  '{“MSGTYPE”: “2”,"MOBILENO": "7738297334","STORECODE": "5518","TOKEN": "YALgxyKXDBzuwvJ"}'
url = "http://10.21.53.34:8272/api/Balance/GET_BALANCE"
url = 'http://10.21.53.34:8272/api/Token/TokenCreation'
ls_data='{“MSGTYPE”: “2”,"STORECODE":"5518"}'
header[upperBound(header) + 1] = 'Content-Type: application/json'	
f_http_post(url,ls_data,header,ls_res)
MessageBox('',ls_res)



end event

type rest from commandbutton within w_rnd
integer x = 631
integer y = 688
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;Dw_1.DataObject = 'untitled'
String ls_json = '[{"n_no":1,"n_plain":0,"n_round_digit":2,"n_purexpdays":0,"n_credit_per":0,"n_modifypass":1,"n_puramtdiff":1,"n_vaton":1,"n_shift":1,"n_point_value":1.00,"n_point_calc":1,"c_color_scheme_code":"000001","n_barcode_req":1,"n_points_slab":0,"n_max_order_item":50,"n_stock_count":1,"n_disc_priority":1,"n_ipzero_cr_check":1,"n_ptr_check":0,"n_mrp_check":1,"n_auto_reconcile":0,"n_item_target":0,"n_ord_comp_select":1,"n_excel_export":1,"n_max_reconcile_days":90,"n_min_limit_chq_day_from_tran_date":60,"n_max_limit_chq_day_from_tran_date":365,"n_enable_pur_dc":1,"n_enable_gen_item":0,"n_enable_cash_scroll":1,"c_c2code":"04M000","n_enable_batch_brand":0,"n_enable_cims":1,"n_enable_mst_upload":1,"n_enable_col_hide":0,"n_multi_login":0,"n_enable_other_br_so":1,"n_update_status":0,"n_allow_item_level_rate":0,"n_rate_item_batchwise":0,"n_act_cont_sp_rate":0,"n_enable_cost_centre":1,"n_enable_global_search_item":0,"n_enable_godown":1,"n_enable_stock_serial_key":0,"n_enable_coupon":0,"n_enable_biometric":0,"n_marketplace":0,"n_enable_qc":0,"n_pan_limit_val":0.00,"n_enable_item_br_rate":0,"n_emp_filter":0,"n_allow_purdc_conv_days":0,"d_enable_gst_on":"2017-06-30","n_gst_limit_val":2500000.00,"n_rtn_disc_defa_val":0,"n_rtn_sch_disc_defa_val":0,"n_eway_bill_amt":0.00,"n_eway_flag":0,"n_data_upload_in_cloud":1,"n_los_calc_days":120,"n_los_cutoff_days":30,"n_crnt_expiry_days":60,"n_hold_expiry_crnt":0,"c_hold_unsettled_crnt_act_code":"","c_unsettled_to_settled_variance_act_code":"","n_barcode_encrypt":1,"n_user_rights_priority":0,"n_consider_points_days":5,"n_pbd_check":0}]'
f_set_json_value_dw(dw_1,ls_json)

//Dw_1.ImportJson(ls_json)
//String ls1
//ls1 = Dw_1.ExportJson()
//MessageBox('jagan',ls1)
//MessageBox('',ls_Error)

dwItemStatus l_status
l_status = Dw_1.GetItemStatus(1, 0, Primary!)
Dw_1.SetItemStatus(1, 0, Primary!,DataModified!)
l_status = Dw_1.GetItemStatus(1, 0, Primary!)
		
MessageBox('',String(l_status))
end event

type cb_10 from commandbutton within w_rnd
integer x = 677
integer y = 388
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Get"
end type

event clicked;//Dw_1.DataObject = 'd_json4'
Dw_1.DataObject = 'untitled'
OleObject lole_Send
OleObject lole_SrvHTTP
OleObject lole_ScriptControl

String ls_status
String ls_response
String ls_value
String url, s_key

url = "http://172.16.18.28:8202/eco/table?payload="

s_key =sle_value.text // %7B%22index%22%3A%22bank_mst%22%2C%22data%22%3A%5B%7B%22where%22%3A%22c_code%20%3D%20%3Acode%22%7D%2C%7B%22code%22%3A%22-%22%7D%5D%7D"
url = url + s_key
//url = "http://172.16.18.28:8202/eco/table?payload=%7B%22index%22%3A%22bank_mst%22%2C%22data%22%3A%5B%7B%22where%22%3A%22c_code%20%3D%20%3Acode%22%7D%2C%7B%22code%22%3A%22-%22%7D%5D%7D"
lole_Send = CREATE OleObject
lole_SrvHTTP = CREATE OleObject
lole_Send.connectToNewObject("Msxml2.DOMDocument.6.0")
lole_SrvHTTP.connectToNewObject("MSXML2.ServerXMLHTTP.6.0")
lole_SrvHTTP.Open("GET",url, FALSE)
lole_SrvHTTP.SetRequestHeader( "Content-Type", "application/json")
lole_SrvHTTP.Send(lole_Send)
ls_status = string(lole_SrvHTTP.Status)
ls_response = string(lole_SrvHTTP.ResponseText)

MessageBox("REST HTTP response", ls_status)  // 200 is OK!
MessageBox("JSON response", ls_response)

lole_ScriptControl = CREATE OleObject
lole_ScriptControl.ConnectToNewObject( "MSScriptControl.ScriptControl" )
lole_ScriptControl.Language = "JScript"
lole_ScriptControl.AddCode("function getValue(s,key) {eval(~"jsonobj=~" + s); return eval(~"jsonobj.~" + key) ; }")

TRY
  // remove (replace with "") all the carriage return to clean up the JSON string
  int position, i
//  FOR i = 1 to len(ls_response)
//        position = pos(ls_response, "~n")
//        IF position > 0 THEN
//            ls_response= Replace(ls_response, position, 1, "")
//        END IF
//  NEXT
  MessageBox("JSON response cleanup", ls_response)
  // ls_value =  lole_ScriptControl.Eval ("getValue(' " + ls_response + " ',  'appStatusCode');")
  JsonPackage lnv_package
  lnv_package = create JsonPackage
   lnv_package.LoadString(ls_response)
 ls_value = lnv_package.GetValue("payload") 
   MessageBox("date value", ls_value)
	Clipboard(ls_value)
	Dw_1.ImportJsonByKey(ls_value)
CATCH ( Throwable e )
   MessageBox("Err", e.GetMessage())
END TRY
end event

type cb_9 from commandbutton within w_rnd
integer x = 160
integer y = 388
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "url encode"
end type

event clicked;OleObject wsh
Integer  li_rc
string ls_temp
String ls_value

ls_value = sle_key.text

wsh = CREATE OleObject
li_rc = wsh.ConnectToNewObject( "MSScriptControl.ScriptControl" )
wsh.language = "javascript"
ls_temp = wsh.Eval("escape('"+ls_value+"')")

//MessageBox( "ESCAPE" , ls_temp)
//ls_temp = wsh.Eval("unescape('" + ls_temp + "')")
//MessageBox( "UNESCAPE" , ls_temp)


 //ls_temp = "http://172.16.18.31:8202/eco/table?payload="+ls_temp
 sle_value.text = ls_temp
 
//String  ls_Error
//JsonParser lnv_JsonParser
//lnv_JsonParser = Create JsonParser
//String ls_Json = '[{\"c_code\":\"-\",\"c_name\":\"-\",\"d_ldate\":\"2007-03-31\",\"d_adate\":\"2006-09-23\",\"c_createuser\":\"SUPERVISOR\",\"n_audited\":\"1\",\"n_predefined\":\"1\",\"t_ltime\":\"2009-04-07 10:02:16.6\",\"c_sh_name\":\"-\",\"c_modiuser\":\"SUPERVISOR\"}]' 
//ls_Error = lnv_JsonParser.LoadString(ls_Json)
//if Len(ls_Error) > 0 then
// MessageBox("Error", ls_Error)
//end if
end event

type cb_8 from commandbutton within w_rnd
integer x = 677
integer y = 864
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;
dw_1.Dataobject = 'd_json4'
long ll_loop,i
long ll_row  
long ll_root,ll_object,ll_item  //receiving the handle of JSON item
string ls_json,ls_error
string ls_return
string ls_key  
jsonparser lnv_jsonparser

lnv_jsonparser = create jsonparser
//ls_json = '[{"c_code":"-","c_name":"-","d_ldate":"2007-03-31","d_adate":"2006-09-23","c_createuser":"SUPERVISOR","n_audited":"1","n_predefined":"1","t_ltime":"2009-04-07 10:02:16.6","c_sh_name":"-","c_modiuser":"SUPERVISOR"}]' // JSON data contains a null value
ls_json = '[{\"c_code\":\"-\",\"c_name\":\"-\",\"d_ldate\":\"2007-03-31\",\"d_adate\":\"2006-09-23\",\"c_createuser\":\"SUPERVISOR\",\"n_audited\":\"1\",\"n_predefined\":\"1\",\"t_ltime\":\"2009-04-07 10:02:16.6\",\"c_sh_name\":\"-\",\"c_modiuser\":\"SUPERVISOR\"}]' // JSON data contains a null value
//Loads the JSON data
ls_error= lnv_jsonparser.loadstring(ls_json)
if len(trim(ls_error)) > 0 then
         messagebox("Failed","load json failed:"+ls_error)
         return
end if
//Obtains the handle of root item
ll_root = lnv_jsonparser.getrootitem()
//Obtains the data of each row
for ll_loop = 1 to lnv_jsonparser.getchildcount(ll_root)
         //Obtains the handle of each row
         ll_object = lnv_jsonparser.getchilditem(ll_root,ll_loop)
         //Inserts a row into datawindow
         ll_row = dw_1.insertrow(0)
         //Parses the item value one by one in a row in a loop
         for i = 1 to lnv_jsonparser.getchildcount(ll_object)
                   //Obtains the handle and key of each item
                   ll_item = lnv_jsonparser.getchilditem(ll_object,i)
                   ls_key = lnv_jsonparser.getchildkey(ll_object,i)
                   //Checks the data type of each item
                   choose case lnv_jsonparser.getitemtype(ll_item)
                            case jsonarrayitem!,jsonobjectitem!
                                     messagebox("Error","Not standard datatype") //Item value cannot be inserted to datawindow
                            case jsonnumberitem!
                                     //Obtains number data
                                     dw_1.setitem(ll_row,i,lnv_jsonparser.getitemnumber(ll_item))
                                     //dw_1.setitem(ll_row,ls_key,lnv_jsonparser.getitemnumber(ll_object,ls_key)) or set data by column name
                            case jsonstringitem!
                                     //Obtains string data
                                     dw_1.setitem(ll_row,i,lnv_jsonparser.getitemstring(ll_item))
                            case jsonbooleanitem!
                                     //Obtains boolean data. boolean converted to string and inserted to datawindow
                                     dw_1.setitem(ll_row,i,string(lnv_jsonparser.getitemboolean(ll_item)))
                            case jsonnullitem!
                                     //null value. Not inserted to datawindow.             
                   end choose
         next  //Finish parsing one row
next//Start parsing next row

Dw_1.SetItem(1,"n_audited",1.1)



end event

type cb_7 from commandbutton within w_rnd
integer x = 699
integer y = 996
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Read Json4"
end type

event clicked;dw_1.Dataobject = 'd_json4'
String ls_StandardJson, ls_Error
Long ll_RowCount


ls_StandardJson ='[{"c_code":"-","d_ldate":"2007-03-31","d_adate":"2006-09-23","c_createuser":"SUPERVISOR","n_audited":1,"n_predefined":1,"t_ltime":"2009-04-07 10:02:16.6","c_sh_name":"-","c_modiuser":"SUPERVISOR"}]'
ll_RowCount = dw_1.ImportJson(ls_StandardJson, ls_Error, Primary!)

//Checks if any error
IF isnull(ll_RowCount) Then
 Messagebox("Error", "The method returns null")
ElseIf ll_RowCount < 0 Then
 If len(ls_Error) > 0 Then
  Messagebox("Failed","Return Value: " + String(ll_RowCount) &
      + "~r~nWith error information:~r~n" + ls_Error)
 Else
  Messagebox("Failed","Return Value: "+String(ll_RowCount))
 End If
Else
 //Checks if any warning
 If len(ls_Error) > 0 Then
  MessageBox("Warning", "With warning information:~r~n" + ls_Error)
 Else
  MessageBox("Succeed", "Return Value: " + String(ll_RowCount) )
 End If
End If
end event

type cb_6 from commandbutton within w_rnd
integer x = 224
integer y = 1008
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Find2"
end type

event clicked;//dw_1
//
//Pos()
Dw_1.InsertRow(1)
Dw_1.SetItem(1,'code','JAGAN')
String ls_act_code

String ls_dw1_objstring
ls_dw1_objstring = dw_1.describe("datawindow.objects")	
	IF posA(ls_dw1_objstring,"code") > 0 THEN
		 ls_act_code  = dw_1.getitemstring(1,"code")
		 MessageBox('',ls_act_code)
	End if
end event

type cb_5 from commandbutton within w_rnd
integer x = 224
integer y = 876
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Find"
end type

event clicked;//dw_1
//
//Pos()
Dw_1.InsertRow(1)
Dw_1.SetItem(1,'code','JAGAN')
String ls_act_code

String ls_dw1_objstring
ls_dw1_objstring = dw_1.describe("datawindow.objects")	
	IF pos(ls_dw1_objstring,"code") > 0 THEN
		 ls_act_code  = dw_1.getitemstring(1,"code")
		 MessageBox('',ls_act_code)
	End if
end event

type cb_4 from commandbutton within w_rnd
integer x = 713
integer y = 1144
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Read Json2"
end type

event clicked;CrypterObject jagan
int li_rc
long ll_RowCount
string ls_StandardJson
HttpClient lnv_HttpClient
dw_1.dataobject = 'd_json2'
String ls_service, ls_auth-token, ls_Content-Type, ls_Error

//Get sha512 value
String ls_hash
Blob lblb_data
Blob lblb_sha512hash

lblb_data = Blob(sle_key.text, EncodingANSI!)
CrypterObject lnv_CrypterObject
CoderObject lnv_CoderObject
lnv_CrypterObject = Create CrypterObject
lnv_CoderObject = Create CoderObject
lblb_sha512hash= lnv_CrypterObject.SHA(SHA512!, lblb_data)
ls_hash = lnv_CoderObject.HexEncode(lblb_sha512hash)
ls_auth-token = lower(ls_hash)
Clipboard(ls_auth-token)
ls_Content-Type = 'application/x-www-form-urlencoded'
ls_service = 'CSQAURE'

lnv_HttpClient = create HttpClient

// send request using GET method
lnv_HttpClient.setRequestHeader("service",ls_service)
lnv_HttpClient.setRequestHeader("auth-token",ls_auth-token)
lnv_HttpClient.setRequestHeader("Content-Type",ls_Content-Type)
li_rc=lnv_HttpClient.SendRequest("GET","https://dose-csquare.practodev.com/api/v1/cancellation/reasons")
// obtain the response data
if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
  lnv_HttpClient.GetResponseBody(ls_StandardJson)
Else
	Messagebox('Failed!','Try After SomeTime')
	Return
end if
If Pos(ls_StandardJson,'{"reasons":') > 0 Then
	ls_StandardJson = Mid(ls_StandardJson,12)
	ls_StandardJson = left(ls_StandardJson,len(ls_StandardJson)-1)
End if
ll_RowCount = dw_1.ImportJson(ls_StandardJson, ls_Error, Primary!, 1, 10)
//Checks if any error
IF isnull(ll_RowCount) Then
 	Messagebox("Error", "The method returns null")
ElseIf ll_RowCount < 0 Then
	 If len(ls_Error) > 0 Then
		Messagebox("Failed","Return Value: " + String(ll_RowCount)+"~r~nWith error information:~r~n" + ls_Error)
		Return
	 Else
		Messagebox("Failed","Return Value: "+String(ll_RowCount))
		Return
	 End If
Else
 //Checks if any warning
	 If len(ls_Error) > 0 Then
		MessageBox("Warning", "With warning information:~r~n" + ls_Error)
		Return
	 Else
		MessageBox("Succeed", "Return Value: " + String(ll_RowCount) )
	 End If
End If
end event

type cb_3 from commandbutton within w_rnd
integer x = 288
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Read Json"
end type

event clicked;//int li_rc
//long ll_RowCount
//string ls_SimpleJson
//HttpClient lnv_HttpClient
//
//lnv_HttpClient = create HttpClient
//
//// send request using GET method
//li_rc=lnv_HttpClient.SendRequest("GET","http://demo.appeon.com/PB/webapi_client/employee/102")
//// obtain the response data
//if li_rc = 1 and lnv_HttpClient.GetResponseStatusCode() = 200 then
//  lnv_HttpClient.GetResponseBody(ls_SimpleJson)
//  ll_RowCount = dw_1.ImportJson(ls_SimpleJson)
//end if
dw_1.Dataobject = 'd_json2'
String ls_StandardJson, ls_Error
Long ll_RowCount
//ls_StandardJson = '[{"emp_id":1,"emp_fname":"Fran","emp_lname":"Whitney", &
//     "street":"9 East Washington Street","city":"Cornwall"}, &
// {"emp_id":2,"emp_fname":"Matthew","emp_lname":"Cobb", &
//     "street":"7 Pleasant Street","city":"Grimsby"}, &
// {"emp_id":3,"emp_fname":"Philip","emp_lname":"Chin", &
//     "street":"539 Pond Street","city":"Oakville"}, &
// {"emp_id":4,"emp_fname":"Julie","emp_lname":"Jordan", &
//     "street":"1244 Great Plain Avenue","city":"Woodbridge"}, &
// {"emp_id":5,"emp_fname":"Robert","emp_lname":"Breault", &
//     "street":"358 Cherry Street","city":"Milton"}, &
// {"emp_id":6,"emp_fname":"Melissa","emp_lname":"Espinoza", &
//     "street":"1121 Apple Tree Way","city":"Iroquois Falls"}, &
// {"emp_id":7,"emp_fname":"Jeannette","emp_lname":"Bertrand", &
//     "street":"2090A Concord Street","city":"Waterloo"}, &
// {"emp_id":8,"emp_fname":"Marc","emp_lname":"Dill", &
//     "street":"897 Hancock Street","city":"Milton"}, &
// {"emp_id":9,"emp_fname":"Jane","emp_lname":"Francis", &
//     "street":"127 Hawthorne Drive","city":"Scarborough"}, &
// {"emp_id":10,"emp_fname":"Natasha","emp_lname":"Shishov", &
//     "street":"151 Milk Street","city":"Grimsby"}, &
// {"emp_id":11,"emp_fname":"Kurt","emp_lname":"Driscoll", &
//     "street":"1546 School Street","city":"Grimsby"}, &
// {"emp_id":12,"emp_fname":"Rodrigo","emp_lname":"Guevara", &
//     "street":"72 East Main Street","city":"Fort Henry"}]'
			 
			 
			 
ls_StandardJson ='{"reasons":[{"code":"PRCR001","text":"OUT OF STOCK"},{"code":"PRCR002","text":"DELIVERY LOCATION IS FAR FROM STORE"},{"code":"PRCR003","text":"ORDER VALUE IS LOW"},{"code":"PRCR004","text":"PRESCRIPTION ISSUE"},{"code":"PRCR005","text":"ARTICLE CODE MAPPING ISSUE"}]}'
ll_RowCount = dw_1.ImportJson(ls_StandardJson, ls_Error, Primary!)

//Checks if any error
IF isnull(ll_RowCount) Then
 Messagebox("Error", "The method returns null")
ElseIf ll_RowCount < 0 Then
 If len(ls_Error) > 0 Then
  Messagebox("Failed","Return Value: " + String(ll_RowCount) &
      + "~r~nWith error information:~r~n" + ls_Error)
 Else
  Messagebox("Failed","Return Value: "+String(ll_RowCount))
 End If
Else
 //Checks if any warning
 If len(ls_Error) > 0 Then
  MessageBox("Warning", "With warning information:~r~n" + ls_Error)
 Else
  MessageBox("Succeed", "Return Value: " + String(ll_RowCount) )
 End If
End If
end event

type dw_1 from datawindow within w_rnd
integer x = 1134
integer y = 236
integer width = 2770
integer height = 1016
integer taborder = 20
string title = "none"
string dataobject = "d_json2"
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type sle_value from singlelineedit within w_rnd
integer x = 293
integer y = 128
integer width = 3575
integer height = 88
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type sle_key from singlelineedit within w_rnd
integer x = 293
integer y = 32
integer width = 3575
integer height = 88
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type cb_2 from commandbutton within w_rnd
integer x = 658
integer y = 256
integer width = 466
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Sha512 Decrypt"
end type

type cb_1 from commandbutton within w_rnd
integer x = 151
integer y = 260
integer width = 462
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Sha512 Encrypt"
end type

event clicked;//Blob lblb_data
//Blob lblb_key
//Blob lblb_hmac
//String ls_data
//
//lblb_data = Blob("Test HMAC", EncodingANSI!)
//lblb_key = Blob("Test HMAC Key", EncodingANSI!)
//
//CrypterObject lnv_CrypterObject
//lnv_CrypterObject = Create CrypterObject
//
//// Encrypt with HMAC
//lblb_hmac= lnv_CrypterObject.SHA512(HMACMD5!, lblb_data, lblb_key)
//
//Coderobject lnv_code
//Lnv_code = create coderobject
////Encode the HMAC blob data to be hex data and output as a string
//Ls_data = lnv_code.hexencode(lblb_hmac)
//sle_value.text = ls_data
DataStore ds_data 
ds_data = Create datastore
ds_data.dataobject = 'd_json'

String ls_hash
Blob lblb_data
Blob lblb_sha512hash
lblb_data = Blob(sle_key.text, EncodingANSI!)
CrypterObject lnv_CrypterObject
CoderObject lnv_CoderObject
lnv_CrypterObject = Create CrypterObject
lnv_CoderObject = Create CoderObject
lblb_sha512hash= lnv_CrypterObject.SHA(SHA512!, lblb_data)
ls_hash = lnv_CoderObject.HexEncode(lblb_sha512hash)
sle_value.text = lower(ls_hash)


end event

type st_2 from statictext within w_rnd
integer x = 27
integer y = 140
integer width = 233
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Value"
boolean focusrectangle = false
end type

type st_1 from statictext within w_rnd
integer x = 27
integer y = 40
integer width = 233
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Key"
boolean focusrectangle = false
end type

