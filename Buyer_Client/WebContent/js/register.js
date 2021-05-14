$(document).ready(function()
{
	 $("#alertSuccess").hide();
	 $("#alertError").hide();
}); 

//Click event of the SAVE Button ============================================
$(document).on("click", "#submit", function(event)	
{
	console.log("testing")
	// Clear status messages-------------
	 $("#alertSuccess").text("");
	 $("#alertSuccess").hide();
	 $("#alertError").text("");
	 $("#alertError").hide();
 
// Form validation----------------------------------------------------------
var status = validateItemFormforRegister();

// If not valid-------------------------------------------------------------
if (status != true)
 {
 $("#alertError").text(status);
 $("#alertError").show();
 return;
 }

// If valid------------------------------------------------------------------
$.ajax(
		{
			url:"buyerAPI",
			type:"POST",
			data:$("#register-form").serialize(),
			dataType:"text",
			complete:function(response,status)
			{
				onItemSaveComplete(response.responseText,status);
			}
		});
		
function  onItemSaveComplete(response,status){
	
	if(status=="success")
		{
			$("#alertSuccess").text("Saved successfully.");
			$("#alertSuccess").show();
			window.location.href="buyer.jsp";
		
		}else if(status=="error")
			{
			$("#alertError").text("Error while saving");
			$("#alertError").show();
			
			}else{
				$("#alertError").text("Unknown error while saving");
				$("#alertError").show();
			}
     }
});

//Register form validation-------------------------------------------------

function validateItemFormforRegister()
{
   console.log("Validation function Working")

// For First Name
   if ($("#firstName").val().trim() == "")
   {
	  return "Please Enter First Name.";
   }

//For Last Name
   if ($("#lastName").val().trim() == "")
   {
     return "Please Enter Last Name.";
   }

//For Address
   if ($("#address").val().trim() == "")
   {
     return "Please Enter Address.";
   }

//For Email
   var e = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;	
   var email = $("#email").val().trim();
   if (e.test(email) == false) 
   {
	 return "Please Enter valid email address";
   }

//For Phone No
   if ($("#phoneNo").val().trim() == "")
   {
	 return "Please Enter Your Phone No.";
   }
   var phone = $("#phoneNo").val().trim();
   if (!$.isNumeric(phone)) 
   {
	 return "Enter a correct Phone No";
   }
   var pattern = /^\d{9}$/;
   if (!pattern.test(phone))
   {
	 return "Phone No should have 9 numbers without Zero";
   }
//userName
   if ($("#userName").val().trim() == "")
   {
     return "Please Enter the UserName.";
   }
//password
   if ($("#password").val().trim() == "")
   {
     return "Please Enter the Password.";
   }

//For Confirm Password
   if ($("#password-confirm").val().trim() == "")
   {
     return "Insert Confirm Password.";
   }
   if(($("#password").val().trim()) !=($("#password-confirm").val().trim()))
   {
	 return "Password Mismatched! Try again..";
   }
return true;

}

//Update buyers

$(document).on("click", ".btnUpdate", function(event)
		{
			/*Load Specific records when click the update button */
           $("#hidBuyerIDSave").val($(this).closest("tr").find('#hidItemIDUpdate').val()); 
           $("#firstName").val($(this).closest("tr").find('td:eq(1)').text());  
		     $("#lastName").val($(this).closest("tr").find('td:eq(2)').text());  
           $("#address").val($(this).closest("tr").find('td:eq(3)').text());
           $("#email").val($(this).closest("tr").find('td:eq(4)').text());  
           $("#phoneNo").val($(this).closest("tr").find('td:eq(5)').text());
           $("#userName").val($(this).closest("tr").find('td:eq(6)').text());
           $("#password").val($(this).closest("tr").find('td:eq(7)').text());

		});

