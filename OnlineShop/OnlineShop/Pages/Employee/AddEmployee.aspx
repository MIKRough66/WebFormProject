<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddEmployee.aspx.cs" Inherits="OnlineShop.Pages.Employee.AddEmployee" %>

<!DOCTYPE html>

<html>
<head runat="server">
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Employee Information</title>

  <!-- Favicons -->
  <link href="../../DashBoard/img/favicon.png" rel="icon">
  <link href="../../DashBoard/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
    <link href="../../DashBoard/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
  <!--external css-->
    <link href="../../DashBoard/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
    <link href="../../DashBoard/lib/dropzone/css/dropzone.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
    <link href="../../DashBoard/css/style.css" rel="stylesheet" />
    <link href="../../DashBoard/css/style-responsive.css" rel="stylesheet" />

  <!-- =======================================================
    Template Name: Dashio
    Template URL: https://templatemag.com/dashio-bootstrap-admin-template/
    Author: TemplateMag.com
    License: https://templatemag.com/license/
  ======================================================= -->
    <style type="text/css">
        .auto-style1 {
            width: 100%;
            height: 503px;
        }
        .auto-style2 {
            font-size: large;
            text-align: left;
            height: 40px;
        }
        .auto-style3 {
            width: 169px
        }
        .auto-style4 {
            width: 426px;
        }
        .auto-style5 {
            display: block;
            width: 88%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
            -webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
        }
        .auto-style6 {
            width: 89px
        }
        .auto-style7 {
            font-size: large;
            text-align: center;
            width: 89px;
            height: 40px;
        }
        .auto-style8 {
            width: 89px;
            height: 17px;
        }
        .auto-style9 {
            width: 169px;
            height: 17px;
        }
        .auto-style10 {
            width: 426px;
            height: 17px;
        }
        .auto-style11 {
            height: 17px;
        }
        .auto-style12 {
            width: 89px;
            height: 117px;
        }
        .auto-style13 {
            width: 169px;
            height: 117px;
        }
        .auto-style14 {
            width: 426px;
            height: 117px;
        }
        .auto-style15 {
            height: 117px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
    <!--header start-->
    <header class="header black-bg">
      <div class="sidebar-toggle-box">
        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
      </div>
      <!--logo start-->
      <a href="index.html" class="logo"><b>Administration<span> Panel</span></b></a>
      <!--logo end-->
      <div class="nav notify-row" id="top_menu">
        <!--  notification start -->
        <ul class="nav top-menu">
          <!-- settings start -->
          <li class="dropdown">
            <ul class="dropdown-menu extended tasks-bar">
              <li>
                <p class="green">You have 4 pending tasks</p>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Dashio Admin Panel</div>
                    <div class="percent">40%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                      <span class="sr-only">40% Complete (success)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Database Update</div>
                    <div class="percent">60%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-warning" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 60%">
                      <span class="sr-only">60% Complete (warning)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Product Development</div>
                    <div class="percent">80%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-info" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 80%">
                      <span class="sr-only">80% Complete</span>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="index.html#">
                  <div class="task-info">
                    <div class="desc">Payments Sent</div>
                    <div class="percent">70%</div>
                  </div>
                  <div class="progress progress-striped">
                    <div class="progress-bar progress-bar-danger" role="progressbar" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" style="width: 70%">
                      <span class="sr-only">70% Complete (Important)</span>
                    </div>
                  </div>
                </a>
              </li>
              <li class="external">
                <a href="#">See All Tasks</a>
              </li>
            </ul>
          </li>
          <!-- settings end -->
          <!-- inbox dropdown start-->
          <li id="header_inbox_bar" class="dropdown">
            <ul class="dropdown-menu extended inbox">
              <li>
                <p class="green">You have 5 new messages</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="../DashBoard/img/ui-zac.jpg"></span>
                  <span class="subject">
                  <span class="from">Zac Snider</span>
                  <span class="time">Just now</span>
                  </span>
                  <span class="message">
                  Hi mate, how is everything?
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="../DashBoard/img/ui-divya.jpg"></span>
                  <span class="subject">
                  <span class="from">Divya Manian</span>
                  <span class="time">40 mins.</span>
                  </span>
                  <span class="message">
                  Hi, I need your help with this.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="../DashBoard/img/ui-danro.jpg"></span>
                  <span class="subject">
                  <span class="from">Dan Rogers</span>
                  <span class="time">2 hrs.</span>
                  </span>
                  <span class="message">
                  Love your new Dashboard.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="photo"><img alt="avatar" src="../DashBoard/img/ui-sherman.jpg"></span>
                  <span class="subject">
                  <span class="from">Dj Sherman</span>
                  <span class="time">4 hrs.</span>
                  </span>
                  <span class="message">
                  Please, answer asap.
                  </span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all messages</a>
              </li>
            </ul>
          </li>
          <!-- inbox dropdown end -->
          <!-- notification dropdown start-->
          <li id="header_notification_bar" class="dropdown">
            <ul class="dropdown-menu extended notification">
              <li>
                <p class="yellow">You have 7 new notifications</p>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Server Overloaded.
                  <span class="small italic">4 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-warning"><i class="fa fa-bell"></i></span>
                  Memory #2 Not Responding.
                  <span class="small italic">30 mins.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-danger"><i class="fa fa-bolt"></i></span>
                  Disk Space Reached 85%.
                  <span class="small italic">2 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">
                  <span class="label label-success"><i class="fa fa-plus"></i></span>
                  New User Registered.
                  <span class="small italic">3 hrs.</span>
                  </a>
              </li>
              <li>
                <a href="index.html#">See all notifications</a>
              </li>
            </ul>
          </li>
          <!-- notification dropdown end -->
        </ul>
        <!--  notification end -->
      </div>
      <div class="top-menu">
        <ul class="nav pull-right top-menu">
          <li><a class="logout" href="../../Account/Login.aspx">Logout</a></li>
        </ul>
      </div>
    </header>
    <!--header end-->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
    <!--sidebar start-->
    <aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">          
          <li class="sub-menu">
            <a href="../RoleManagement/RoleManagement.aspx">
              <i class="fa fa-desktop"></i>
              <span>Role Management</span>
              </a>           
          </li>
          <li class="sub-menu">
            <a href="../EmployeeInformation/EmployeeInformation.aspx">
              <i class="fa fa-tasks"></i>
              <span>Employee Infoemation</span>
              </a>
          </li>
            <li class="sub-menu">
            <a href="AddEmployee.aspx">
              <i class="fa fa-th"></i>
              <span>Add Employee</span>
              </a>
          </li>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside>
    <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      

        <br />
        <br />
        <table class="auto-style1">
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">
                    &nbsp;
                    <asp:Label ID="Label12" runat="server" Font-Size="Large" Text="Welcome"></asp:Label>
                    &nbsp;&nbsp;
                    <asp:Label ID="LabelUserName" runat="server" Font-Size="Large"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style2" colspan="3">&nbsp; Employee Information</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpName" runat="server" Width="375px" class=" form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" runat="server" ErrorMessage="Name Is Required" ControlToValidate="TextBoxEmpName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label2" runat="server" Text="Age"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpAge" runat="server" Width="375px" class=" form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidatorAde" runat="server" ErrorMessage="Age Must Be 25 or Less" ControlToValidate="TextBoxEmpAge" ForeColor="Red" Type="Integer" ValueToCompare="25" Operator="LessThanEqual"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label3" runat="server" Text="Designation"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList CssClass="form-control" ID="DropDownListEmpDesignation" runat="server" Height="35px" Width="170px">
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Sells Man</asp:ListItem>
                        <asp:ListItem>Delivery Boy</asp:ListItem>
                        <asp:ListItem>Assistant</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <div class="auto-style5">
                        <asp:RadioButton ID="RadioButtonEmpMale" runat="server" Text="Male" GroupName="grnder" />&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButtonEmpFemale" runat="server" Text="Female" GroupName="grnder" />&nbsp;&nbsp;
                        <asp:RadioButton ID="RadioButtonEmpOthers" runat="server" Text="Others" GroupName="grnder" />
                    </div>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label5" runat="server" Text="Address"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpAddress" runat="server" Width="375px" class=" form-control"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label6" runat="server" Text="Phone"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpPhone" runat="server" Width="375px" class=" form-control"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label7" runat="server" Text="Blood Group"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList CssClass="form-control" ID="DropDownListEmpBloodGroup" runat="server" Height="35px" Width="170px">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpEmail" runat="server" Width="375px" class=" form-control"></asp:TextBox>
                </td>
                <td>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Type Email in correct Formate" ControlToValidate="TextBoxEmpEmail" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    &nbsp;</td>
                <td class="auto-style3">
                    &nbsp;&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="Religion"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:DropDownList CssClass="form-control" ID="DropDownListEmpReligion" runat="server" Height="35px" Width="170px">
                        <asp:ListItem>Islam</asp:ListItem>
                        <asp:ListItem>Cathlic</asp:ListItem>
                        <asp:ListItem>Hindu</asp:ListItem>
                        <asp:ListItem>Buddist</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;
                    <asp:Label ID="Label10" runat="server" Text="Joining Date"></asp:Label>
                    &nbsp;</td>
                <td class="auto-style4">
                    <asp:TextBox ID="TextBoxEmpJoiningDate" TextMode="Date" runat="server" Width="375px" class=" form-control"></asp:TextBox>                    
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp; 
                    <asp:Label ID="Label11" runat="server" Text="Resigning Date"></asp:Label>
                </td>
                <td class="auto-style4">
                      
                    <asp:TextBox ID="TextBoxEmpResigningDate" TextMode="Date" runat="server" Width="375px" class=" form-control"></asp:TextBox>                    
                      
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:CheckBox ID="CheckBoxAgree" runat="server" CssClass="checkbox-inline" Text="All The Informations Are Correct " />
                </td>
                <td>
                    <asp:Label ID="LabelMsg" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">
                    <asp:Button ID="ButtonSave" runat="server" CssClass="btn-theme" Height="35px" OnClick="ButtonSave_Click" Text="Save" Width="97px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style8"></td>
                <td class="auto-style9"></td>
                <td class="auto-style10"></td>
                <td class="auto-style11"></td>
            </tr>
            <tr>
                <td class="auto-style6">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style12"></td>
                <td class="auto-style13"></td>
                <td class="auto-style14"></td>
                <td class="auto-style15"></td>
            </tr>
        </table>
      


      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>OnlineShop</strong>. All Rights Reserved
        </p>
        <div class="credits">
          <!--
            You are NOT allowed to delete the credit link to TemplateMag with free version.
            You can delete the credit link only if you bought the pro version.
            Buy the pro version with working PHP/AJAX contact form: https://templatemag.com/dashio-bootstrap-admin-template/
            Licensing information: https://templatemag.com/license/
          -->
          Created by OnlineShop <a href="https://templatemag.com/">TemplateMag</a>
        </div>
        <a href="dropzone.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
    <script src="../../DashBoard/lib/jquery/jquery.min.js"></script>
    <script src="../../DashBoard/lib/bootstrap/js/bootstrap.min.js"></script>
    <script class="include" type="text/javascript" src="../../DashBoard/lib/jquery.dcjqaccordion.2.7.js"></script>
    <script src="../../DashBoard/lib/jquery.scrollTo.min.js"></script>
    <script src="../../DashBoard/lib/jquery.nicescroll.js"></script>
  <!--common script for all pages-->
    <script src="../../DashBoard/lib/common-scripts.js"></script>
  <!--script for this page-->
    <script src="../../DashBoard/lib/dropzone/dropzone.js"></script>

    </form>

</body>
</html>
