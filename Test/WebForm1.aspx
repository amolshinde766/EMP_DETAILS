<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Test.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
          background-color:white;
        }
        h1 {
           color: maroon;
           margin-left: 40px;
         } 
        .first {
            border: 3px solid black;
            background-color:white;
        }
          
       th {
            border:groove;
            background-color: gainsboro;
            padding: 15px 25px;

        }
      
       .grid td {
                padding: 15px 25px;
                border:groove; 
                background-color:gainsboro;
       }
       
      #txtid,#txtname,#txtadd,#txtmob{
            border:inset;    
            background-color:whitesmoke;
            font-size:18px;
   
      }  
        
        #btnadd, #btnupdate, #btndelete, #btnshow{
            border:medium;
            padding:13px 32px;
            background-color:darkgray;
            color:white;
            font-size:18px;
            display:inline-block;
            text-align: center;
        }
        #labelid,#labelname,#labeladd,#labelmob{
            border:medium;
            padding:7px 25px;
            background-color:darkgrey;
            color:white;
            font-size:18px;
            display:inline-block;
            text-align: center;

        }
        
        
    </style>
    <title>Employee Details</title>
</head>
<body>
    
    <h1>Employee Details</h1>
    <form id="form1" runat="server">
    <div>
    <table class="first">

        <tr>
            <td>
                <asp:Label ID="labelid" runat="server" Text="ID" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtid" runat="server" Height="23px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ValidationGroup="Group1" ControlToValidate="txtid" ErrorMessage="Please Enter ID" ForeColor="Red"></asp:RequiredFieldValidator>
              </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="labelname" runat="server" Text="Name" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtname" runat="server" Height="23px" ></asp:TextBox> 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtname" ErrorMessage="Please Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="labeladd" runat="server" Text="Address" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtadd" runat="server" Height="23px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtadd" ErrorMessage="Please Enter Address" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="labelmob" runat="server" Text="Mobile_No" Height="16px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtmob" runat="server" Height="23px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtmob" ErrorMessage="RequiredFieldValidator" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
    </table>
        <br />
        <table>
            <tr>
                
            </tr>
        </table>
       
            <br />
        <asp:Button ID="btnadd" runat="server" CausesValidation="true" Text="Add" OnClick="btnadd_Click" Height="45px" />
        
        <asp:Button ID="btnupdate" runat="server" CausesValidation="true" Text="Update" OnClick="btnupdate_Click" Height="45px" />
         
        <asp:Button ID="btndelete" runat="server" CausesValidation="true" ValidationGroup="Group1" Text="Delete" OnClick="btndelete_Click" Height="45px" />
         
        <asp:Button ID="btnshow" runat="server" CausesValidation="false" Text="Show" OnClick="btnshow_Click" Height="45px" />
         
            
               
        <br />
        <br />
        <br />
        <table>
            <tr>
                <td >
                    <asp:GridView ID="GridView1" runat="server" CssClass="grid"> </asp:GridView>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
