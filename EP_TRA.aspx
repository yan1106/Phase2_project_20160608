﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EP_TRA.aspx.cs"  Inherits="Default" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<!DOCTYPE html>

<script runat="server" herf="EP_TRA.aspx.cs" >

    List<string> temp = new List<string>();

   
</script>



  
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>EP_TRA</title>
<link href="../css/styles.css" rel="stylesheet" type="text/css" />

<link rel="stylesheet" href="http://code.jquery.com/ui/1.9.0/themes/base/jquery-ui.css" />    
<script src="http://code.jquery.com/jquery-1.8.2.js"></script>    
<script src="http://code.jquery.com/ui/1.9.0/jquery-ui.js"></script>    
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.0/jquery.min.js"></script>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.9.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="gridviewScroll.min.js"></script>
<link href="/css/GridviewScroll.css" rel="stylesheet" />

    

<script type="text/javascript">

   /* $(document).ready(function () {
        gridviewScroll();
    });

    function gridviewScroll() {
        gridView1 = $('#EP_TRA_Compare').gridviewScroll({
            width: 1000,
            height: 600,
            railcolor: "#F0F0F0",
            barcolor: "#CDCDCD",
            barhovercolor: "#606060",
            bgcolor: "#F0F0F0",
            freezesize: 1,
            arrowsize: 30,
            varrowtopimg: "icon/arrowvt.png",
            varrowbottomimg: "icon/arrowvb.png",
            harrowleftimg: "icon/arrowhl.png",
            harrowrightimg: "icon/arrowhr.png",
            headerrowcount: 2,
            railsize: 16,
            barsize: 8
        });
    }
    */








    function AddWork()
    {
        $(function () {
            $("#dialog").dialog({
                autoOpen: false,
                width: 1000,
                height: 500,
                title: "Select POR_Golden",
            });
            //.prev(".ui-dialog-titlebar").css("background", "gray");
            $("#dialogFrame").attr('src', 'POR_Golden.aspx');
            $("#dialogFrame")
            $("#dialog").dialog("open");
            return false;
        });
    }   
    
