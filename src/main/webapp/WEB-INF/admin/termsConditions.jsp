<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/admin/includes/header.jsp" %>

<head>

    <meta charset="UTF-8">
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content='IE=edge,chrome=1'><![endif]-->
    <title>Terms and Conditions </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">

    <!-- Favicons -->
    <!--<link rel="shortcut icon" href="assets/images/icons/favicon.png">-->

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/assets/icons/fontawesome/css/font-awesome.css"/>">

    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap.min.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/bootstrap-theme.css"/>">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/awesome-bootstrap-checkbox.css"/>">

    <!-- Admin theme -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/ringgit.css"/>">
      <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/privasia1.css"/>">
  

    <!-- Admin responsive -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/adminassets/css/admin-responsive.css"/>">

    <!-- JS Core -->

    <script type="text/javascript" src="<c:url value="/resources/adminassets/js/jquery-3.1.1.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="/resources/adminassets/assets/js-core/modernizr.js"/>"></script>


</head>
    
    
      <script>
        $(document).ready(function () {

            $('ul.tabs li').click(function () {
                var tab_id = $(this).attr('data-tab');

                $('ul.tabs li').removeClass('current');
                $('.tab-content').removeClass('current');

                $(this).addClass('current');
                $("#" + tab_id).addClass('current');
            })

        })
    </script>

<body class="">

    <div class="header_new active top_bar_header">
        <div class="ringgetnsen_logo"><img src="<c:url value="/resources/adminassets/images/Logo.png"/>"></div>
        <div class="header-right">
            <ul class="top_control_list">

                <li class="back-btn"><a href="home" class="btn btn-holo"><i aria-hidden="true" class="display_mobile fa fa-chevron-circle-right"></i>
               <span class="hide_mobile ">Back To Home</span></a></li>
            </ul>
        </div>

    </div>

    <div id="middle_content_area">
        <div class="login_content_area container-fluid">
            <div class="row">
              
                  <div class="banner_area top-head-accor"><img src="<c:url value="/resources/adminassets/images/pri-pol1.jpg"/>"></div>
        <div class="tou_mid">
            <div class="tom_top">
                <ul class="tabs tom_nav">
                    <li class="tom_nav_button current" data-tab="tab-1">General</li> 
                    <li class="tom_nav_button" data-tab="tab-2">Online Recal Account Eligibility and Registration</li>
                     <li class="tom_nav_button" data-tab="tab-3">Online Recal Account </li> 
                    <li class="tom_nav_button" data-tab="tab-4">As a Customer Applying for Funds through Recal</li>
                     <li class="tom_nav_button" data-tab="tab-5">Amendments to the Recal T&Cs</li> 
                    <li class="tom_nav_button" data-tab="tab-6">Closing Your OLA account</li>
                     <li class="tom_nav_button" data-tab="tab-7">Effect of Termination</li> 
                    <li class="tom_nav_button" data-tab="tab-8">Privacy and Data Protection</li>
                     <li class="tom_nav_button" data-tab="tab-9">Your Customer Content and Use of the Platform</li> 
                    <li class="tom_nav_button" data-tab="tab-10">Cookies and IP Addresses</li>
                     <li class="tom_nav_button" data-tab="tab-11">Use of Recal Information</li> 
                    <li class="tom_nav_button" data-tab="tab-12">Using Information on the Platform</li>
                     <li class="tom_nav_button" data-tab="tab-13">Limits on Liability</li> 
                    <li class="tom_nav_button" data-tab="tab-14">Indemnity</li>
                     <li class="tom_nav_button" data-tab="tab-15">Miscellaneous</li> 
                    <li class="tom_nav_button" data-tab="tab-16">Affiliate</li>
                   
                </ul>
                <div class="tom_right">
                    <div class="tab-content current tom_dis_box" id="tab-1" style="display:none">
                        <!--div class="tom_dis_headding"> </div-->
                        <div class="tom_dis_content">
                          

                            
<ol> 
    <li>
        In this Agreement where the context so admits:
<ul>
  <li>   	
The words importing the singular number shall include the plural number and vice versa;</li> 
    <li>  
        	The words importing the masculine gender shall include the feminine or neuter gender as the case may require and vice versa;</li>
     <li> 
        The words (including defined terms) importing present tense shall include past tense and all other grammatical constructions as the case may require and vice versa;</li>
     <li> 
        The expression "Recal" shall include its successors and assigns;</li>
     <li> 
         Hereinafter, "T&Cs" shall refer to the Recal’s Customer Terms and Conditions.</li>
    </ul>
        </li>
     <li>
       	The Customer agrees to be bound by the T&Cs in addition to this Agreement, and in the case that the terms of this Agreement is deemed to conflict with the T&Cs by an adjudicator, then the Parties agree that the terms of this Agreement will take precedence unless stated otherwise.</li>
     <li>
         	This Agreement shall commence and take effect from the date and time the Customer registers on the Platform in accordance with Section 2 of the T&Cs and uses the Platform as a Customer, thereby registering his electronic signature and acceptance of the terms of this Agreement and the T&Cs. </li>
     <li>
       This Agreement shall terminate when the Customer closes his Online Recal Account, provided that there are no, Repayments and/or fee payments outstanding or other monies owed to Recal, in which case this Agreement will terminate only when Repayments and all funds due to Recal have been fully paid off, or the Parties have reached a final settlement thereof, regardless of whether the Customer has closed his OLA.</li>
     <li>
       	These T&Cs are in English and governed by the laws of Malaysia which shall also apply to the establishment of our relationship with you. We will only write and communicate with you in English.</li>
     <li>
         If any part of these T&Cs that is not fundamental is found to be illegal or unenforceable, such finding will not affect the validity or enforceability of the remainder of the T&Cs. </li>
     <li>
         If any taxes apply to you as a result of entering into these T&Cs or your use of the Platform you must account for them yourself.</li>

        
        
        
        
        
        
        
        

  </ol>                       </div>
                    </div>
                    <div class="tab-content tom_dis_box" id="tab-2" style="display:none">
                        <!--div class="tom_dis_headding"></div-->
                        <div class="tom_dis_content">
                            <ol>
                                <li>
                               To register with us as a Customer you must meet our Eligibility Criteria. </li>
   <li>                              
	To be a Customer: 
       <ul>
           <li>
	you must be an individual or an individual on behalf of an entity incorporated in Malaysia;</li>
           <li>
               	you must be at least 18 years old, living in Malaysia; </li>
              <li>
                  	you must be a Malaysian; </li>
           </ul>
                                    </li>
                                <li>
