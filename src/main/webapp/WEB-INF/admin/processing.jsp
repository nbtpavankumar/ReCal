<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ include file="/WEB-INF/jsp/admin/includes/header1.jsp" %>
 
 
    
 <div class="content_area">
        <div class="content_inner">
          <div class="pro_back">
            <a href="/admin/dashboard">Back to List</a>  
          </div>
          <div class="content_box_wrap">
          <div class="content_box">
                    <div class="row">
                      <div class="col-md-12 col-xs-12">
                            <h1>Application #${appnum} | <span class="small_head">Pending for borrower</span> </h1>
                      </div>                        
                    </div>
            </div>
            
         <div class="pro_tab_content">
         <div class="tabs">
  
  <nav role='navigation' class="transformer-tabs">
    <ul>
      <li><a href="#tab-1" class="active">Document</a></li>
      <li><a href="#tab-2">IRIS&nbsp;&nbsp;</a></li>
      <li><a href="#tab-3">CCRIS Records</a></li>
      <li><a href="#tab-4">CCRIS Summary</a></li>
      <li><a href="#tab-5">Result</a></li>
    </ul>
  </nav>

  <div id="tab-1" class="active tab_cont">
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Document Verification</div>        
       <div class="tho_right"><a href="#">Docs</a></div>
       </div>       
       <div class="tab_box_content">
         <div class="tab_box1_left">
           <div class="tab_box_row">
             <div class="tab_box_text">Malaysia Residence?</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected">Not Set</option>
                                            <option> True</option>
                                             <option> False</option>
                                             </select>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">New IC # Valid?</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected">Not Set</option>
                                            <option> True</option>
                                             <option> False</option>
                                             </select>
             </div>
           </div>
         </div>
         <div class="tab_box1_right">
           <div class="tab_box_row">
             <div class="tab_box_text">Employment Valid?</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected">Not Set</option>
                                            <option> True</option>
                                             <option> False</option>
                                             </select>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">KYC (Sanction, PEP)</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected">Not Set</option>
                                            <option> No Match</option>
                                             <option> Match</option>
                                             </select>
             </div>
           </div>
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Request Info</div>        
       </div>       
       <div class="tab_box_content">
         <div class="tab_box1_left">
           <div class="tab_box_row">
             <div class="tab_box_text">Loan Amount</div>  
             <div class="tab_box_text2">RM50,000.00</div>
           </div>
            <div class="tab_box_row">
             <div class="tab_box_text">Registration Date</div>  
             <div class="tab_box_text2">13-Sep-2016 11:58:02</div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Referral Code</div>  
             <div class="tab_box_text2">Lorem ipsum</div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Purpose</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option value="1">CreditCard Refinancing</option>