</script>   
     <script type="text/javascript">
     $(function () {
         $("[id$=Customer_TB]").autocomplete({
             source: function (request, response) {
                 $.ajax({
                     url: '<%=ResolveUrl("EP_TRA.aspx/GetCustomer") %>',
                     data: "{ 'prefix': '" + request.term + "'}",
                     dataType: "json",
                     type: "POST",
                     contentType: "application/json; charset=utf-8",
                     success: function (data) {
                         response($.map(data.d, function (item) {
                             return {
                                 label: item.split(',')[0],
                                 val: item.split(',')[1]
                             }
                         }))
                     },
                     error: function (response) {
                         alert(response.responseText);
                     },
                     failure: function (response) {
                         alert(response.responseText);
                     }
                 });
             },         
             minLength: 1
         });
     });

     $(function () {
         $("[id$=ND_TB]").autocomplete({
             source: function (request, response) {
                 $.ajax({
                     url: '<%=ResolveUrl("EP_TRA.aspx/GetNewDevice") %>',
                     data: "{ 'prefix': '" + request.term + "'}",
                     dataType: "json",
                     type: "POST",
                     contentType: "application/json; charset=utf-8",
                     success: function (data) {
                         response($.map(data.d, function (item) {
                             return {
                                 label: item.split(',')[0],
                                 val: item.split(',')[1]
                             }
                         }))
                     },
                     error: function (response) {
                         alert(response.responseText);
                     },
                     failure: function (response) {
                         alert(response.responseText);
                     }
                 });
             },
             minLength: 1
         });
     });


         function error_msg(error_sentence) {
             alert(error_sentence);
         }

    

   </script>   



















    <style type="text/css">
        .shape {behavior:url(#default#VML);}
        .font9
	    {
            color:windowtext;
	        font-size:12.0pt;
	        font-weight:400;
	        font-style:normal;
	        text-decoration:none;
	        font-family:Arial, sans-serif;
	    }
                             
        .td_newDevice
        {
            background:#ffffff;
            font-size: 12.0pt; 
        }        
         .th_newDevice
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;   
        }
         .th_POR
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;  
            width : 25px; 
            border-bottom-style: solid;
            border-bottom-width:1pt;
        }
          .th_POR-ex
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;  
            width : 130px; 
            border-bottom-style: solid;
            border-bottom-width:1pt;
            float:none;
        }
           .th_POR-ex-2
        {
            background:#254061;
            font-size: 12.0pt; 
            color:white;  
            width : 150px; 
            border-bottom-style: solid;
            border-bottom-width:1pt;
            float:none;
        }

         .td_POR
        {
            background:#ffffff;
            font-size: 12.0pt;                
        }
        .container 
        {
            overflow: hidden;
        }
        .right 
        {
            float: right;
            width: 5%;
        }
        .left 
        {
            float: left;
            width: 20%;
            
        }
        .middle 
        {
            margin:0 20%;            
        }
        .td_POR_wid
        {
            width:150px;
            font-size: 12.0pt; 
            background:white;
        }
        .td_POR_wid-ex
        {
            width:100px;
            font-size: 12.0pt; 
            background:white;
        }
        .div-por
        {
           
                width: 79%;
                float:right;
                
               
        }
       
        .big-div
        {
            width:100%;
        }
        .div-gap
        {
           position: absolute;
           top: 54px;
           float: right;
           right: 10px;
           width: 10%;
        }
        .style-gap
        {
            
            color: black;
            font-size: 12.0pt;
            font-weight: 50;
            background: white;
            width: 50pt;
        }
         .style-gap2
        {   
            color: black;
            font-size: 12.0pt;
            font-weight: 50;
            font-style: normal;
            text-decoration: none;
            background: #D8D8D8;
            width: 50pt;
        }
        .style-keyitem
        {
          
            color: white;          
            padding: 0px;
            background: #5A5A5A;  
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;                         
            /*border-bottom-style: solid;*/
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;


        }

        

        .auto-style310 {
            background: #254061;
            font-size: 12.0pt;
            color: white;
            border-bottom-style: solid;
            height: 29px;
        }
        .auto-style311 {
            width: 150px;
            font-size: 12.0pt;
            background: white;
            height: 29px;
        }

           
        .style-head
        {
            width: 60pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }

        .style-PKandTRA
        {
            width: 500pt;
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border-left: 1.0pt solid white;
            border-right: 1.0pt solid white;
            border-top: 1.0pt solid white;
            border: 1.0pt solid white;
            border-bottom-style: none;
            border-bottom-color: inherit;
            border-bottom-width: medium;
            padding: 0px;
            background: #254061;
        }


      
        .style-Effect {
            /*width: 80pt;*/
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: "Times New Roman", serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: 1.0pt solid white;
            padding: 0px;
            background: #254061;
        }
               
        .style-td-white {
           
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: white;
        }
        .style-td-red
        {
            color: #C0504D;
           
            
        }
        .style-td-gray
        {
            color: windowtext;
            font-size: 11.0pt;
            font-weight: 400;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: normal;
            border: .5pt solid white;
            padding: 0px;
            background: #D8D8D8;
            height: 18pt;
         
        }
        .style-keyitem-number
        {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: center;
            vertical-align: middle;
            white-space: nowrap;
            border: .4pt solid white;
            padding: 0px;
            background: #7F7F7F;
            height: 21px;

        }
        .style-keyitem-details
        {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 21px;
        }
        .style-td-blue
        {
            color: #1F497D;
            
        }
             
                    
             

        .auto-style312 {
            color: white;
            font-size: 12.0pt;
            font-weight: 700;
            font-style: normal;
            text-decoration: none;
            font-family: Arial, sans-serif;
            text-align: left;
            vertical-align: middle;
            white-space: nowrap;
            border-left: .5pt solid white;
            border-right-style: none;
            border-right-color: inherit;
            border-right-width: medium;
            border-top: .5pt solid white;
            border-bottom: .5pt solid white;
            padding: 0px;
            background: #538ED5;
            height: 18px;
        }
        .auto-style313 {
            height: 18px;
        }
        .auto-style314 {
            color: #1F497D;
            height: 18px;
        }
             
                    
             

        </style>
</head>