As part of the registration process, you will provide us with your personal details, your email address and password</li>
                                <li>
                                    	Your consent to electronic communications and Disclosures:
                                
<ul>
    <li>
	By performing transactions with us on the Platform, you consent that we may make Disclosures to you electronically via our website or to the email address you provide to us. By entering into this Agreement, you consent to receive electronic communications from us including all documents, repayment schedules, communications, notices, contracts, and agreements arising from or relating in any way to your and/or our rights, obligations and/or services under these T&Cs and Factoring Agreement (as the case may be) ("Disclosures"). </li>

    <li>
        	You accept that it is up to you to check your email folders (including spam folders) linked to the email address you have provided to us, our website and your Online Recal Account regularly for electronic communications, updates and Disclosures. </li>
    
    <li>

      You consent transact with us electronically including acceptance of agreements with us electronically as if your signature had been affixed in writing, and you agreement to do so applies to any and all transactions to which Disclosures relate.</li>
    </ul>
                                    </li>

</ol> 
                        </div>
                    </div>
                    <div class="tab-content tom_dis_box" id="tab-3" style="display:none">
                         <div class="tom_dis_content">
                    <ol>
                        <li>
                          	To use the Platform you must log on to the Online Recal Account ("OLA").</li>
        <li>                
	When you enter the OLA, we will check your identity by asking for Passwords. As long as the correct email address and Passwords are entered, we will assume that you are the person giving instructions and making transactions and you will be liable for such instruction and transactions. </li>
                         <li> 
                             	You must therefore keep your Passwords secret and make sure that such password are not stored on your computer or other device in a way that enables others to impersonate you. We will not be liable for any loss or damage to you due to any unauthorised or illegal transactions occurring in relation to your account including viruses, malware, hacks and/or due to any other programs or device installed, connected, uploaded, downloaded, operating on and/or attached to (with or without your knowledge) your computer, server, mobile phone or any other device used by you to access OLA, which compromises access to the OLA. In addition, for the avoidance of doubt, if you disclose your Passwords to any person or entity including but not limited to persons or entities you employ or otherwise retain, appoint or authorise to access to OLA, you are also responsible and liable for any access, use or misuse or disclosure of your Passwords or OLA by such person or entity. </li>
                         <li> 
	We can refuse to act on any instruction that we believe: 
                             <ul>
                                 <li>
	was unclear;</li>
                                  <li>
                                      	was not given by you;</li>
                                  <li>
                                      	might cause us to breach a legal or other duty; or</li>
                                  <li>
                                      	suggests Recal is being used for an illegal purpose.</li>
                                 
                                 
                                 </ul>
                                 </li>
                        
                         <li> 
You must inform us as soon as possible if you think that someone else knows your Passwords (or any code(s) that protect access to your Nominated Account) or can use Recal by impersonating you. Until you tell us: 
(i)	you will be responsible for any instruction which we receive and act on, even if it was not given by you; and
                             (ii)	we will not be responsible for any unauthorised access to confidential or other Information about you on your OLA.</li>
                         <li> 
                          	We generally do not send out physical statements, and you agree to check your OLA and the email account linked to the email address you provided to us regularly for updates and Information relating to Sections 3.6. </li>

                    
     </ol>               
                    
                        </div>        
                    
                    
                    
                    </div>
                    
                    <div class="tab-content tom_dis_box" id="tab-4" style="display:none">
                        
                      <div class="tom_dis_content">  
                        
                          <ol>
                              <li>
                        	If you want to access the available offers through the Platform, you will have the opportunity to:
	Check your estimated Rate Quote, by providing us with certain Information; and,
	Accept your Rate Quote and apply to access the available offers online through the Platform.</li>
                                   <li>
	 To request for the Rate Quote, you agree to and consent to our use of information as set out in section 4:
                                       
                                       <ul>
                                           <li>
	Allow us to obtain your credit report from credit reference agency we use and subsequently in connection with any extension of credit, update, renewal, review or collection of your account or any other lawful purpose.</li>
                                             <li>
                                                	Provide us with Information and supporting documents which we will ask you for, and that if we discover that this additional Information and/or the Information you gave us during the application process was inaccurate or deficient in any respect, your funding request will be void and we will report this Information to credit reference and fraud agencies. </li>
                                             <li>
                                                 