<option value="2">Debt Consolidation</option>
<option value="3">Home Improvement</option>
<option value="4">Home Buying</option>
<option value="5">Car Financing</option>
<option value="6">Vacation</option>
<option value="7">Moving Relocation</option>
<option value="8">Medical Expenses</option>
<option value="9">Other</option>
                                             </select>
             </div>
           </div>
         </div>
         <div class="tab_box1_right">
           <div class="tab_box_row">
             <div class="tab_box_text">Loan Tenor</div>             
             <div class="tab_box_text2"> 24 months </div>
             </div>
              <div class="tab_box_row">
             <div class="tab_box_text">Expired Date</div>             
             <div class="tab_box_text2"> 27-Sep-2016 <span class="red_text">(-49)</span> </div>
             </div>
            <div class="tab_box_row">
             <div class="tab_box_text">Admin Fee</div>             
             <div class="tab_box_text2"> 0.00% </div>
             </div>
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Borrower Detail </div>        
       <div class="tho_right"><a href="#" class="red_text">Suspend borrower</a></div>
       </div>       
       <div class="tab_box_content">
         <div class="tab_box1_left">
           <div class="tab_box_row">
             <div class="tab_box_text">New I/C No.</div>             
             <div class="tab_box_inp">
             <form class="has-validation-callback" method="post">
            <input class="form-control text-box single-line valid" placeholder="800101-14-1234" value="850311-08-6560" aria-required="true" aria-invalid="false" aria-describedby="Nric-error" type="text">
            </form>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Mobile No</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="number" type="text">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Residential Address</div>             
             <div class="tab_box_inp">
              <textarea class="form-control valid" cols="20" data-val="true"  maxlength="250" name="ResidentialAddress" rows="2" aria-required="true" aria-invalid="false" aria-describedby="ResidentialAddress-error">Jalan 10</textarea>
             </div>
           </div>
         </div>
         <div class="tab_box1_right">
           <div class="tab_box_row">
             <div class="tab_box_text">Email</div>             
             <div class="tab_box_text2"> <a href="mailto:demo@exampldomin.com">demo@exampldomin.com</a></div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Name</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="text" type="text">
             </div>             
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Postal Code</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="text" type="text">
             </div>             
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">&nbsp;&nbsp;</div>             
             <div class="tab_box_inp">
              <button class="btn btn-md btn-addntional" type="submit">Update Profile</button>
             </div>             
           </div>
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Employment Detail</div>        
       </div>       
       <div class="tab_box_content">
         <div class="tab_box1_left">
           <div class="tab_box_row">
             <div class="tab_box_text">Type of employment</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option selected="selected" value="1">Salaried</option>
                                             <option value="2">Self-employed</option>
                                              <option value="3">Commision Earner</option>
                                             </select>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Employer name</div>             
             <div class="tab_box_inp">
             <input name="" type="text" class="form-control" value="Hong Leong Bank" placeholder="Employer name" data-validation="number">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Employer address</div>             
             <div class="tab_box_inp">
              <textarea class="form-control valid" cols="20" data-val="true"  maxlength="250" name="ResidentialAddress" rows="2" aria-required="true" aria-invalid="false" aria-describedby="ResidentialAddress-error"></textarea>
             </div>
           </div>
         </div>
         <div class="tab_box1_right">
           <div class="tab_box_row">
             <div class="tab_box_text">Length of Service</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                            <option>less than 6 months</option>
                                            <option >6 months to 1 year</option>
                                            <option selected="selected" value="20">1 to 5 years</option>
                                            <option>5 to 10 years</option>
                                            <option>more than 10 years</option>
                                             </select>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Type of Business / Industry</div>             
             <div class="tab_box_inp">
             <select class="form-control select_box1" data-val="true" data-val-required="The Purpose field is required." id="Task" name="Task">
                                           <option selected="selected" value="101">Banking/Finance</option>