/*Update button clicked*/
$(document).on("click", "#btnSave", function(event)
  {
	
	 $("#alertSuccess").text("");
	 $("#alertSuccess").hide();
	 $("#alertError").text("");
	 $("#alertError").hide();
	 
	var status2 = validateItemFormforUpdate();
	if (status2 != true)
	{
	  $("#alertError").text(status2);
	  $("#alertError").show();
	return;
	}
	
	
      $.ajax(
		   {
			 url:"buyerAPI",
			 type:"PUT",
			 data:$("#formBuyer").serialize(),
			 dataType:"text",
			 complete:function(response,status)
			 {
						
			    onItemSaveComplete1(response.responseText,status);
			 }
	});
	      
function  onItemSaveComplete1(response,status)
{  
	if (status == "success")
	{ 
		var resultSet = JSON.parse(response); 
        if (resultSet.status.trim() == "success")
       {   
	      $("#alertSuccess").text("Successfully saved.");
	      $("#alertSuccess").show(); 
          $("#divItemsGrid").html(resultSet.data);
      } else if (resultSet.status.trim() == "error")
      {    
	      $("#alertError").text(resultSet.data);
	      $("#alertError").show(); 
      } 

      } else if (status == "error")
      {  
	     $("#alertError").text("Error while saving.");
	     $("#alertError").show();
      } else 
      {  
	     $("#alertError").text("Unknown error while saving..");
	     $("#alertError").show();
      } 

      $("#hidpatientIDSave").val("");
      $("#formPatient")[0].reset();
}	
	
   });

//Update form Validation

function validateItemFormforUpdate(){
// For First Name
   if ($("#firstName").val().trim() == "")
	 {
	 return "Insert first name.";
	 }

//For Last Name
   if ($("#lastName").val().trim() == "")
   {
   return "Insert last name.";
   }

//For Address
   if ($("#address").val().trim() == "")
   {
   return "Insert address.";
   }

//For Email
   var e = /^[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$/;	
   var email = $("#email").val().trim();
   if (e.test(email) == false) 
   {
	 return "Please enter valid email address";
   }

//For Phone No
   if ($("#phoneNo").val().trim() == "")
   {
	 return "Please enter Phone No.";
   }
   var phone = $("#phoneNo").val().trim();
   if (!$.isNumeric(phone)) 
   {
	 return "Insert a correct Phone No";
   }
   var pattern = /^\d{9}$/;
   if (!pattern.test(phone))
   {
	 return "Phone No should have 9 numbers without Zero";
   }

//For Username
   if ($("#userName").val().trim() == "")
   {
    return "Insert password.";
   }

//password
   if ($("#password").val().trim() == "")
   {
     return "Please Enter the Password.";
   }
   
   return true;
}

//Delete buyer

$(document).on("click", ".btnRemove", function(event)
		{  
	      $.ajax (
	    	{   
	    	  url : "buyerAPI",
	    	  type : "DELETE", 
	    	  data : "buyerID=" + $(this).data("buyerid"),
	    	  dataType : "text", 
	    	  complete : function(response, status) 
	    	  {   
	    		 onItemDeleteComplete(response.responseText, status); 
	    	  } 
	    }); 

//Delete response 

function onItemDeleteComplete(response, status)
 {
	 if (status == "success") 
	 {  
		 var resultSet = JSON.parse(response); 

         if (resultSet.status.trim() == "success") 
         {   
        	  $("#alertSuccess").text("Successfully deleted.");
        	  $("#alertSuccess").show(); 

              $("#divItemsGrid").html(resultSet.data);
         } else if (resultSet.status.trim() == "error")
            {   
        	  $("#alertError").text(resultSet.data);  
        	  $("#alertError").show(); 
        	} 

    } else if (status == "error")
        {  
    	     $("#alertError").text("Error while deleting.");
    	     $("#alertError").show();
    	}
        else
         {   $("#alertError").text("Unknown error while deleting..");
             $("#alertError").show(); 
         } 
  } 
		});