The Information you will provide us includes but not limited to:
                                                 <ul>
                                                     <li>
	A copy of your National Registration Identification Card (“NRIC”) -;</li>
                                                      <li>
                                                         	Copies of documents that provide proof of income such as Employee Provident Fund (EPF) statements, salary slips and/or income tax returns; and</li>
                                                     <li>
                                               	Related invoices or other supporting document(s) </li>                                          </ul>
</li>
                                       </ul>                                     
                              </li>
                              
                                   <li>
                                     Once the information provided is complete and your request is successful, a Rate Quote will be display on your OLA. In the event you did not accept your Rate Quote within 14 days, your request will lapse and will have no further effect. </li>
                              
                                   <li>
	If you choose to accept your Rate Quote, we may perform additional check per follow:
                                       <ul>
                                           <li>
	carry out anti-money laundering and countering the financing of terrorism’s checks;</li>
                  <li>                          
                      	make identity and fraud checks;</li>
                                            <li>
                                               	conduct a research and assessment exercise to determine your credit worthiness;</li>
                                           
                                           
                                           
                                           </ul>
                                           </li>
                              
                              
                                   <li>
                                      <strong>	THE STATUS OF YOUR REQUEST WILL BE MADE AVAILABLE THROUGH OLA.ONCE YOUR OLA REFLECTS THAT THE REQUEST IS SUCCESSFUL. WE WILL PROVISIONALLY CREDIT YOUR OLA WITH THE TOTAL AMOUNT YOU HAVE REQUESTED, LESS ANY AMOUNTS THAT MAY BE PAYABLE BY YOU TO US, BUT ACTUAL PAYMENT OF THIS AMOUNT IS MADE DIRECTLY TO YOUR DISBURSEMENT ACCOUNT. </strong> </li>

                          
                          
                    </ol>      
                          
                          
                        
                        </div> 
                    </div>
                    
                    
                    <div class="tab-content tom_dis_box" id="tab-5" style="display:none">
                    
                         <div class="tom_dis_content"> 
                             
                             <ol>
                                 <li>
                           We may vary the terms of the Recal T&Cs from time to time to accommodate:
                                     <ul>
                                         <li>
                                           	Recal Customers' feedback;</li>
                                          <li>
                                              	changes required by third party service providers;</li>
                                          <li>
                                             improvements in the Platform;</li>
                                          <li>
                                             	changes in the Applicable Law;</li>
                                          <li>
                                             	decisions or orders of, or undertakings given by to us by any court, agency, arbitrator, regulator or in relation to any settlement agreement. </li>
                                         </ul>
                                         </li>
                                 <li>
These changes will be effected by uploading the new version of the T&Cs to our website. We will always strive to give at least 30 days' notice by email or OLA before making any changes to the T&C. If you continue to use the Platform after we have given such notice, you will be deemed to have accepted the amended T&Cs. 
                                     </li>
  
                             
                             </ol> 
                    
                    
                        </div>
                    
                    
                    </div>
                    
                     <div class="tab-content tom_dis_box" id="tab-6" style="display:none">
                         
                         
                           <div class="tom_dis_content"> 
                               <ol>
                                   <li>
                              	Once all your Repayments have been repaid (as the case may be), you may terminate your Recal registration by sending us an email to <a href="mailto:customerservice@alphacredits.com">customerservice@alphacredits.com</a> and you will no longer be able to access the Platform. However, we and our sub-contractors will continue to maintain records to the extent that we are required and/or allowed by the Applicable Law to do so.</li>
                                    <li>
                                      We may terminate your Recal registration if you have misrepresented us, breached the terms of these T&Cs, die, be guilty of a civil or criminal offence, become bankrupt or make a voluntary arrangement with anyone you owe money to.</li>
                                    <li>
                                        We may either terminate or suspend your registration immediately and without notice if we are aware or reasonably suspect that you are engaged in, or may be the victim of, any fraudulent or illegal activity. We will then notify you of any such termination or suspension as soon as is reasonably practicable and to the extent we are permitted to do so in accordance with the Applicable Law.</li>

                               
                               
                               
                               
                               
                               </ol>
                               
                               
                               
                               
                         </div>
                         
                         
                         
                    </div>
                    
                    
                         <div class="tab-content tom_dis_box" id="tab-7" style="display:none">
                             <div class="tom_dis_content"> 
                                 <ol>
                                 <li>
                                     
                                     
                                    Following the notice of termination of your registration, we will provide you with limited access to the Platform and your OLA for a period of 7 days to download any of your Customer Content or Information relating to your use of the Platform. Upon the expiry of that 7 days period, your access to your OLA and the Platform will be terminated and we will have no obligation to store or provide you with access to any Information in your OLA or relating to your activity on the Platform. 
                                     </li>
                                 
                                 
                                 
                                 
                                 </ol>
                                 
                                 
                                 
                             </div>
                             
                             
                    </div>
                    
                    <div class="tab-content tom_dis_box" id="tab-8" style="display:none">
                        
                                   <div class="tom_dis_content"> 
                                       
                                   <ol>
                                       
                                 <li>	Service Messages
