����  -� 
SourceFile MC:\work\cf10_updates\cfusion\wwwroot\CFIDE\administrator\entman\addserver.cfm cfaddserver2ecfm2042874185  coldfusion/runtime/CFPage  <init> ()V  
  	 bindPageVariables D(Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)V   coldfusion/runtime/CfJspPage 
   REMOTESERVERNAME Lcoldfusion/runtime/Variable;  bindPageVariable r(Ljava/lang/String;Lcoldfusion/runtime/VariableScope;Lcoldfusion/runtime/LocalScope;)Lcoldfusion/runtime/Variable;  
    	   REMOTEDETAILS   	   ADMINSRVRPASSWORD   	    JVMROUTE " " 	  $ CHECKCSRFTOKEN & & 	  ( 	SERVERMAP * * 	  , LBFACTOR . . 	  0 URL 2 2 	  4 
ADD_BUTTON 6 6 	  8 GETCSRFTOKEN : : 	  < TOKEN > > 	  @ HTTPS B B 	  D 
PORT_ERROR F F 	  H HTTPPRT J J 	  L PATH N N 	  P REQUEST R R 	  T RPRT V V 	  X ADMINPRT Z Z 	  \ ADMINDETAILS ^ ^ 	  ` FORM b b 	  d PROCESSSERVER f f 	  h IPADD j j 	  l CANCELX n n 	  p ADMINSRVRNAME r r 	  t ADD v v 	  x LB_ERROR z z 	  | com.macromedia.SourceModTime  5>Y� pageContext #Lcoldfusion/runtime/NeoPageContext; � �	  � getOut ()Ljavax/servlet/jsp/JspWriter; � � javax/servlet/jsp/JspContext �
 � � parent Ljavax/servlet/jsp/tagext/Tag; � �	  � com.adobe.coldfusion.* � bindImportPath (Ljava/lang/String;)V � �
  � 

 � _whitespace %(Ljava/io/Writer;Ljava/lang/String;)V � �
  � 



 � LOCALE � REQUEST.LOCALE � en � checkSimpleParameter V(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V � �
  � 
 � java/lang/String � 
LOCALEFILE � java/lang/StringBuffer � resources/entman_ �  �
 � � _resolveAndAutoscalarize 9(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object; � �
  � _String &(Ljava/lang/Object;)Ljava/lang/String; � � coldfusion/runtime/Cast �
 � � append ,(Ljava/lang/String;)Ljava/lang/StringBuffer; � �
 � � .xml � toString ()Ljava/lang/String; � � java/lang/Object �
 � � _structSetAt :(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Object;)V � �
  � 


 � $class$coldfusion$tagext$io$OutputTag Ljava/lang/Class; coldfusion.tagext.io.OutputTag � forName %(Ljava/lang/String;)Ljava/lang/Class; � � java/lang/Class �
 � � � �	  � _initTag P(Ljava/lang/Class;ILjavax/servlet/jsp/tagext/Tag;)Ljavax/servlet/jsp/tagext/Tag; � �
  � coldfusion/tagext/io/OutputTag � _setCurrentLineNo (I)V � �
  � 	hasEndTag (Z)V � � coldfusion/tagext/GenericTag �
 � � 
doStartTag ()I � �
 � � 

         � 
SERVERNAME � URL.SERVERNAME �  isDefinedCanonicalVariableAndKey D(Lcoldfusion/runtime/Variable;Ljava/lang/String;Ljava/lang/String;)Z � �
  � 
                 � (class$coldfusion$tagext$lang$ImportedTag "coldfusion.tagext.lang.ImportedTag � � �	  � "coldfusion/tagext/lang/ImportedTag  l10n 
../cftags/ admin setName :(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V	

 &coldfusion/runtime/AttributeCollection id entman_pagename_editserver var pagename ([Ljava/lang/Object;)V 
 setAttributecollection (Ljava/util/Map;)V  coldfusion/tagext/lang/ModuleTag

 � 	_pushBody _(Ljavax/servlet/jsp/tagext/BodyTag;ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter; !
 " <Enterprise Manager &gt;  Instance Manager &gt; Edit Server: $ write& � java/io/Writer(
)' EncodeForHTML &(Ljava/lang/String;)Ljava/lang/String;+,
 - doAfterBody/ �
0 _popBody =(ILjavax/servlet/jsp/JspWriter;)Ljavax/servlet/jsp/JspWriter;23
 4 doEndTag6 � #javax/servlet/jsp/tagext/TagSupport8
97 doCatch (Ljava/lang/Throwable;)V;<
= 	doFinally? 
@ entman_pagename_addserverB 9Enterprise Manager &gt;  Instance Manager &gt; Add ServerD
 �0 coldfusion/tagext/QueryLoopG
H7
H=
 �@ SERVERL 
COLDFUSIONN ROOTDIRP javaR java.io.FileT CreateObject 8(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;VW
 X _Map #(Ljava/lang/Object;)Ljava/util/Map;Z[
 �\ SEPARATORCHAR^ 6(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/Object; �`
 a ..c set (Ljava/lang/Object;)Vef coldfusion/runtime/Variableh
ig initk _autoscalarize 1(Lcoldfusion/runtime/Variable;)Ljava/lang/Object;mn
 o _invoke K(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;qr
 s getCanonicalPathu concatw,
 �x 'class$coldfusion$tagext$lang$IncludeTag !coldfusion.tagext.lang.IncludeTag{z �	 } !coldfusion/tagext/lang/IncludeTag 	cfinclude� template� ../header.cfm� _validateTagAttrValue \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;��
 � setTemplate� �
�� _emptyTcfTag !(Ljavax/servlet/jsp/tagext/Tag;)Z��
 � ../include/margintop.cfm� %class$coldfusion$tagext$lang$ParamTag coldfusion.tagext.lang.ParamTag�� �	 � coldfusion/tagext/lang/ParamTag� cfparam� default� addlocal� \(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;��
 � 
setDefault�f
�� name� url.servertype� �
�� type� string� setType� �
�� 
SERVERTYPE� URL.SERVERTYPE� _Object (Z)Ljava/lang/Object;��
 �� _boolean (Ljava/lang/Object;)Z��
 �� _compare '(Ljava/lang/Object;Ljava/lang/String;)D��
 � 	editlocal� 	addremote� 
editremote�  � 	CSRFTOKEN� FORM.CSRFTOKEN� URL.CSRFTOKEN� _get�n
 � checkCSRFToken� ENTMANTABKEYNAME� 
_invokeUDF f(Ljava/lang/Object;Ljava/lang/String;Lcoldfusion/runtime/CFPage;[Ljava/lang/Object;)Ljava/lang/Object;��
 � .
        <p><font class="sentance">
        � entman_description� }
                ColdFusion Enterprise lets you create and manage multiple ColdFusion servers on the same computer
        � !
        </font></p>

        � _serverexists� $The following server name is in use:�r
        <script>
                var keepDefault = true;
                function writeToServerDir(name) {
                        if (keepDefault) {
                                document.forms[0].elements.directory.readonly = false;
                                var dir = document.forms[0].elements.directory.value;
                                dir = '� JSStringFormat�,
 ��' + name;
                                document.forms[0].elements.directory.value = dir;
                                document.forms[0].elements.directory.readonly = true;
                        }
                }

                function yourjobnow() {
                        keepDefault = false;
                }

                function wopen(formelem) {
                        window.open("../filedialog/index.cfm?fromjscript=true&formelem=" + formelem, "NewWindow","height=500,width=600,dependent=true,resizable=yes");
                }

        </script>

        <form action="processaddserver.cfm?csrftoken=� getCSRFToken� �" method="post" onsubmit="writeToServerDir(forms[0].elements.serverName.value);">
        	<input type="hidden" name="csrftoken" value="� ">
        	� _addserver.cfm� 
        </form>
� 8
        <form action="processeditserver.cfm?csrftoken=� I" method="post">
        		<input type="hidden" name="csrftoken" value="� ">
                � _editserver.cfm  

         
	     1 false )
        	<p><font class="sentance">
		
 entman_addserver_description �
			ColdFusion Enterprise lets you add remote servers that can participate in clusters
			with servers located on the local machine.
		 
		<br><br>
		 entman_remoteserver_description �
			NOTE:	To start/stop/restart Remote ColdFusion Instance ensure to start the Jetty Server on the remote machine (set the value of Host to ipaddress in jetty.xml)
		 !
		</font></p>
                 true 
			 <
        	<form action="index.cfm?addremote=true&csrftoken= " method="post">
			 
	  listRemoteServer" _arrayGetAt C(Lcoldfusion/runtime/Variable;Ljava/lang/Object;)Ljava/lang/Object;$%
 & host( httpport* 
remoteport, jvmroute. lbfactor0 https2 	adminport4 StructKeyExists $(Ljava/util/Map;Ljava/lang/String;)Z67
 8 adminusername: 
				< adminpassword> 
<h2 class="pageHeader">@ inst_manager2B .Enterprise Manager &gt; Instance Manager &gt; D +</h2><br>
		<p><font class="sentance">
		F !entman_editremoteserverpropertiesH &
			Edit Remote Server Properties
		J _factor0 O(Ljavax/servlet/jsp/tagext/Tag;Ljavax/servlet/jsp/JspWriter;)Ljava/lang/Object;LM
 N 
		</font></p>
		P 1
		<form action="index.cfm?action=delete&server=R &addremote=true&csrftoken=T " method="post" V =onsubmit="writeToRemoteServer(forms[0].elements.host.value);"X >
		Z _factor1\M
 ] 0
	<input type="hidden" name="addremote" value="_ q"/>
        <table border="0" cellpadding="2" cellspacing="1" width="100%">
	<tr>
		<td height="20" bgcolor="#a 	GRAYLIGHTc :" class="cellBlueTopAndBottom">
			<b class="form-title">e addremoteserverg Add Remote ColdFusion Instancei �</b>
		</td>
	</tr>
	<tr>
		<td>
			<table border="0" cellpadding="0" cellspacing="0">
			<tr><td height="2"></td></tr>
			<tr>
				<td>
					<b><font class="label">&nbsp; <label for="name">k remote_server_namem ColdFusion Instance Name *o �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="remoteservername" name="remoteservername" size="20" style="width:15em;" value="q EncodeForHTMLAttributes,
 t " v readonlyx `>
				</td>
			</tr>
			<tr>
			  <td>
			    <font class="label">&nbsp; <label for="name">z remote_server_name_label| ,Enter the server name of the Remote Instance~ �</label> &nbsp;</font>
			  </td>
			</tr>
			<tr><td height="4">&nbsp;</td></tr>
			<tr>
				<td>
					<b><font class="label">&nbsp; <label for="name">� remote_server_ip� &Remote Host (IP Address or DNS Name) *� �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="host" name="host" size="15" style="width:15em;" value="� "  � _factor2�M
 � +onchange="writeToRemoteServer(this.value);"� ^>
				</td>
			</tr>
			<tr>
				<td>
				  <font class="label">&nbsp; <label for="name">� remote_server_ip_label� 8Enter the IP Address or DNS Name for the Remote Instance� �</label> &nbsp;</font>
				</td>
			</tr>
			<tr><td height="4">&nbsp;</td></tr>
			<tr>
				<td>
				    <b><font class="label">&nbsp; <label for="new">� remote_server_port� Remote Port *� �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="remoteport" name="remoteport" size="15" style="width:15em;" value="� a">
				</td>
			</tr>
			<tr>
			    <td>
					<font class="label">&nbsp; <label for="name">� remote_server_port_label� WEnter the Connector port value with protocol AJP from server.xml of the Remote Instance� �</label> &nbsp;</font>
				</td>
			</tr>
            <tr><td height="4">&nbsp;</td></tr>
			<tr>
				<td>
				<b><font class="label">&nbsp; <label for="new">� remote_http_port� HTTP Port *� �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="httpport" name="httpport" size="15" style="width:15em;" value="� `">
				</td>
			</tr>
			<tr>
				<td>
				   <font class="label">&nbsp; <label for="name">� remote_http_port_label� ZEnter the HTTP Port through which the Administrator of the Remote Instance can be accessed� _factor3�M
 � �</label> &nbsp;</font>
				</td>
			</tr>
            <tr><td height="4">&nbsp;</td></tr>
            <tr>
				<td>
					<b><font class="label">&nbsp; <label for="new">� remote_jvm_route� JVM Route *� �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="jvmroute" name="jvmroute" size="15" style="width:15em;" value="� `">
				</td>
			</tr>
			<tr>
			   <td>
				 <font class="label">&nbsp; <label for="name">� remote_jvm_route_label� SEnter the jvmRoute attribute value of Engine from server.xml of the Remote Instance� �</label> &nbsp;</font>
			   </td>
			</tr>
            <tr><td height="4">&nbsp;</td></tr>
             <tr>
				<td>
				<b><font class="label">&nbsp; <label for="new">� remote_lbfactor� Load Balancing Factor *� �</label> &nbsp;&nbsp;</font></b>
					<input type="text" maxlength="300" class="label" id="lbfactor" name="lbfactor" size="15" style="width:15em;" value="� ^">
				</td>
			</tr>
			<tr>
				<td>
				 <font class="label">&nbsp; <label for="name">� remote_lbfactor_label� 7Enter the Load Balancing Factor for the Remote Instance� �</label> &nbsp;</font>
			    </td>
			</tr>
            <tr><td height="4">&nbsp;</td></tr>
			<tr>
			    <td>
			    <b><font class="label">&nbsp; <label for="new">� remote_admin_port� Admin Component Port� _factor4�M
 � �</label> &nbsp;&nbsp;</font>
					<input type="text" maxlength="300" class="label" id="adminport" name="adminport" size="15" style="width:15em;" value="� remote_admin_port_label� EEnter the port on which Admin Component is running on Remote Instance� remote_admin_user_name� Admin Component UserName� �</label> &nbsp;&nbsp;</font></b>
				    <input type="text" maxlength="300" class="label" id="adminusername" name="adminusername" size="15" style="width:15em;" value="� _">
				</td>
			</tr>
			<tr>
				<td>
				  <font class="label">&nbsp; <label for="name">� remote_admin_user_name_label� EEnter the UserName for the Admin Component running on Remote Instance� remote_admin_password� Admin Component Password� �</label> &nbsp;&nbsp;</font></b>
					<input type="password" maxlength="300" class="label" id="adminpassword" name="adminpassword" size="15" style="width:15em;" value="� s" autocomplete="off">
				</td>
			</tr>
			<tr>
				<td>
				   <font class="label">&nbsp; <label for="name">� remote_admin_password_label� EEnter the Password for the Admin Component running on Remote Instance� _factor5�M
 � �</label> &nbsp;</font>
				</td>
			</tr>
			<tr><td height="4">&nbsp;</td></tr>
			<tr>
				<td>
				<input name="https" id="https" type="checkbox" value="true"
					� CHECKED� )>
                <b><label for="https">� remote_https  	Use https D</label></b>
				</td>
			</tr>
			</table>
		</td>
	</tr>

	 admindetails KAdmin Port,Admin UserName,Admin Password are required for Server Start/Stop remotedetails
 .Please fill the required fields indicated by * 
port_error :
			Port values must be numeric and greater than zero.
	 lb_error E
				Load Balancing Factor must be numeric and greater than zero.
	 _factor6M
 �
	<script>

	    function writeToRemoteServer(newip) {
		 document.forms[0].elements.remoteservername.readonly = false;
		 var name = document.forms[0].elements.remoteservername.value;
		 var index = name.lastIndexOf("_");
		 if(index != -1)
		 {
		 	name = name.slice(0,index);
		 	name = name + "_" + newip;
		 	document.forms[0].elements.remoteservername.value = name;
		 }
         document.forms[0].elements.remoteservername.readonly = true;
        }

		function opn() {
			window.open("index.cfm", "_self");
			return false;
		}

		function show_confirm(port,username,password)
		{

            var numericExpression = /^[0-9]+$/;
		    if(remoteservername.value.length == 0 || host.value.length == 0 ||
			   remoteport.value.length == 0 || httpport.value.length == 0 || jvmroute.value.length == 0 || lbfactor.value.length == 0)
			   {
                  alert(" �");
                  return false;

			   }


		    if(!remoteport.value.match(numericExpression) || remoteport.value < 1 || !httpport.value.match(numericExpression) || httpport.value < 1 )
            {
               alert(" �");
               return false;
            }

            if(!lbfactor.value.match(numericExpression) || lbfactor.value < 1)
            {
               alert(" �");
               return false;
            }

			if(port.value.length == 0 || username.value.length == 0 ||
			   password.value.length == 0 )
			   {
                 return confirm(" k");
			   }

			if(!port.value.match(numericExpression) || port.value < 1)
			{
               alert("! |");
               return false;
			}
       }
	</script>

		<td align="right" class="cellBlueTopAndBottom" bgcolor="## 	BLUELIGHT% ">
			<table>
			<tr>
				' button_gatewaty_addz) 
add_button+ Submit- button_gatewaty_addx/ cancelx1 Cancel3 &
				<td><input type="submit" title="5 " name="addsubmit" value="7 �" class="buttn" onclick="return show_confirm(document.getElementById('adminport'),document.getElementById('adminusername'),document.getElementById('adminpassword'))"></td>
				<td><input type="submit"  title="9 r" class="buttn"  onclick="return opn();"></td>
			</tr>
			</table>
		</td>
	</tr>

	</table>

	</form>
	; _factor7=M
 > _factor8@M
 A ../include/marginbottom.cfmC ../footer.cfmE metaData Ljava/lang/Object;GH	 I this Lcfaddserver2ecfm2042874185; LocalVariableTable Code varscope "Lcoldfusion/runtime/VariableScope; locscope Lcoldfusion/runtime/LocalScope; runPage ()Ljava/lang/Object; out Ljavax/servlet/jsp/JspWriter; value 	include47 #Lcoldfusion/tagext/lang/IncludeTag; 	include48 LineNumberTable __factorParent output3  Lcoldfusion/tagext/io/OutputTag; mode3 I module1 $Lcoldfusion/tagext/lang/ImportedTag; mode1 t8 Ljava/lang/Throwable; t9 t10 t11 t12 t13 module2 mode2 t16 t17 t18 t19 t20 t21 t22 t23 t24 t25 include4 include5 param6 !Lcoldfusion/tagext/lang/ParamTag; output10 mode10 module7 mode7 t33 t34 t35 t36 t37 t38 module8 mode8 t41 t42 t43 t44 t45 t46 include9 t48 t49 t50 t51 t52 output12 mode12 	include11 t56 t57 t58 t59 t60 java/lang/Throwable� module39 mode39 t6 t7 module40 mode40 t14 t15 module41 mode41 t26 t27 module42 mode42 t30 t31 t32 module43 mode43 t39 t40 output46 mode46 module44 mode44 module45 mode45 t28 t29 <clinit> module16 mode16 module17 mode17 module13 mode13 module14 mode14 output15 mode15 module18 mode18 output19 mode19 module29 mode29 module30 mode30 module31 mode31 module32 mode32 module33 mode33 module34 mode34 module35 mode35 module36 mode36 module37 mode37 module38 mode38 module20 mode20 module21 mode21 module22 mode22 module23 mode23 getMetadata module24 mode24 module25 mode25 module26 mode26 module27 mode27 module28 mode28 1                      "     &     *     .     2     6     :     >     B     F     J     N     R     V     Z     ^     b     f     j     n     r     v     z     � �    � �   z �   � �   GH       N   #     *� 
�   M       KL      N  q    ?*+,� **+,� � **+,� � **+,� � !**#+,� � %**'+,� � )**++,� � -**/+,� � 1**3+,� � 5**7+,� � 9**;+,� � =**?+,� � A**C+,� � E**G+,� � I**K+,� � M**O+,� � Q**S+,� � U**W+,� � Y**[+,� � ]**_+,� � a**c+,� � e**g+,� � i**k+,� � m**o+,� � q**s+,� � u**w+,� � y**{+,� � }�   M       ?KL    ?OP   ?QR  ST N       �*� �� �L*� �N*�� �*-+�B� �*+�� �*�~/-� ���:*k� ���D����� ���� �*+�� �*�~0-� ���:*l� ���F����� ���� �*+�� ��   M   >    �KL     �UV    �WH    � � �    �XY    �ZY [     Dk &k �l el    @M N  �  =  
�*,�� �*,�� �**� U���� �*,�� �*S� �Y�S� �Y�� �*S� �Y�S� �� �� �¶ �� ȶ �*,ζ �*� �+� �� �:*� �� �� �Y6��*,� �**� 5��� �� �*,�� �*� �� ��:*� ���Y� �YSYSYSYS��� ��Y6� U*,�#M,%�*,*� �*3� �Y�S� �� ��.�*�1��ը � :� �:	*,�5M�	�:� :
� &�M
�� � #:�>� � :� �:�A�*,� �� �*,�� �*� �� ��:*� ���Y� �YSYCSYSYS��� ��Y6� 6*,�#M,E�*�1���� � :� �:*,�5M��:� :� &� q�� � #:�>� � :� �:�A�*,� �*,�� ��F��
�I� :� #�� � #:�J� � :� �:�K�*,�� �*� Q� �Y*M� �YOSYQS� �� �� �**� �*SU�Y�]� �Y_S�b� �� �d� �� ȶj*,�� �*� Q*� �**� �**� �*SU�Yl� �Y**� Q�pS�tv� Ƕt� �**� �*SU�Y�]� �Y_S�b� ��y�j*,�� �*�~+� ���:*� ��������� ���� �*,�� �*�~+� ���:*� ��������� ���� �*,ζ �*��+� ���:*� ����������������������� ���� �*,�� �**� 5��� ���Y��� �W*3� �Y�S� �����~���Y��� #W*3� �Y�S� �Ÿ��~���Y��� #W*3� �Y�S� �Ǹ��~���Y��� #W*3� �Y�S� �ɸ��~������ �*� A˶j**� e�϶ ���Y��� W**� 5�Ѷ ������ >*� A**� e�϶ �� *3� �Y�S� �� *c� �Y�S� ��j*'� �**� )���*� �Y**� A�pSY*S� �Y�S� �S��W*,�� �*3� �Y�S� �������*,�� �*� �
+� �� �:*,� �� �� �Y6��,޶**� �� ��:*.� ���Y� �YSY�S��� ��Y6 � 6* ,�#M,�*�1���� � :!� !�:"* ,�5M�"�:� :#� &�#�� � #:$$�>� � :%� %�:&�A�&,�**� �� ��:'*3� �'�'�Y� �YSY�SYSY�S��'� �'�Y6(� 6*'(,�#M,�*'�1���� � :)� )�:**(,�5M�*'�:� :+� &�C+�� � #:,',�>� � :-� -�:.'�A�.,�*,*:� �**� Q�p� ����*,�*,*J� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,�*,*K� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,��**�~	� ���:/*L� �/�������/� �/��� :0� D0�,��*�F����I� :1� #1�� � #:22�J� � :3� 3�:4�K�4*,�� ���*3� �Y�S� �Ÿ���;*,�� �*� �+� �� �:5*P� �5� �5� �Y66� �,��*,*Q� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,��*,*R� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,��**�~5� ���:7*S� �7������7� �7��� :8� D8�,��*5�F��:5�I� :9� #9�� � #::5:�J� � :;� ;�:<5�K�<*,�� �� b*3� �Y�S� �Ǹ��~���Y��� #W*3� �Y�S� �ɸ��~������ *+,�?� �*,�� �*� > �9<�<A<� �_k�ehk� �_z�ehz�kwz�zz�����;G�ADG��;V�ADV�GSV�V[V� y_��e;��A������� y_��e;��A���������������t�������i�������i���������������Gcf�fkf�<�������<�������������������������������������������������������������		�
�	�	�
�


�		�
�	�	�
�


�


�


� M  d =  
�KL    
�\ �   
�UV   
�WH   
�]^   
�_`   
�ab   
�c`   
�de   
�fH 	  
�gH 
  