<option value="102">Business Consultancy</option>
<option value="103">Computer & IT</option>
<option value="104">Defence/Police/Security</option>
<option value="105">Education services</option>
<option value="106">Engineering</option>
<option value="107">Entertainment/Spa/Karaoke/Bar</option>
<option value="108">Gaming/Gambling</option>
<option value="109">Hotel</option>
<option value="110">Insurance</option>
<option value="111">Manufacturing</option>
<option value="112">Money changer/Remittance/Moneylending</option>
<option value="113">Real Estate/ Construction</option>
<option value="114">Transportation</option>
<option value="115">Wholesale/Retail Trade</option>
<option value="116">Others</option>
                                             </select>
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Postal code</div>             
             <div class="tab_box_inp">
             <input name="" type="text" class="form-control" value="57000k" placeholder="Postal code" data-validation="number">
             </div>
           </div>
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Logs</div>     
       </div>  
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class=" display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 250px;">Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 250px;">By</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:250px;">Log</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">Lorem ipsum</td>
                                                <td class="sorting_1">Lorem Ipsum</td>
                                            </tr>      
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">Lorem ipsum</td>
                                                <td class="sorting_1">Lorem Ipsum</td>
                                            </tr>      
                                            <tr role="row" class="odd">
                                                <td class="">16-Nov-2016</td>
                                                <td class="sorting_1">Lorem ipsum</td>
                                                <td class="sorting_1">Lorem Ipsum</td>
                                            </tr>                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                </div>
       </div>
       
       <div class="tab_box_full">
         <div class="tbf_row1">
         <textarea id="textlog" name="textlog" class="form-control" maxlength="1000" placeholder="Type your message here..."></textarea>
         </div>
         
         <div class="tbf_row2">
         <button class="btn btn-md btn-addntional float-right" type="submit">Add</button>
         </div>
       </div>
    </div>
    
  </div>
  
  <div id="tab-2" class="tab_cont">
   <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Info</div>        
       </div>       
       <div class="tab_box_content">
         <div class="tab_box1_left">
           <div class="tab_box_row">
             <div class="tab_box_text">[RAMCI] New IC #</div>             
             <div class="tab_box_inp">
             <input name="" class="form-control" placeholder="" data-validation="number" type="text">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">[RAMCI] Passport #</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="number" type="text">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">[RAMCI] Subject Name</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="Name" data-validation="number" type="text">
             </div>
           </div>
         </div>
         <div class="tab_box1_right">
           <div class="tab_box_row">
             <div class="tab_box_text">#Dishonored Cheque</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="number" type="Number" value="0">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">#Bankruptcy Record</div>             
             <div class="tab_box_inp">
              <input name="" class="form-control" placeholder="" data-validation="number" type="Number" value="0">
             </div>
           </div>
           
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Address(s) in Banking & Ramci Databank</div>     
       </div>  
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class="display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 700px;">Address</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Captured</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:150px;">Source</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row" class="odd">
                                                <td class="">NO 305, BLOCK A5 WANGSA MAJU SECTION 4 53300 KL, WP 53300</td>
                                                <td class="sorting_1">18-Apr-2016</td>
                                                <td class="sorting_1">RAMCI</td>
                                            </tr>      
                                           <tr role="row" class="odd">
                                                <td class="">NO 305, BLOK A5, BANDAR BARU WANGSA MAJU, 53300 KUALA LUMPUR, KUALA LUMPUR, WILAYAH PERSEKUTUAN KUALA LUMPUR</td>
                                                <td class="sorting_1">18-Apr-2016</td>
                                                <td class="sorting_1">BANKING</td>
                                            </tr>    
                                           <tr role="row" class="odd">
                                                <td class="">NO 305 BLOCK A5, LEVEL 2 SECTION 4, BANDAR BARU WANGSA MAJU, 53300 KUALA LUMPUR, KUALA LUMPUR, WILAYAH PERSEKUTUAN KUALA</td>
                                                <td class="sorting_1">18-Apr-2016</td>
                                                <td class="sorting_1">BANKING</td>
                                            </tr>  
                                            <tr role="row" class="odd">
                                                <td class="">NO 38, KAMPUNG BARU, KAMPUNG RAJA, C HIGHLANDS, PAHANG</td>
                                                <td class="sorting_1">27-Jun-2008</td>
                                                <td class="sorting_1">BANKING</td>
                                            </tr>  
                                            <tr role="row" class="odd">
                                                <td class="">NO 305 BLK A 5, WANGSA MAJU SECTION 4, WILAYAH PERSEKUTUAN KUALA LUMPUR</td>
                                                <td class="sorting_1">06-Nov-2008</td>
                                                <td class="sorting_1">BANKING</td>
                                            </tr>  
                                            <tr role="row" class="odd">
                                                <td class="">NO 305 BLOCK A5, WANGSA MAJU, SECTION 4, KUALA LUMPUR, WILAYAH PERSEKUTUAN KUALA LUMPUR</td>
                                                <td class="sorting_1">14-Nov-2008</td>
                                                <td class="sorting_1">BANKING</td>
                                            </tr>                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                </div>
       </div>
       
       <div class="tab_box_full">
         <div class="tbf_row2">
         <div class="tbf_row2_note">
        Note: The address(s) stated above may not be the current or last known address of the subject
        </div>
         </div>
       </div>
    </div>
  </div>
  
  <div id="tab-3" class="tab_cont">
   <div class="tab_box1">              
       <div class="tab_box_content">
         <div class="tb_full">
           <div class="tab_box_row">
             <div class="tab_box_text">I-Score</div>             
             <div class="tab_box_inp">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="697">
             </div>
           </div>
           <div class="tab_box_row">
             <div class="tab_box_text">Beginning Month</div>             
             <div class="tab_box_inp">
             <div class="form-group"> <input type="text" class="form-control form-control-1 input-sm from" placeholder="MM/YYYY"></div>
             </div>
           </div>
         </div>
         </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Outstanding Credit</div>     
       </div>  
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class="display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Apprv Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Capacity</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Lender Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Facility</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Total Outstanding Balance(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Balance Updated</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Limit(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Prin Repymt Term</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Col Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">A16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">J16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">J16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">M16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">A16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">M16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">F16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">J16</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">D15</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">N15</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">O15</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">S15</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Legal Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Status Update</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Monthly Instalment</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">0</td>
                                                <td class="">0</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                                <td class="">RM589.04</td>
                                            </tr>          
                                             <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">0</td>
                                                <td class="">0</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                                <td class="">RM589.04</td>
                                            </tr>          
                                             <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">0</td>
                                                <td class="">0</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                                <td class="">RM589.04</td>
                                            </tr>          
                                             <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">0</td>
                                                <td class="">0</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">1</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                                <td class="">RM589.04</td>
                                            </tr>                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                </div>
       </div>
              
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Credit Application</div>     
       </div>  
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class="display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Apprv Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Capacity</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Lender Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Facility</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Total Outstanding Balance(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Balance Updated</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Limit(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Prin Repymt Term</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Col Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Legal Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Status Update</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                            </tr>         
                                                                       
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                </div>
       </div>
              
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Special Attention Account</div>     
       </div>  
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class="display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Apprv Date</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 100px;">Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Capacity</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Lender Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Facility</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Total Outstanding Balance(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Balance Updated</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Limit(RM)</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Prin Repymt Term</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Col Type</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Legal Sts</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Date Status Update</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row">
                                                <td class="">03-Jul-2009</td>
                                                <td class="">O</td>
                                                <td class="">OWN</td>
                                                <td class="">CB</td>
                                                <td class="">PCPASCAR</td>
                                                <td class="">RM12,191.00</td>
                                                <td class="">31-Aug-2016</td>
                                                <td class="">RM42,200.00</td>
                                                <td class="">MTH</td>
                                                <td class="">MOTOR V (JPJ)</td>
                                                <td class="">--</td>
                                                <td class="">--</td>
                                            </tr>         
                                                                       
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                </div>
       </div>
              
    </div>
    
  </div>
  
  <div id="tab-4" class="tab_cont">
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Ccris Result </div>        
       </div>       
       <div class="tab_box_content">
         <div class="ccric_summry_row">
           <div class="ccsr_text1">DSR</div>
           <div class="ccsr_text2">79.91%</div>
         </div>
          <div class="ccric_summry_row">
           <div class="ccsr_text1">DSR*</div>
           <div class="ccsr_text2">64.34%</div>
           <div class="ccsr_text3">*Monthly Instalment(Exclude new instalment) / Income Per Month</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Income(p.a)</div>
           <div class="ccsr_text2">RM88,000.00</div>
           <div class="ccsr_text3">RM88,000.00 / 12 <br>= RM7,333.33 per month</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Credit Score</div>
           <div class="ccsr_text2">B1</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Rate</div>
           <div class="ccsr_text2">4.80%</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Final Loan Amount</div>
           <div class="ccsr_text2">RM25,000.00</div>
           <div class="ccsr_text3">Request: RM50,000.00</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Loan Tenor</div>
           <div class="ccsr_text2">24 months</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Total Monthly Instalment</div>
           <div class="ccsr_text2">RM5,859.92</div>
           <div class="ccsr_text3">new: RM1,141.67 current: RM0.00 ccris: RM4,718.25</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Line Assignment</div>
           <div class="ccsr_text2">5</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Max Limit Eligibility (RM50K)</div>
           <div class="ccsr_text2">RM37,000.00</div>
           <div class="ccsr_text3">actual: RM36,666.65 round-up: RM37,000.00</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Max Loan Amount (DSR)</div>
           <div class="ccsr_text2">RM25,000.00</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">Max Loan Amount (BUBE)</div>
           <div class="ccsr_text2">RM154,000.00</div>
         </div>
         <div class="ccric_summry_row">
           <div class="ccsr_text1">BUBE</div>
           <div class="ccsr_text2">6.41 </div>
         </div>
       </div>
    </div>
    <div class="tab_box1">
       <div class="tab_heading_outer">
       <div class="tho_left">Ccris Profile</div>   
       </div>       
       <div class="tab_box_content">
       <div class="tb_full2">           
           <div class="tab_box_row">
             <div class="tab_box_text2">Oldest facility</div>             
             <div class="tab_box_inp2">
             <div class="form-group"> <input type="text" class="form-control" placeholder="" value="3/7/2009 12:00:00 AM +08:00" disabled="disabled"></div>
             </div>
           </div>
         </div>
         <div class="tab_box1_left2">
             <div class="tab_box_row">
             <div class="tab_box_text3">#Pending applications with amount <= RM50K</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
           <div class="tab_box_row">
            <div class="tab_box_text3">#Credit cards with average utilization >80%</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
           <div class="tab_box_row">
            <div class="tab_box_text3">#Latest conduct = 2 and balance >= RM500</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
             <div class="tab_box_row">
            <div class="tab_box_text3">#Legal Status</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
          <div class="tab_box_row">
            <div class="tab_box_text3">#Facilities with status T,C or K</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
         </div>
         <div class="tab_box1_right2">
              <div class="tab_box_row">
             <div class="tab_box_text3">#Approved unsecured facility in last 12 months</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
           <div class="tab_box_row">
            <div class="tab_box_text3">#Latest conduct not equal to 0, 1 or 2</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
           <div class="tab_box_row">
            <div class="tab_box_text3">#Last 6 months conduct >= 4</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
             <div class="tab_box_row">
            <div class="tab_box_text3">#Special Attention Account</div>             
             <div class="tab_box_inp3">
             <input name="" class="form-control" placeholder="" data-validation="number" type="number" value="0" disabled="disabled">
             </div>
           </div>
          
           
         </div>
       </div>
    </div>
  </div>
  
  <div id="tab-5" class="tab_cont">
   <div class="tab_box1">         
       <div class="tab_box_full">
       <div id="example_wrapper" class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                            <div class="row marg_top_10">
                                <div class="col-sm-12 table-responsive">
                                    <table id="" class=" display table table-striped table-bordered dataTable no-footer" cellspacing="0" width="100%" role="grid" aria-describedby="example_info" style="width: 100%;">
                                        <thead>
                                            <tr role="row">
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 150px;">Code</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width: 400px;">Desc</th>
                                                <th class="sorting" tabindex="0" aria-controls="example" rowspan="1" colspan="1" style="width:150px;">Remarks</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr role="row">
                                                <td><span class="green_text">P01</span></td>
                                                <td><span class="green_text">Customer Segment - Age Limit</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">P02</span></td>
                                                <td><span class="green_text">Income vs Age Limit</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">P03</span></td>
                                                <td><span class="green_text">Employment Type</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">P05</span></td>
                                                <td><span class="green_text">Customer None-Target Segment</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">P09</span></td>
                                                <td><span class="green_text">Customer Segment - Suspension </span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">P10</span></td>
                                                <td><span class="green_text">Customer Segment - Invalid Loan Size</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">C01</span></td>
                                                <td><span class="green_text">Cooling-Off Period</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">C09</span></td>
                                                <td><span class="green_text">Existing Loan is Late > 30 days</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">C02</span></td>
                                                <td><span class="green_text">RAMCI Risk Score</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  <tr role="row">
                                                <td><span class="green_text">C03</span></td>
                                                <td><span class="green_text">CCRIS - Minimum 12 months of Credit Records</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr> 
                                            <tr role="row">
                                                <td><span class="green_text">C04</span></td>
                                                <td><span class="green_text">CCRIS - Credit Hunger</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                            <tr role="row">
                                                <td><span class="green_text">C05</span></td>
                                                <td><span class="green_text">CCRIS - Latest Delinquincy</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr> 
                                             <tr role="row">
                                                <td><span class="green_text">C06</span></td>
                                                <td><span class="green_text">CCRIS - Historical Delinquincy</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr> 
                                             <tr role="row">
                                                <td><span class="green_text">C07</span></td>
                                                <td><span class="green_text">Negative Flags</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr> 
                                             <tr role="row">
                                                <td><span class="green_text">C08</span></td>
                                                <td><span class="green_text">Debt Service Ratio (DSR)</span></td>
                                                <td><span class="green_text">&nbsp;</span></td>
                                            </tr>  
                                                                           
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                           </div>
                      </div>
                   </div>
                </div>
  
             </div>

             </div>
         
      
          </div>          
        </div>
      <div class="clear"></div>
    </div>
    
     </div>
     
     <script type="text/javascript">
    var Tabs = {

  init: function() {
    this.bindUIfunctions();
    this.pageLoadCorrectTab();
  },

  bindUIfunctions: function() {

    // Delegation
    $(document)
      .on("click", ".transformer-tabs a[href^='#']:not('.active')", function(event) {
        Tabs.changeTab(this.hash);
        event.preventDefault();
      })
      .on("click", ".transformer-tabs a.active", function(event) {
        Tabs.toggleMobileMenu(event, this);
        event.preventDefault();
      });

  },

  changeTab: function(hash) {

    var anchor = $("[href=" + hash + "]");
    var div = $(hash);

    // activate correct anchor (visually)
    anchor.addClass("active").parent().siblings().find("a").removeClass("active");

    // activate correct div (visually)
    div.addClass("active").siblings().removeClass("active");

    // update URL, no history addition
    // You'd have this active in a real situation, but it causes issues in an <iframe> (like here on CodePen) in Firefox. So commenting out.
    // window.history.replaceState("", "", hash);

    // Close menu, in case mobile
    anchor.closest("ul").removeClass("open");

  },

  // If the page has a hash on load, go to that tab
  pageLoadCorrectTab: function() {
    this.changeTab(document.location.hash);
  },

  toggleMobileMenu: function(event, el) {
    $(el).closest("ul").toggleClass("open");
  }

}

Tabs.init();
 </script>
                               
<script>
var startDate = new Date();
var fechaFin = new Date();
var FromEndDate = new Date();
var ToEndDate = new Date();




$('.from').datepicker({
    autoclose: true,
    minViewMode: 1,
    format: 'mm/yyyy'
}).on('changeDate', function(selected){
        startDate = new Date(selected.date.valueOf());
        startDate.setDate(startDate.getDate(new Date(selected.date.valueOf())));
        $('.to').datepicker('setStartDate', startDate);
    }); 

$('.to').datepicker({
    autoclose: true,
    minViewMode: 1,
    format: 'mm/yyyy'
}).on('changeDate', function(selected){
        FromEndDate = new Date(selected.date.valueOf());
        FromEndDate.setDate(FromEndDate.getDate(new Date(selected.date.valueOf())));
        $('.from').datepicker('setEndDate', FromEndDate);
    });

    </script>
    
    <script>
        $(document).ready(function () {
            $(".dropdown-menu li a").click(function () {
                $("#options").text($(this).text());
            });
        });
    </script>
  
    <script type="text/javascript" charset="utf-8">
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
    <script type="text/javascript">
        // For demo to fit into DataTables site builder...
      $(document).ready(function() {
    $('table.display').DataTable();
} );
    </script>
    
    