Recal hates spam and will never send you unsolicited communications. However, there are some messages ("Service Messages") that we will need to send to you. These Service Messages may be sent via email, post or text message and include notifications about your offers, Requests, Repayments, Information regarding your OLA and any balance of funds therein, and/or account status. Generally, we may send you; 
                                     <ul>
                                         <li>
	Welcome messages with the Information you need to get started;</li>
                                           <li>
                                             	Legal Information about your use of the Platform; </li>
                                           <li>
                                               Alerts about your OLA;</li>
                                           <li>
                                              Updates about the progress of your Requests and Repayments made on the Platform.</li></ul></li>
  <li>                                     
	Occasional Updates and Consent
      <ul>
          <li>
By providing or submitting information to us, accessing, using or viewing any of our services, functions or contents, you are deemed to have agreed to this T&Cs and consent to our collection, use and disclosure of your Personal Information for the purposes (as set out below in Section 8.2</li>
          <li>
              We may from time to time update our data protection policies to ensure that it is consistent with future developments, industry trends and/or changes in legal or regulatory requirements. Our data privacy policy is as set out in [www.alphacredits.com.]</li>
            <li>
               If you withdraw your consent to any or all use of your Personal Information, depending on the nature of your request, we may not be in a position to continue to provide our products and services to you and administer any relationship already in place. This may also result in the termination of any agreement you have with us, and your being in breach of your contractual obligations or undertakings. Our legal rights and remedies in such event are expressly reserved.</li></ul></li>
                                   
                                           
  <li>	General Operational Purposes
      <ul>
          <li>
We, as data controller may use your Personal Information for: statistical analysis; to develop and improve our products; to update your records; to identify which of our, or others', products might interest you; to assess default risks; to handle claims; to identify, prevent, detect or tackle fraud, money laundering and other crime; to carry out regulatory checks; keeping you informed about your OLA balance, new offers, Requests, or Repayments; and for market research; transacting with you, including contacting you on and processing your  use of the Platform; responding to and handling your queries, feedback or requests for information; providing you with support or other services that you have requested; legal purposes (including but not limited to enforcing our legal rights, drafting and reviewing documents, obtaining legal advice and facilitating dispute resolution). In addition: 
              <ul>
                  <li>
If false or inaccurate Personal Information is provided and fraud is identified, details will be passed to fraud prevention agencies and any other applicable government authorities.</li>
                   <li>
                       Law enforcement agencies may access and use your Personal Information.</li>
                   <li>
We and our Affiliates may also access and use your Personal Information to prevent fraud and money laundering, in the following ways including but not limited to, for example, when: 
                       <ul>
                           <li>
	checking details on applications for credit and credit-related or other facilities;</li>
                           <li>
                               	managing credit and credit-related accounts or facilities;</li>
                           <li>
                              	recovering debt;</li>
                           <li>
                              	checking details of job applicants and employees;</li></ul></li></ul>
          <li>
              We and our Affiliates may access and use from other countries the Information recorded by fraud prevention agencies.</li></ul>
                    </li>                   
                                       <li>
                                 
	We will keep your Personal Information confidential. Your Personal Information is retained to the extent one or more of the purposes set out in Section 8.3 above for which it was collected remains valid and for other legal or business purposes for which retention may be necessary. We will keep your Personal Information confidential and only give it to others for the purposes we explained in Section 8.3 above, such as;
                                           <ul>
                                               <li>
	to a credit reference agency to check your identity and to prevent fraud (they will also keep a record of your Personal Information and use it whenever anyone applies to be authenticated in your name, always in accordance with the Applicable Law);</li>
                                                <li>
                                                  	if you are a Customer, to tell credit reference agencies that you have an account and how you run that account;</li>
                                                <li>
                                                   	to agents and subcontractors, acting for us or for other Customers, to use for the purpose of operating the Platform or obtaining payment;</li>
                                                    <li>
                                                     	to investigate, prevent or detect fraud or carry out checks against money laundering;</li>
                                               <li>
                                                 	to share Information via an organisation which provides a centralised application matching service which it collects from and about mortgage and/or credit applications, for the purpose of preventing and detecting fraud;</li>
                                                <li>
                                                   	to trace debtors and recover debt;</li>
                                                <li>
                                                  	to meet our obligations to any relevant regulatory authority or taxing authority;</li>
                                                <li>
                                                    	to comply with the Applicable Law or if it is in the public interest;</li>
                                                     <li>
                                                        	if all of the assets which we use to operate the Platform (or substantially all of them) are acquired by a third party, we may transfer Personal Information we then hold to that party so that the acquirer can continue to operate the Platform; and</li>
                                               
                                               
                                               </ul>
                                               </li>
                                       
                                       <li>
	We will check your details with a fraud prevention agency or agencies, and if you give us false or inaccurate Information and we suspect fraud, we will record this. We and our Affiliates, as well as any law enforcement agency, may use, search and access these records from Malaysia and other countries to: 
                                           <ul>
                                               <li>
help make decisions about credit and credit related services, for you;</li>
                                                 <li>
                                                   trace debtors, recover debt, prevent fraud, and to manage your accounts </li>
                                                <li>
                                                   	check your identity to prevent money laundering, unless you furnish us with other satisfactory proof of identity;</li>
                                                <li>
checking details of job applicants and employees.
                                                    Any credit reference agency you search through Recal will keep a record of any search, and third parties may use it to assess future credit applications they receive from you in the future.</li></ul></li>
<li>
Transfer outside Malaysia

    We may transfer your Personal Information abroad to countries whose information protection laws are less strict than Malaysia. If so, we will ensure the Information is held securely to standards as least as good as those in the Malaysia and only used for the purposes set out in this Section. We will not sell your Personal Information to third parties. </li>

                                       <li>
	Security, Monitoring and Recording 
<ul>
    <li>
	We may monitor, record, store and use any telephone, email or other communication with you in order to check any instructions given to us, for training purposes, for crime prevention and to improve the quality of our customer service.</li>
     <li>
         We will take reasonable efforts to protect your Personal Information in our possession or our control by making reasonable security arrangements to prevent unauthorised access, collection, use, disclosure, copying, modification, disposal or similar risks.</li>
     <li>
         This Section 8 supplements but does not supersede nor replace any other consents you may have previously provided to us in respect of your Personal Information, and your consents herein are additional to any rights which we may have at law to collect, use or disclose your Personal Information. </li>
    </ul>
                                       </li>
    
                                       
                                       
                                       
                                       
                                       </ol>    
                                       
                                       
                        </div>
                        
                        
                    </div>
                    
                    <div class="tab-content tom_dis_box" id="tab-9" style="display:none">
                        
                        <div class="tom_dis_content"> 
                            <ol>
                            <li>
                           You represent, warrant and undertake that none of your Customer Content or Information provided by you will violate or infringe upon the rights of any third party, including Intellectual Property Rights; or contain libellous, defamatory or otherwise unlawful material. In addition, you undertake not to use the Platform or any part of the Recal web site(s) to: 
                            </li>
       <li>                        
harvest or collect email addresses or other financial, personal or contact Information of Customers or other Customers from the Platform by electronic or other means for the purposes of sending unsolicited communications or inviting any person to lend or borrow outside the Platform;
                                </li>
                            
       <li>                      
	use the Platform in any unlawful manner or in any other manner that could damage, disable, overload or impair the Platform or the servers on which it is hosted;
                                </li> 
     <li>                         
       use automated scripts to collect Information from or otherwise interact with the Platform;</li>
                            
      <li>                        
        upload, post, publish, display, transmit, share, store or otherwise make available on the Platform any Information that we may deem: 
                            
  <ul> 
      <li>
	to be misleading, harmful, threatening, unlawful, libellous, defamatory, infringing of any intellectual property rights, abusive, inflammatory, harassing, vulgar, obscene, fraudulent, invasive of privacy or publicity rights, hateful, or racially, ethnically or otherwise objectionable;</li>
    <li>                         
       to contain software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer software or hardware or telecommunications equipment;</li>
  <li>                           
     to be unsolicited or unauthorised advertising, solicitations, promotional materials, "junk mail," "spam," "chain letters," "pyramid schemes," or any other form of solicitation;</li>
 
       <li> 
          to be the private Information of any third party, including, without limitation, addresses, phone numbers, email addresses, identity numbers or other identifiers, credit card numbers and/or debit card numbers;</li>
   <li>                           
       to be an attempt to promote or market any goods or services for your own financial benefit;</li>
      
      </ul>
          </li>
                                
                                  <li>
                            
                                     	register at Recal more than once or register on the Platform on behalf of an individual other than yourself, or register at Recal on behalf of any entity without that entity's prior written authorisation;</li>
   <li>                          
       impersonate any person or entity, or falsely state or otherwise misrepresent yourself, your age, your financial employment or personal circumstances or your affiliation with any person or entity; use or attempt to use another's account, service or system without authorisation from us, or create a false identity on the Platform.</li>
                                
                                 <li> 
                            
                                     (viii)	solicit Personal Information from anyone under 18 or solicit passwords (whether Platform Passwords or passwords for any other uses) or personally identifying Information for commercial or unlawful purposes; </li>
     <li>                       
        	invite any person to lend or borrow money outside the Platform or to transact on the basis of any change (other than a change agreed with Recal) to these T&Cs, the Investor Service Agreement, Customer Service Agreement or any other terms or conditions contained in the Platform.</li>
                                
       <li>                            
           	You are solely responsible for your Customer Content. You may not post, transmit, or share Customer Content on the Platform that you did not create or that you do not have permission to display, publish or post. You understand and agree that we may, but are not obligated to, review the Platform and may delete or remove (without notice) any Information or Customer Content in our sole discretion, for any reason or no reason, including without limitation Customer Content that in our own absolute discretion violates any provision(s) of these T&Cs, as the case may be. You are solely responsible at your sole cost and expense for creating backup copies and replacing any Customer Content. </li>
       <li>                       
        	When you post your Customer Content, you authorise and direct us to make such copies thereof as we deem necessary in order to facilitate the publication, display and storage of the Customer Content on the Platform. By posting Customer Content to any part of the Platform, you automatically grant, and you represent and warrant that you have the right to grant, to us an irrevocable, perpetual, non-exclusive, transferable, fully paid, worldwide license (with the right to sublicense) to use, copy, publicly perform, publicly display, reformat, translate, excerpt (in whole or in part) and distribute such Customer Content for any purpose on or in connection with the Platform, Recal web site(s), blog or discussion board(s) or the promotion thereof, to prepare derivative works of, or incorporate into other works, such Customer Content, and to grant and authorise sublicenses of the foregoing. You may remove your Customer Content from the Platform at any time. If you choose to remove your Customer Content, the license granted above will automatically expire, however you acknowledge that we may retain archived copies of your Customer Content. </li>
        <li>                        
           	You agree to indemnify and hold each other Customer, us, our subsidiaries and affiliates, and each of Recal's directors, officers, agents, contractors, partners, sub-contractors and employees, harmless from and against any loss, liability, claim, demand, damages, costs and expenses, including reasonable attorney's fees, arising out of or in connection with any of your Customer Content, your use of the Platform, your conduct in connection with the Platform with other Customers of the Platform, or any violation of these T&Cs, of the Applicable Law and/or the rights of any third party. </li>
     <li>                       
       	You are solely responsible for your interactions with other Recal Customers. We have no obligation whatsoever to monitor, assist, indemnify, provide financial assistance or pay for the costs of any and all disputes between you and other Customers.</li>

                            
         </ol>                   
                            
                            
                        </div>
                        
                        
                    </div>
                    
                    
                      <div class="tab-content tom_dis_box" id="tab-10" style="display:none">
                          <div class="tom_dis_content"> 
                              <ol>
                              
                             <li>	When a visitor requests any web page from our web site or the Platform, our web servers automatically obtain that visitor's domain name and IP address. The domain name and IP address should reveal nothing personal about you other than the IP address from which you have accessed our site. We use this Information to examine our traffic in aggregate, to investigate abuse of our web site or the Platform and its Customers, and/or to cooperate with law enforcement. We do not disseminate this Information to third parties except in an aggregated manner.</li>
                                  
                                   <li>
                                       Accept that Recal uses cookies to improve the performance of the Platform and give you a better experience. Please note that by deleting our cookies or disabling future cookies you may not be able to access certain areas or features of our web site or the Platform.</li>

                              
                              
                              </ol>
                              
                              
                              
                          </div>
                          
                          
                    </div>
                    
                     <div class="tab-content tom_dis_box" id="tab-11" style="display:none">
                         
                          <div class="tom_dis_content">
                            <ol> 
                                <li>
                           Recal Information and all the Intellectual Property Rights in the Recal Information is either owned by us or our licensors. Any use of Recal Information otherwise than in accordance with these T&Cs entitles us to cancel your OLA. You may only: 
                                    <ul>
                                        <li>
display Recal Information on a computer screen or take a reasonable number of copies for your records or store the Recal Information in electronic form on your computer, provided that such copies and any stored Recal Information is only used for your own personal and non-commercial purposes (or, if you are a Lending Business, for use internally for your own internal business purposes and not for commercial exploitation); </li>
                                     <li>
	not reproduce, modify or in any other way commercially exploit any of the Recal Information. In particular, but without limiting the generality of the previous sentence, you may not do any of the following without our prior written consent (which may be withheld for any reason): 
                                         <ul>
                                             <li>
redistribute any of the Recal Information;</li>
                                              <li>
                                                  remove any copyright, trade mark or other notice included with the Recal Information;</li>
                                             <li>
                                                 create a database in electronic or structured manual form by systematically downloading and storing all or any such Information.</li>
                                             </ul>
                                         </li>
                                        
                                        </ul>
                                    </li>
   
               </ol>                
                              
                         </div>
                         
                         
                    </div>
                    
                      <div class="tab-content tom_dis_box" id="tab-12" style="display:none">
                          
                        <div class="tom_dis_content">
                            
                            <ol>
                                <li>
                          The Recal Information may include personal credit scores, output from educational tools (including credit calculators designed to allow you to consider "what if" scenarios using pricing and other Information). None of this or any other aspect of the Recal Information will provide more than indicative results, depending on the Information you have supplied, and cannot be relied upon as a guarantee of any particular result</li>
                                <li>
                                   
We will use reasonable skill and care in the supply of the Recal Information to you. Due to the number of third party sources from which the Recal Information is obtained and the nature of distribution of Information via the Internet, we cannot guarantee, warrant or represent that: 
                                     <ul>
                                         <li>
the Recal Information is complete, accurate, up-to-date or error-free;</li>
                                         <li>
                                            the Platform or web site is virus free or that their operation will be continuous, uninterrupted or error-free.</li></ul></li>
                                <li>
The Platform may contain links to other Internet sites and telephone numbers for services provided by others. The availability of such third party sites, services or material does not constitute any form of recommendation, advice, endorsement or publication of any such third party sites, services or material and we are not responsible for their availability or the accuracy of any information provided by them.</li>
                                <li>
                                	None of the Information on the Platform, and in particular, neither the Customer Content nor the Recal Information, can be relied upon by you or any third party as a guarantee of any particular result, nor does any such Information constitute any form of advice, recommendation or endorsement by us, and it is not intended to be relied upon by you as the basis for making (or refraining from making) any specific decision.</li> 
                                <li>
                                   	You download the Information on the Platform, and in particular the Customer Content and the Recal Information, at your own discretion and will be exclusively responsible for any damage to your computer or any lost Information that results from you downloading any such Information.</li>
                                   <li>
                                      	We are not responsible or liable in any manner for any Customer Content or any Information posted on the Platform by third parties. Although we provide rules for Customer conduct and postings, we do not control and are not responsible for what Customers or other Customers post, display, upload, publish transmit or share on the Platform and are not responsible for any Information that breaches or is of a kind that might breach any provision of these T&Cs. We are not responsible for the conduct, whether online or offline, of any Customer or other Customer of the Platform.</li>
                                 <li>
                                    	THE PLATFORM, THE CUSTOMER CONTENT, THE RECAL INFORMATION AND ALL OTHER INFORMATION ON THE PLATFORM AND RECAL WEB SITE(S) ARE PROVIDED "AS-IS" AND WE DISCLAIM ANY AND ALL REPRESENTATIONS AND WARRANTIES, WHETHER EXPRESS OR IMPLIED, INCLUDING WITHOUT LIMITATION IMPLIED WARRANTIES OF TITLE, MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT. WE CANNOT GUARANTEE AND DO NOT PROMISE ANY SPECIFIC RESULTS FROM USE OF THE PLATFORM OR ANY INFORMATION ON IT. WE DO NOT REPRESENT OR WARRANT THAT SOFTWARE, CONTENT OR MATERIALS ON THE PLATFORM ARE ACCURATE, COMPLETE, RELIABLE, CURRENT OR ERROR-FREE OR THAT THE PLATFORM OR ITS SERVERS, OR ANY SOFTWARE APPLICATIONS ARE FREE OF VIRUSES OR OTHER HARMFUL COMPONENTS. THEREFORE, YOU SHOULD EXERCISE CAUTION IN THE USE AND DOWNLOADING OF ANY SUCH SOFTWARE, INFORMATION OR MATERIALS AND USE INDUSTRY-RECOGNISED SOFTWARE TO DETECT AND DISINFECT VIRUSES. WITHOUT LIMITING THE FOREGOING, YOU UNDERSTAND AND AGREE THAT YOU DOWNLOAD OR OTHERWISE OBTAIN CUSTOMER CONTENT, RECAL INFORMATION AND ALL OTHER INFORMATION, MATERIAL OR SOFTWARE (INCLUDING ANY MOBILE CLIENT) FROM OR THROUGH THE PLATFORM AND RECAL WEB SITE(S) AT YOUR OWN DISCRETION AND RISK AND THAT YOU WILL BE SOLELY RESPONSIBLE FOR YOUR USE THEREOF AND ANY DAMAGES TO YOUR DEVICE OR COMPUTER SYSTEM, LOSS OF INFORMATION OR OTHER HARM LOSS OR EXPENSE OF ANY KIND THAT MAY RESULT.</li>
                                <li>
                                    	We reserve the right to change any and all Information, software and other items used or contained in the Platform offered through the Platform at any time without notice.</li>
                        <li>        
You may not include a link to the Platform in any other site, computer or network without our prior written consent and licence.
                                </li>
  
                            
         </ol>                   
                            
                          </div>
                          
                          
                    </div>
                    
                      <div class="tab-content tom_dis_box" id="tab-13" style="display:none">
                           <div class="tom_dis_content">
                               <ol>
                                   <li>
                             We agree to act fairly, reasonably and responsibly in our dealings with you, and correct mistakes and handle complaints promptly.</li>
                                     <li>
                                         OUR LIABILITY TO YOU ON ANY BASIS WHATSOEVER SHALL NOT EXCEED THE TOTAL AMOUNT OF FEES EARNED BY RECAL IN RESPECT OF TRANSACTIONS ENTERED INTO BY YOU VIA RECAL.</li>
                                   <li>
                                       We shall not be liable for any loss or damage arising out of or in connection with any error or inaccuracy in the Information entered by you or any other Customer and/or any negligence, breach of contract, misrepresentation or wilful misconduct in relation to Offers, Requests made thereof, or, other uses of the Platform.</li>
                                     <li>
                                     We shall not be liable for any indirect, special or consequential loss or damage, including loss or damage arising out of or in connection with lost Information, lost profits, damage to goodwill or business interruption, any delay or failure to perform its own obligations under these T&Cs due to circumstances beyond our own reasonable control.</li>
  
                     </ol>          
                               
                               
                          </div>
                          
                          
                          
                    </div>
                    
                     <div class="tab-content tom_dis_box" id="tab-14" style="display:none">
                         
                           <div class="tom_dis_content">
                             <ol>
                               <li>
                              The Customer shall observe and promptly, at his own expense, comply with all such requirements as may be imposed on him by any law now or hereafter in force and with all the T&Cs and shall not cause or do or suffer to be done any act, omission or thing which may constitute or cause a breach by Recal of any of the Applicable Law.</li>
                                  <li>
                                     The Customer shall indemnify and compensate Recal for all loss, damage, liability or expense suffered or incurred by Recal as a result of any breach of the T&Cs and this Agreement by the Customer and all claims, demands, actions or proceedings made or brought against Recal by any Customer, regulatory body, governmental authority and/or any third party, arising out of, related to, under or in connection with such breach by the Customer. </li>
                                  <li>
                                    Each Party agrees that it will (when requested) cooperate with the other Party to enable that Party, where necessary, to comply with any Applicable Law or laws and regulations of any other jurisdiction in relation to use of the Platform. </li>
                                  <li>
                                      The Customer agrees to use reasonable efforts to assist Recal in complying with directions and requirements as may be imposed by the Applicable Law now or hereafter in force for the matters that are within the sole control of the Customer.</li>

                              </ol> 
                               
                               
                         </div>
                         
                    </div>
                    
                     <div class="tab-content tom_dis_box" id="tab-15" style="display:none">
                         
                           <div class="tom_dis_content">
                               <ol>
                               <li>
                             No waiver by one Party of a breach by the other Party of any express or implied covenant, obligation or provision of or in this Agreement will operate as a waiver of another or continuing breach by the other Party of the same or of any other express or implied covenant, obligation or provision of this Agreement. </li>
      <li>                             
        No failure on the part of one Party to exercise, and no delay on its part in exercising, any right or remedy, or, to enforce or require the strict adherence and performance of this Agreement by other Party will operate as a waiver thereof, nor will any single or partial exercise of any right or remedy preclude any other or further exercise thereof or the exercise of any other right or remedy. </li>
                                     <li>
                                        A person or entity who is not a Party to this Agreement or the T&Cs has no right to enforce any term of this Agreement and/or the T&Cs. </li>
                                      <li>
                                          Nothing herein or in the T&Cs shall constitute or be construed to be or to create a partnership or joint venture between the Parties. </li>
                                      <li>
                                         The Parties will attempt to settle any dispute arising out of this Agreement through consultation and negotiation in good faith and a spirit of mutual cooperation. If those attempts fail, then the dispute will be mediated at the Kuala Lumpur Regional Centre for Arbitration (“KLRCA”) by a mutually acceptable mediator chosen by the Parties within 45 days after written notice by either to the other demanding mediation (consent not to be unreasonably withheld regarding mediator selection). The Parties agree to divide mediation costs equally and should the parties be unable to agree on a mediator, KLRCA shall appoint a mediator on the Parties' behalf. The Parties may also agree to replace mediation with some other form of alternative dispute resolution. Any dispute which cannot be resolved between the Parties through negotiation, mediation or other form of agreed alternative dispute resolution within 120 days of the date of the initial demand for it by one of the Parties may then be submitted to the Malaysia courts for resolution. </li>
  
                   </ol>            
                               
                         </div></div>
                    
                    <div class="tab-content tom_dis_box" id="tab-16" style="display:none">
                         
                           <div class="tom_dis_content">
                               
                               <ol>
                                   <li>
                              Affiliate	
                               <br>
                                       
                               Means any corporation, entity or other organisation which:
                                       <ul>
                                           <li>
	is directly or indirectly controlled by Recal;</li>
                                             <li>
                                                	directly or indirectly controls Recal; </li>
                                             <li>
                                                 	is directly or indirectly controlled by a third party who also directly or indirectly controls Recal; or</li>
                                             <li>
                                                 	Recal has subcontracted with to carry out any of the purposes set out in Section 8.3,</li>
                                           </ul>
                                       
                                       </li>
                               
                               
    <li>                          
Applicable Law	
                               
                              <ul> 
                                  <li>means all laws, regulations, rules, legislation and orders of any governmental authority of Malaysia applicable to the operation of the Platform for the time being in force.</li> </ul>
        </li>
    <li>
        
Control	
        <ul>
                               
                              <li> when used with respect to any organisation, means the possession, directly or indirectly, of power to direct or cause the direction of the management and policies of such organisation, whether through the ownership of shares or by contract or otherwise.</li>
            </ul>
        
        </li>
                                   <li>
Credit Rating	
                               
                 <ul> 
                     <li>
                               means a credit rating issued by a credit reference agency supplied by the Customer, or issued by such other credit reference agency that we may use from time to time in relation to a Recal Customer for use in connection with the Platform. </li>
                                  </ul>  </li>
                                   
    <li>                              
                                   
Customer Content
                               
   <ul> 
       <li>
	means Information that a Customer uploads, publishes or displays on or through the Platform, Recal web site(s), or transmits to or shares with other Recal Customers; and "your Customer Content" means Customer Content that you have so uploaded, published or displayed.</li>
       </ul>  
        
        </li> 
                                   
                                   <li>
                                       
                                       
Disclosures	
                               
                       <ul>  <li>    
                               has the meaning given to it by Section 2.4(i).
                           </li> 
                           </ul> 

</li>
                    </ol>           
                               
                               
                               
                               
                               
                               
                               
                        </div></div>
                    
                   
                </div>
                
                
                
            </div>
            
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12">
                    
                    <div class="checkbox checkbox-primary">
                        <input id="checkbox2" class="styled" type="checkbox">
                        <label for="checkbox2" style="font-size:14px; line-height:16px;">
                            I have read and agreed with terms and conditions above.
                        </label>
                    </div>
                    
                    
                    
                    </div>
                
                
                
                </div>
            
            
            <div class="tom_bot">
                <div class="tob_btn">
                    <a href="#" class="btn btn-default btn-lg">Accept</a> </div>
                <div class="tob_btn">
                    <a href="#" class="btn btn btn-default gray-btn btn-lg">Cancel</a> </div>
            </div>
            <div class="clear"></div>
        </div>   
                
                
                
                
                
                
                
            </div>
        </div>
    </div>
    <footer class="site_footer">
        <div class="container-fluid">
            <div class="row text-center">
                <div class="col-xs-12">
                    <div class="f_social_icon">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-linkedin"></i></a>
                    </div>
                </div>
                <div class="col-xs-12"><span class="text-copyright">&copy; 2016-2017 Recal. All rights reserved.</span></div>
            </div>
        </div>
    </footer>



    <!-- WIDGETS -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

</body>

</html>