�he   
�ie   
�jH   
�kb   
�l`   
�me   
�nH   
�oH   
�pe   
�qe   
�rH   
�sH   
�te   
�ue   
�vH   
�wY   
�xY   
�yz   
�{^   
�|`   
�}b   
�~`    
�e !  
��H "  
��H #  
��e $  
��e %  
��H &  
��b '  
��` (  
��e )  
��H *  
��H +  
��e ,  
��e -  
��H .  
��Y /  
��H 0  
��H 1  
��e 2  
��e 3  
��H 4  
��^ 5  
��` 6  
��Y 7  
��H 8  
��H 9  
��e :  
��e ;  
��H <[  � �     3 	 8 	 8 	 M 	 / 	 / 	 # 	 #  �  �  �  �  �  �  �       � � � � �  �  _ � � � � � � �  � � � � 4 7 3 F , % % g j f _ _ % %   � � � � ' 9 K 
 m m q t l l � � � � � � � � � � �  �  �  �  �  �  �  
  �  �  �  �  l # "# " "* #* #. #1 #) #) #C #C #G #J #B #B #) #^ %^ %b %e %] %n %� %] %] %Y %) #� '� '� '� '� 'l l � +� +Y ." .  3, 3� 3� :� :� :� :� :� J� J� J� J� J K. K K K Km LO L� ,� O� O	5 Q	G Q	5 Q	5 Q	. Q	o R	� R	o R	o R	h R	� S	� S	 P
2 V
B V
2 V
2 V
Y V
i V
Y V
Y V
2 V
2 V� O� + M N  y  ,  %,��***� E�p��� 
,��*,��**� �'+� ��:*� ���Y� �YSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,�**� �(+� ��:*� ���Y� �YSYSYSYS��� ��Y6� 6*,�#M,	�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�*,!� �*� �)+� ��:*� ���Y� �YSYSYSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�*,!� �*� �*+� ��:*� ���Y� �YSYSYSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� : � # �� � #:!!�>� � :"� "�:#�A�#*,!� �*� �++� ��:$*� �$�$�Y� �YSYSYSYS��$� �$�Y6%� 6*$%,�#M,�*$�1���� � :&� &�:'*%,�5M�'$�:� :(� #(�� � #:)$)�>� � :*� *�:+$�A�+*� ( u � �� � � �� j � �� � � �� j � �� � � �� � � �� � � ��Ead�did�:�������:���������������25�5:5�Ua�[^a�Up�[^p�amp�pup�����&2�,/2��&A�,/A�2>A�AFA������������� ����� ��� M  � ,  %KL    %\ �   %UV   %WH   %�b   %�`   %�e   %�H   %dH   %fe 	  %ge 
  %hH   %�b   %�`   %�e   %�H   %mH   %ne   %oe   %pH   %�b   %�`   %se   %tH   %uH   %ve   %�e   %�H   %�b   %�`   %�e   %�H   %�H    %e !  %�e "  %�H #  %�b $  %�` %  %�e &  %�H '  %�H (  %�e )  %�e *  %�H +[   B    Z #* ���������Z =M N  �     |*,� �*� �.+� �� �:*X� �� �� �Y6�*,�^� :�5�*,��� :�!�*,��� :��*,��� :	��	�*,��� :