<body style="width: 100%; height:100%">
    <form id="form1" runat="server">
        <asp:Panel ID="POR_Panel" runat="server"> 
            <div class="big-div" >
            <div class="left">
            <fieldset class="fieldset" style="margin:auto;height:122px;">
            <legend class="legend" style="font-size:medium;"><strong>Step1:New Device</strong></legend>  
                 <table>
                     <tr>
                         <th class="th_newDevice">Customer</th>
                         <td class="td_newDevice"> <asp:TextBox ID="Customer_TB" runat="server" Height="20px" 
                                 OnTextChanged="Customer_TB_TextChanged" Width="100px"></asp:TextBox>
                         </td>                         
                     </tr>
                     <tr>
                         <th class="th_newDevice">New_Device</th>
                         <td class="td_newDevice"><asp:TextBox ID="ND_TB" runat="server" Height="20px" 
                                 OnTextChanged="ND_TB_TextChanged1" Width="100px"></asp:TextBox>
                         </td>
                         </tr>
                         <tr><td colspan="2" align="right">
                             <asp:Button ID="Search_Device" runat="server" class="blueButton button2" 
                                 Height="25px" OnClick="Search_Device1" Text="Search" Width="70px"/>
                             </td></tr>
                 </table>                 
             </fieldset>
            </div>
                <div class="div-por">
                   
                 <fieldset style="margin:auto;" class="fieldset">
                <legend class="legend" style="font-size:medium;"><strong>Setp2:Select POR Golden</strong></legend>
               <table cellpadding="0" cellspacing="0">
                    <colgroup>
                        <col span="1" />
                        <col span="7" width="101" />
                    </colgroup>
                    <tr>
                        <th class="th_POR" height="30">Customer</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_Customer" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR">ProductionSite</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_ProSite" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR">PKG</th>
                        <td class="td_POR_wid">
                            <asp:Label ID="Lab_PKG" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR-ex">WaferTech.(mm)</th>
                        <td class="td_POR_wid-ex">
                            <asp:Label ID="Lab_WaferTech" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr height="22">
                        <th class="auto-style310">Device</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_Device" runat="server"></asp:Label>
                        </td>
                        <th class="auto-style310">WaferPSVType/Thickness</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_WaferThick" runat="server"></asp:Label>
                        </td>
                        <th class="auto-style310">RSVI(Y/N)</th>
                        <td class="auto-style311">
                            <asp:Label ID="Lab_RVSI" runat="server"></asp:Label>
                        </td>
                        <th class="th_POR-ex-2" >FAB</th>
                        <td class="td_POR_wid-ex">
                            <asp:Label ID="Lab_FAB" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr height="22">
                        <th  colspan="8" align="right">
                            <asp:Button ID="Select_POR" runat="server" class="blueButton button2" 
                                Height="25px" OnClick="Select_POR_Click" Text="Select POR" Width="90px" />
                        </th>
                    </tr>
                </table>
            </fieldset>
               </div>      
                    
             

        </div>
          
            <asp:Button ID="cmdFilter" runat="server" OnClick="cmdFilter_Click" Text="Button" ClientIDMode="Static" Style="display: none;" />            
            <br />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <br />
            <asp:Label ID="lblError" runat="server" ForeColor="Red" Font-Size="Large"></asp:Label>                               
            <br />
           
            
             <br />
            <br />
     </asp:Panel>

        <br />
        <br />
        <br />        
         <hr />
        <br />
                 
        <asp:Panel ID="Panel_EPTRA" runat="server">               
           <table id="EP_TRA_Compare" border="0" cellpadding="0" cellspacing="0" style="border-collapse:collapse;width:500px">
                
                 <tr >
                     <td class="style-head" colspan="4" rowspan="2" style="width:20%;">Key item</td>
                     <td class="style-head" rowspan="2" >Capability<span style="mso-spacerun:yes">&nbsp;</span></td>
                     <td class="style-head" rowspan="2" >POR (Baseline)</td>
                     <td class="style-head" rowspan="2" >New Device</td>
                     <td class="style-head" rowspan="2">Gap<br /> (Y/N)</td>
                     <td colspan="6" class="style-PKandTRA" >Package/ProcessTRA</td>
                 </tr>
                 <tr height="43" >
                     <td class="style-Effect" >Effect  stage</td>
                     <td class="style-Effect">Potential Effect<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                     </td>
                     <td class="style-Effect">TRA Lv.</td>
                     <td class="style-Effect" >Recommend action</td>
                     <td class="style-Effect" >Owner</td>
                     <td class="style-Effect" >Due Date</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-details" style="text-align:center;" colspan="4" height="22">PROD</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_1" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_15" runat="server"></asp:Label>
                     </td>
                     <td>                                                 
                     </td>
                     <td>
                         <asp:Label ID="lab_gap1" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_01" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_01" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_01" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_01" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray">
                     <td  class="style-keyitem" height="126" rowspan="5" >                         
                         <span  style="-webkit-writing-mode: vertical-rl;width:45pt;text-align:center;"><br />Device Information</span></td>
                     <td class="style-keyitem-number">1</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_02" runat="server" Text="Customer&nbsp;"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_2" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_14" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DIFD4" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap2" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_02" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_02" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_02" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_02" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white">
                     <td class="style-keyitem-number">2</td>
                     <td class="style-keyitem-details" colspan="2"><span style="mso-spacerun:yes">&nbsp;<asp:Label ID="Lab_keyitem_03" runat="server">Device</asp:Label>
                         </span></td>
                     <td>
                         <asp:Label ID="CAP_EP_3" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_17" runat="server"></asp:Label>
                         
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DIFD5" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap3" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_03" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_03" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_03" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_03" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="12">
                     <td class="style-keyitem-number">3</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_04" runat="server">Die size(mm*mm)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_4" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_18" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">&nbsp;<asp:Label ID="lab_DIFD19_DIFG19" runat="server"></asp:Label>
                         &nbsp;&nbsp;</td>
                     <td>
                         <asp:Label ID="lab_gap4" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_04" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_04" runat="server"></asp:Panel>
                         
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_04" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_04" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="38">
                     <td class="style-keyitem-number" height="38">4</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_05" runat="server">C/P probe card type</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_5" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_46" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD16" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap5" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_05" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Eff_05" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_05" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_05" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22">5</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_06" runat="server">Probing on bump pad (Y/N)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_6" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_24" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD13" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap6" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_06" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_06" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_06" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_06" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white">
                     <td class="style-keyitem" rowspan="7">
                        <span style="-webkit-writing-mode: vertical-lr;">Wafer Information</span> </td>
                     <td class="style-keyitem-number">6</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_07" runat="server">Wafer Fab</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_7" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_04" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD7" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap7" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_07" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_07" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_07" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_07" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22">7</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_08" runat="server">Wafer tech.(nm)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_8" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_03" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD8" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap8" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_08" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_08" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_08" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_08" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22">8</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_09" runat="server">Low K Type</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_9" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_12" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD9" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap9" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_09" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_09" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_09" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_09" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="38">
                     <td class="style-keyitem-number" height="38">9</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_10" runat="server">Final Metal Pad type</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_10" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_20" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DIFF11" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap10" runat="server"></asp:Label>
                     </td>
                     <td>
                         
                         <asp:Label ID="lab_Eff_10" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_10" runat="server"></asp:Panel>
                         
                     </td>
                     <td>
                                                
                         <asp:Label ID="lab_Pot_10" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_10" runat="server"></asp:Panel>
                                                
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22">10</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_11" runat="server">RV hole(Y/N)</asp:Label>
                     </td>
                     <td class="auto-style243" width="160">
                         <asp:Label ID="CAP_EP_11" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_23" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD11" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap11" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_11" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_11" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_11" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_11" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22">11</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_12" runat="server">Wafer PSV type / Thickness</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_12" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_21" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_01" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap12" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_12" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_12" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_12" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_12" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number">12</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_13" runat="server">Seal-Ring Protected by SiN (Y/N)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_13" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_25" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD12" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap13" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_13" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_13" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_13" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_13" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="95">
                     <td class="style-keyitem" height="234" rowspan="5">
                          <span style="-webkit-writing-mode: vertical-lr;">Bump structure</span> </td>                                                                    
                     <td class="style-keyitem-number">13</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_14" runat="server">PKG Type</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_14" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_02" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_08" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap14" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_14" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_14" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_14" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_14" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">14</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_15" runat="server">PI type</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_15" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_26" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_02" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap15" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_15" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_15" runat="server"></asp:Panel>
                         <br />
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_15" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_15" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray">
                     <td class="style-keyitem-number" width="32">15</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_16" runat="server">PI Thickness (um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_16" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_55" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_03" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap16" runat="server"></asp:Label>
                     </td>
                     <td>
                         
                         <asp:Label ID="lab_Eff_16" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_16" runat="server"></asp:Panel>
                         <br />
                     </td>
                     <td>                         
                         <asp:Label ID="lab_Pot_16" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_16" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white">
                     <td class="style-keyitem-number" width="32">16</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_17" runat="server">UBM type / Thickness (um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_17" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_16" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_04" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap17" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_17" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_17" runat="server"></asp:Panel>
                         
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_17" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_17" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="57">
                     <td class="style-keyitem-number" height="57" width="32">17</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_18" runat="server">Bump composition</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_18" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_33" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD26" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style289">
                         <asp:Label ID="lab_gap18" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style214">
                         <asp:Label ID="lab_Eff_18" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_18" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style214">
                         <asp:Label ID="lab_Pot_18" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_18" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style14">　</td>
                     <td class="auto-style14">　</td>
                     <td class="auto-style14">　</td>
                     <td class="auto-style14">　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem" height="368" rowspan="17" width="51">
                      <span style="-webkit-writing-mode: vertical-lr;">Bump design</span> </td>
                         
                        
                        
                     <td class="style-keyitem-number" width="32">18</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_19" runat="server">REPSV PI Opening Size(um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_19" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_30" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_21" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap19" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_19" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_19" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_19" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_19" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">19</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_20" runat="server">Min fianl metal trace to seal ring (um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_20" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         NA</td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DRCF38" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap20" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_20" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_20" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_20" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_20" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">20</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_21" runat="server" Text="PI via opening bottom <br> edge to pad psv. Edge (um)"></asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_21" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_31" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DRCF39" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap21" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_21" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_21" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_21" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_21" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">21</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_22" runat="server">PI edge inside seal ring (um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_22" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_32" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DRCF35" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap22" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_22" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_22" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_22" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_22" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="38">
                     <td class="style-keyitem-number" height="38" width="32">22</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_23" runat="server">PR thickness(um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_23" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_13" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_05" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap23" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_23" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_23" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_23" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_23" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">23</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_24" runat="server">UBM Size(um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_24" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_29" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_33" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap24" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_24" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_24" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_24" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_24" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">24</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_25" runat="server">UBM Overlap PSV (um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_25" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_27" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DRCF34" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap25" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_25" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_25" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_25" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_25" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">25</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_26" runat="server">UBM insdie final metal for FOC (um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_26" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_28" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_06" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap26" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_26" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_26" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_26" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_26" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">26</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_27" runat="server">UBM Plating Area(dm2)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_27" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_34" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_07" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap27" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_27" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_27" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_27" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_27" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">27</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_28" runat="server">UBM Density (UBM Area/Die Area)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_28" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_50" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_08" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap28" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_28" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_28" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_28" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_28" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white">
                     <td class="style-keyitem-number" width="32">28</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_29" runat="server">Mushroom CD(um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_29" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_44" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_09" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap29" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_29" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_29" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_29" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_29" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">29</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_30" runat="server">Min Mushroom space(um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_30" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_43" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_10" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap30" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_30" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_30" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_30" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_30" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22">30</td>
                     <td class="style-keyitem-details" colspan="2">
                         <asp:Label ID="Lab_keyitem_31" runat="server">Min. Bump pitch (um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_31" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_19" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DIFD29" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap31" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_31" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_31" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_31" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_31" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">31</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_32" runat="server">Bump Height(um)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_32" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_35" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_09" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap32" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_32" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_32" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_32" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_32" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">32</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_33" runat="server">Bump Diameter(um)</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_33" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_45" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap33" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_33" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_33" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_33" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_33" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">33</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_34" runat="server">Bump Density (Bump Q&#39;ty/Die Area)</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_34" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_22" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_11" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap34" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_34" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_34" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_34" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_34" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" width="32">34</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_35" runat="server">BH/UBM ratio</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_35" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         1</td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_12" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap35" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_35" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_35" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_35" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_35" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem" height="200" rowspan="8" width="51">
                        <span style="-webkit-writing-mode: vertical-lr;">Outgoing criteria</span> </td>
                         
                     <td class="style-keyitem-number" width="32">35</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_36" runat="server">LF Bump Ag% target</asp:Label>
                     </td>
                     <td colspan="2">
                         <asp:Label ID="CAP_EP_36" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RE26" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap36" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_36" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_36" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_36" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_36" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">36</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_37" runat="server">Bump Height(um)</asp:Label>
                     </td>
                     <td  colspan="2" width="274">
                         <asp:Label ID="CAP_EP_37" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_10" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap37" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_37" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_37" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_37" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_37" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22" width="32">37</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_38" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td  colspan="2">
                         <asp:Label ID="CAP_EP_38" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_12" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap38" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_38" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_38" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_38" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_38" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">38</td>
                     <td class="style-keyitem-details" colspan="2" width="321"><span style="mso-spacerun:yes">
                         <asp:Label ID="Lab_keyitem_39" runat="server">Bump Coplanarity</asp:Label>
                         </span></td>
                     <td  colspan="2" width="274">
                         <asp:Label ID="CAP_EP_39" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_13" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap39" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_39" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_39" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_39" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_39" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="34">
                     <td class="style-keyitem-number" height="34" width="32">39</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_40" runat="server">Bump Shear Strenght</asp:Label>
                     </td>
                     <td  colspan="2">
                         <asp:Label ID="CAP_EP_40" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_14" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap40" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_40" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_40" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_40" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_40" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">40</td>
                     <td class="style-keyitem-details" colspan="2" width="321"><span style="mso-spacerun:yes">
                         <asp:Label ID="Lab_keyitem_41" runat="server">Bump void</asp:Label>
                         </span></td>
                     <td  colspan="2">
                         <asp:Label ID="CAP_EP_41" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_15" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap41" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_41" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_41" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_41" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_41" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="34">
                     <td class="style-keyitem-number" height="34" width="32">41</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_42" runat="server">PI Rougness (Ra)</asp:Label>
                     </td>
                     <td colspan="2">
                         <asp:Label ID="CAP_EP_42" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_16" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="lab_gap42" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_42" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_42" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_42" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_42" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">42</td>
                     <td class="style-keyitem-details" colspan="2" width="321">
                         <asp:Label ID="Lab_keyitem_43" runat="server">Bump Resistance (POR capability)</asp:Label>
                     </td>
                     <td  colspan="2">
                         <asp:Label ID="lab_POR_10" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Q_RD30" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap43" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_43" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_43" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_43" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_43" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem" height="448" rowspan="15">
                          <span style="-webkit-writing-mode: vertical-lr;">Metrology tool</span> </td>
                     <td class="style-keyitem-number" rowspan="7" width="32">43</td>
                     <td class="style-keyitem-details" rowspan="7" >
                         <asp:Label ID="Lab_keyitem_44" runat="server" Text="August"></asp:Label>
                     </td>
                     <td class="style-keyitem-details">
                         <asp:Label ID="Lab_keyitem_44_1" runat="server">Gross die</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_43" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_1" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_17" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="lab_gap44" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_44" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_44" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_44" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_44" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td class="auto-style14">　</td>
                     <td class="auto-style14">　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-details">
                         <asp:Label ID="Lab_keyitem_44_2" runat="server">Expose pad</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_44" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="EP_CAP_POR_2" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_18" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style290">
                         <asp:Label ID="lab_gap45" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style266">
                         <asp:Label ID="lab_Eff_45" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_45" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style266">
                         <asp:Label ID="lab_Pot_45" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_45" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style265">　</td>
                     <td class="auto-style265">　</td>
                     <td class="auto-style265">　</td>
                     <td class="auto-style265">　</td>
                 </tr>
                 <tr class="style-td-gray" height="42">
                     <td class="style-keyitem-details" height="42" width="192">
                         <asp:Label ID="Lab_keyitem_44_3" runat="server">PSV1(PI1<br>/PBO1) opening</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_45" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_3" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_21_2" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap46" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_46" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_46" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_46" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_46" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-details" height="22" width="192">
                         <asp:Label ID="Lab_keyitem_44_4" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_46" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_4" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11_2" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap47" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_47" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_47" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_47" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_47" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="42">
                     <td class="style-keyitem-details" height="42" width="192"><asp:Label ID="Lab_keyitem_44_5" runat="server" Text="Low SPEC of <br> min RDL Width" ></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_47" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_5" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         -</td>
                     <td>
                         <asp:Label ID="lab_gap48" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_48" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_48" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_48" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_48" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="42">
                     <td class="style-keyitem-details" height="42" width="192">
                         <asp:Label ID="Lab_keyitem_44_6" runat="server" Text="Low SPEC of <br> min RDL Spacing" ></asp:Label>
                     </td>
                     <td class="auto-style274">
                         <asp:Label ID="CAP_EP_48" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_6" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         -</td>
                     <td>
                         <asp:Label ID="lab_gap49" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_49" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_49" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_49" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_49" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="42">
                     <td class="style-keyitem-details" height="42" width="192"><asp:Label ID="Lab_keyitem_44_7" runat="server" Text="Min RDL <br> Width/Spacing <br> pattern & location"></asp:Label>
                     </td>
                     <td class="auto-style18">
                         <asp:Label ID="CAP_EP_49" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_7" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         -</td>
                     <td>
                         <asp:Label ID="lab_gap50" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_50" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_50" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_50" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_50" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white">
                     <td class="style-keyitem-number" rowspan="4" width="32">44</td>
                     <td class="style-keyitem-details" rowspan="4" width="129">
                         <asp:Label ID="Lab_keyitem_45" runat="server" Text="RVSI"></asp:Label>
                     </td>
                     <td class="style-keyitem-details"><asp:Label ID="Lab_keyitem_45_1" runat="server">Gross die</asp:Label>
                     </td>
                     <td class="auto-style274">
                         <asp:Label ID="CAP_EP_50" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_8" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_19" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap51" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_51" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_51" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_51" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_51" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-details" height="22" width="192"><asp:Label ID="Lab_keyitem_45_2" runat="server">Bump count per die</asp:Label>
                     </td>
                     <td class="auto-style18">
                         <asp:Label ID="CAP_EP_51" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="EP_CAP_POR_9" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_DIFD30" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap52" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_52" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_52" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_52" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_52" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-details" height="22" width="192"><asp:Label ID="Lab_keyitem_45_3" runat="server">Bump height</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_52" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_10" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_09_2" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap53" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_53" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_53" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_53" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_53" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="auto-style312" width="192"><asp:Label ID="Lab_keyitem_45_4" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td class="auto-style313">
                         <asp:Label ID="CAP_EP_53" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style313" >
                         <asp:Label ID="EP_CAP_POR_11" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style314">
                         <asp:Label ID="lab_APP_11_3" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style313">
                         <asp:Label ID="lab_gap54" runat="server"></asp:Label>
                     </td>
                     <td class="auto-style313">
                         <asp:Label ID="lab_Eff_54" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_54" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style313">
                         <asp:Label ID="lab_Pot_54" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_54" runat="server"></asp:Panel>
                     </td>
                     <td class="auto-style313">　</td>
                     <td class="auto-style313">　</td>
                     <td class="auto-style313">　</td>
                     <td class="auto-style313">　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">45</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_46" runat="server" Text="RS meter"></asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192"><asp:Label ID="Lab_keyitem_46_1" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="CAP_EP_54" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="EP_CAP_POR_12" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11_4" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap55" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_55" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_55" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_55" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_55" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="38">
                     <td class="style-keyitem-number" height="38" width="32">46</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_47" runat="server" Text="Void (X-ray)"></asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192"><asp:Label ID="Lab_keyitem_47_1" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_55" runat="server"></asp:Label>
                     </td>
                     <td  width="114">
                         <asp:Label ID="EP_CAP_POR_13" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11_5" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap56" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_56" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_56" runat="server"></asp:Panel>

                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_56" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_56" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">47</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_48" runat="server" Text="Bump shear"></asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192"><asp:Label ID="Lab_keyitem_48_2" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_56" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="EP_CAP_POR_14" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11_6" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap57" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_57" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_57" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_57" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_57" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="44">
                     <td class="style-keyitem-number" height="44" width="32">48</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_49" runat="server" Text="Bump pull"></asp:Label>
                     </td>
                     <td " width=" 192"="" class="style-keyitem-details"><asp:Label ID="Lab_keyitem_49_1" runat="server">Bump diameter</asp:Label>
                     </td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_57" runat="server"></asp:Label>
                     </td>
                     <td >
                         <asp:Label ID="EP_CAP_POR_15" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_APP_11_7" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap58" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_58" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_58" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_58" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_58" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="42">
                     <td class="style-keyitem" height="86" rowspan="3" width="51">
                         <span style="-webkit-writing-mode: vertical-lr;">AB&nbsp; requirement</span> </td>                                                
                     <td class="style-keyitem-number" width="32">49</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_59" runat="server">Bump to <br>bump space</asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_58" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_48" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_20" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap59" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_59" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_59" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_59" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_59" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="22">
                     <td class="style-keyitem-number" height="22">50</td>
                     <td class="style-keyitem-details">
                         <asp:Label ID="Lab_keyitem_60" runat="server">SMO</asp:Label>
                     </td>
                     <td class="style-keyitem-details">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_59" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red" >
                         <asp:Label ID="lab_POR_49" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_21" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap60" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_60" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_60" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_60" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_60" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22">51</td>
                     <td class="style-keyitem-details">
                         <asp:Label ID="Lab_keyitem_61" runat="server">UBM/SMO ratio</asp:Label>
                     </td>
                     <td class="style-keyitem-details">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_60" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_36" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         <asp:Label ID="lab_Man_22" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_gap61" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_61" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_61" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_61" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_61" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="42">
                     <td class="style-keyitem" height="128" rowspan="4" width="51">
                          <span style="-webkit-writing-mode: vertical-lr;"> Special&nbsp; Requirement</span></td>                                                   
                     <td class="style-keyitem-number" width="32">52</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_62" runat="server">Process/Machine</asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_61" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_38" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         NA</td>
                     <td>
                         <asp:Label ID="lab_gap62" runat="server"></asp:Label>                          
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_62" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_62" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_62" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_62" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">53</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_63" runat="server">Material</asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_62" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_39" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         NA</td>
                     <td>
                         <asp:Label ID="lab_gap63" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_63" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_63" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_63" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_63" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-gray" height="42">
                     <td class="style-keyitem-number" height="42" width="32">54</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_64" runat="server">Measurement tool</asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_63" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_40" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         NA</td>
                     <td>
                         <asp:Label ID="lab_gap64" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_64" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_64" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_64" runat="server"></asp:Label>
                          <asp:Panel ID="Panel_Pot_64" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
                 <tr class="style-td-white" height="22">
                     <td class="style-keyitem-number" height="22" width="32">55</td>
                     <td class="style-keyitem-details" width="129">
                         <asp:Label ID="Lab_keyitem_65" runat="server">Reliability</asp:Label>
                     </td>
                     <td class="style-keyitem-details" width="192">　</td>
                     <td width="160">
                         <asp:Label ID="CAP_EP_64" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-red">
                         <asp:Label ID="lab_POR_41" runat="server"></asp:Label>
                     </td>
                     <td class="style-td-blue">
                         NA</td>
                     <td>
                         <asp:Label ID="lab_gap65" runat="server"></asp:Label>
                     </td>
                     <td>
                         <asp:Label ID="lab_Eff_65" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Eff_65" runat="server"></asp:Panel>
                     </td>
                     <td>
                         <asp:Label ID="lab_Pot_65" runat="server"></asp:Label>
                         <asp:Panel ID="Panel_Pot_65" runat="server"></asp:Panel>
                     </td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                     <td>　</td>
                 </tr>
             </table>  
            
        


    </asp:Panel>








       <asp:Panel ID="Panel2" runat="server">
            <asp:Button ID="SAVE" runat="server" class="blueButton button2" Height="25px" OnClick="SAVE_Click" Text="Save" Width="100px" />
       </asp:Panel>
      
         
            
            
      
   <div id="dialog"><iframe src="" frameborder="0" height="100%" width="100%" id="dialogFrame" scrolling="auto"></iframe> </div>      
         </form>
    </body>
</html>