��
�*,�� :���,�*,**� �p� ��*,�*,**� I�p� ��*,�*,**� }�p� ��*, �*,**� a�p� ��*,"�*,**� I�p� ��*,$�*,*S� �Y&S� �� ��*,(�**� �,� ��:*\� ���Y� �YSY*SYSY,S��� ��Y6� 6*,�#M,.�*�1���� � :� �:*,�5M��:� :� &���� � #:�>� � :� �:�A�*,=� �*� �-� ��:*]� ���Y� �YSY0SYSY2S��� ��Y6� 6*,�#M,4�*�1���� � :� �:*,�5M��:� :� &� ��� � #:�>� � :� �:�A�,6�*,**� 9�p� ��*,8�*,**� 9�p� ��*,:�*,**� q�p� ��*,8�*,**� q�p� ��*,<�*�F����I� :� #�� � #:�J� � :� �:�K�*� &��������������������������������m�������b�������b��������������� # <Z� B PZ� V dZ� j xZ� ~ �Z� � �Z� ��Z���Z��NZ�TWZ� # <i� B Pi� V di� j xi� ~ �i� � �i� ��i���i��Ni�TWi�Zfi�ini� M  B    |KL    |\ �   |UV   |WH   |�^   |�`   |�H   |�H   |dH   |fH 	  |gH 
  |hH   |�b   |�`   |�e   |�H   |mH   |ne   |oe   |pH   |�b   |�`   |se   |tH   |uH   |ve   |�e   |�H   |�H   |�e   |�e   |�H [   � % �9 �9 �9 �A �A �A �G �G �G �N �N �NSSSYYYq\}\9\F]R]]�^�^�^�^�^�^___%_%_$_  X �  N   O     1Ҹ س ��� س �|� س~�� س��Y� Ƿ�J�   M       1KL   LM N      ]*,�� �*� -*u� �***� i��#� �Y*3� �Y�S� �S�t�j*,�� �*� **� -��'�j*,�� �*� m**� -)�'�j*,�� �*� M**� -+�'�j*,�� �*� Y**� --�'�j*,�� �*� %**� -/�'�j*,�� �*� 1**� -1�'�j*,�� �*� E**� -3�'�j*,�� �*}� �***� -�p�]5�9� #*,�� �*� ]**� -5�'�j*,�� �*,�� �* �� �***� -�p�];�9� %*,=� �*� u**� -;�'�j*,=� �*,=� �* �� �***� -�p�]?�9� #*,�� �*� !**� -?�'�j*,�� �,A�**� �+� ��:* �� ���Y� �YSYCS��� ��Y6� V*,�#M,E�*,* �� �*3� �Y�S� �� ��.�*�1��Ԩ � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,G�**� �+� ��:* �� ���Y� �YSYIS��� ��Y6� 6*,�#M,K�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�*� HK�KPK�kw�qtw�k��qt��w�����������/;�58;��/J�58J�;GJ�JOJ� M   �   ]KL    ]\ �   ]UV   ]WH   ]�b   ]�`   ]�e   ]�H   ]dH   ]fe 	  ]ge 
  ]hH   ]�b   ]�`   ]�e   ]�H   ]mH   ]ne   ]oe   ]pH [  B P  u # u  u  u  u  u I v D v D v @ v @ v b w ] w ] w Y w Y w { x v x v x r x r x � y � y � y � y � y � z � z � z � z � z � { � { � { � { � { � | � | � | � | � | � } � } } � } ~ ~ ~ ~ ~ � }9 �9 �D �8 �^ �Y �Y �U �U �8 � � �� �~ �� �� �� �� �� �~ �� �% �% �% �% � �� �� �� � \M N  �  (  �*,� �*� ˶j*,� �*� m˶j*,� �*� Y˶j*,� �*� M˶j*,� �*� ]˶j*,� �*� u˶j*,� �*� !˶j*,� �*� %˶j*,� �*� 1�j*,� �*� y	�j*,� �*� E	�j*,� �*3� �Y�S� �Ǹ���T,�**� �+� ��:*g� ���Y� �YSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,�**� �+� ��:*l� ���Y� �YSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,�**� y�j*,� �*� �+� �� �:*q� �� �� �Y6� L,�*,*r� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,�*�F����I� :� #�� � #:�J� � :� �:�K�*,!� ���*+,�O� �,�**� �+� ��:* �� ���Y� �YSYS��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � : �  �:!�A�!,Q�**� �+� �� �:"* �� �"� �"� �Y6#� �,S�*,*3� �Y�S� �� ��*,U�*,* �� �**� =���*� �Y*S� �Y�S� �S�ܸ ��*,W�***� �p˸��� 
,Y�*,[�*"�F��{"�I� :$� #$�� � #:%"%�J� � :&� &�:'"�K�'*,!� �*� $7SV�V[V�,v��|��,v��|��������������9E�?BE��9T�?BT�EQT�TYT���������������������������������������������#�������#��������������� M  � (  �KL    �\ �   �UV   �WH   ��b   ��`   ��e   ��H   �dH   �fe 	  �ge 
  �hH   ��b   ��`   ��e   ��H   �mH   �ne   �oe   �pH   ��^   ��`   �sH   �te   �ue   �vH   ��b   ��`   ��e   ��H   ��H   ��e   ��e    �H !  ��^ "  ��` #  ��H $  ��e %  ��e &  ��H '[  2 L  Y  Y  Y  Y  Z  Z  Z  Z . [ . [ * [ * [ ? \ ? \ ; \ ; \ P ] P ] L ] L ] a ^ a ^ ] ^ ] ^ r _ r _ n _ n _ � ` � `  `  ` � a � a � a � a � b � b � b � b � c � c � c � c � e � e g � g� l� lp pp pl pl p� r� r� r� r� r~ qz �C �6 �6 �5 �Z �l �Z �Z �R �� �� �� � �0 t � e �M N  z  ,  ,��**� �+� ��:* Ѷ ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,��*,* Ҷ �**� %�p� ��u�*,��**� �+� ��:* ׶ ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,ö**� �+� ��:* ݶ ���Y� �YSY�S��� ��Y6� 6*,�#M,Ƕ*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,ɶ*,* ޶ �**� 1�p� ��u�*,˶**� � +� ��:* � ���Y� �YSY�S��� ��Y6� 6*,�#M,϶*�1���� � :� �:*,�5M��:� : � # �� � #:!!�>� � :"� "�:#�A�#,Ѷ**� �!+� ��:$* � �$�$�Y� �YSY�S��$� �$�Y6%� 6*$%,�#M,ն*$�1���� � :&� &�:'*%,�5M�'$�:� :(� #(�� � #:)$)�>� � :*� *�:+$�A�+*� ( Y u x� x } x� N � �� � � �� N � �� � � �� � � �� � � ��=Y\�\a\�2|������2|�������������� � % ��@L�FIL��@[�FI[�LX[�[`[���	��$0�*-0��$?�*-?�0<?�?D?������������������������ �� M  � ,  KL    \ �   UV   WH   �b   �`   �e   �H   dH   fe 	  ge 
  hH   �b   �`   �e   �H   mH   ne   oe   pH   �b   �`   se   tH   uH   ve   �e   �H   �b   �`   �e   �H   �H    e !  �e "  �H #  �b $  �` %  �e &  �H '  �H (  �e )  �e *  �H +[   R  > �  � � � � � � � � � � �" � � �� �� �{ �{ �{ �{ �s �� �� �� �W � �M N  �  ,  ,,ڶ*,* � �**� ]�p� ��u�*,˶**� �"+� ��:* � ���Y� �YSY�S��� ��Y6� 6*,�#M,޶*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,��**� �#+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,�*,* �� �**� u�p� ��u�*,�**� �$+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,��**� �%+� ��:*� ���Y� �YSY�S��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� : � # �� � #:!!�>� � :"� "�:#�A�#,�*,**� !�p� ��*,�**� �&+� ��:$*� �$�$�Y� �YSY�S��$� �$�Y6%� 6*$%,�#M,��*$�1���� � :&� &�:'*%,�5M�'$�:� :(� #(�� � #:)$)�>� � :*� *�:+$�A�+*� ( y � �� � � �� n � �� � � �� n � �� � � �� � � �� � � ��=Y\�\a\�2|������2|��������������!=@�@E@�`l�fil�`{�fi{�lx{�{�{���	��$0�*-0��$?�*-?�0<?�?D?�����������
�
�����
�� M  � ,  ,KL    ,\ �   ,UV   ,WH   ,�b   ,�`   ,�e   ,�H   ,dH   ,fe 	  ,ge 
  ,hH   ,�b   ,�`   ,�e   ,�H   ,mH   ,ne   ,oe   ,pH   ,�b   ,�`   ,se   ,tH   ,uH   ,ve   ,�e   ,�H   ,�b   ,�`   ,�e   ,�H   ,�H    ,e !  ,�e "  ,�H #  ,�b $  ,�` %  ,�e &  ,�H '  ,�H (  ,�e )  ,�e *  ,�H +[   ^   �  �  �  �  � ^ � ' �" � � �� �� �� �� �� � �� ���XXW�m �M N  �  $  �,`�*,**� y�p� ��*,b�*,*S� �YdS� �� ��*,f�**� �+� ��:* �� ���Y� �YSYhS��� ��Y6� 6*,�#M,j�*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,l�**� �+� ��:* �� ���Y� �YSYnS��� ��Y6� 6*,�#M,p�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,r�*,* �� �**� �p� ��u�*,w�***� �p˸��� 
,y�*,{�**� �+� ��:* �� ���Y� �YSY}S��� ��Y6� 6*,�#M,�*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,��**� �+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� : � # �� � #:!!�>� � :"� "�:#�A�#,��*,* �� �**� m�p� ��u�*,��**�   � � �� � � �� � � �� � � �� � � �� � � �� � � �� � � ��Qmp�pup�F�������F���������������Vru�uzu�K�������K���������������69�9>9�Ye�_be�Yt�_bt�eqt�tyt� M  j $  �KL    �\ �   �UV   �WH   ��b   ��`   ��e   ��H   �dH   �fe 	  �ge 
  �hH   ��b   ��`   ��e   ��H   �mH   �ne   �oe   �pH   ��b   ��`   �se   �tH   �uH   �ve   ��e   ��H   ��b   ��`   ��e   ��H   ��H    �e !  ��e "  ��H #[   n   �  �  �  �  �  � r � ; �6 � � �� �� �� �� �� �� �� �� �; � �� �� �� �� �� �� �� � �T N   "     �J�   M       KL   �M N  �  ,  0**� �p˸��� 
,��*,��**� �+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� :� #�� � #:		�>� � :
� 
�:�A�,��**� �+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,��*,* �� �**� Y�p� ��u�*,��**� �+� ��:* �� ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� :� #�� � #:�>� � :� �:�A�,��**� �+� ��:* Ŷ ���Y� �YSY�S��� ��Y6� 6*,�#M,��*�1���� � :� �:*,�5M��:� : � # �� � #:!!�>� � :"� "�:#�A�#,��*,* ƶ �**� M�p� ��u�*,��**� �+� ��:$* ˶ �$�$�Y� �YSY�S��$� �$�Y6%� 6*$%,�#M,��*$�1���� � :&� &�:'*%,�5M�'$�:� :(� #(�� � #:)$)�>� � :*� *�:+$�A�+*� ( s � �� � � �� h � �� � � �� h � �� � � �� � � �� � � ��7SV�V[V�,v��|��,v��|����������7:�:?:�Zf�`cf�Zu�`cu�fru�uzu���������*�$'*��9�$'9�*69�9>9����������������"� M  � ,  0KL    0\ �   0UV   0WH   0�b   0�`   0�e   0�H   0dH   0fe 	  0ge 
  0hH   0�b   0�`   0�e   0�H   0mH   0ne   0oe   0pH   0�b   0�`   0se   0tH   0uH   0ve   0�e   0�H   0�b   0�`   0�e   0�H   0�H    0e !  0�e "  0�H #  0�b $  0�` %  0�e &  0�H '  0�H (  0�e )  0�e *  0�H +[   ^    �  �   � X � ! � � � �� �� �� �� �� �  �� �� �� �Y �Y �Y �Y �Q �� �q �       ~    