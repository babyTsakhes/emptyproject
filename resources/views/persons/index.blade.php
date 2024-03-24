<!DOCTYPE html> 
<html lang="en"> 

<head> 
	<meta charset="UTF-8"> 
	<meta name="viewport"
		content="width=device-width, 
				initial-scale=1, 
				shrink-to-fit=no"> 
	<link rel="stylesheet"
		href= 
"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"> 
	<title>Bootstrap Form</title> 
</head> 

<body> 
	<h1 class="text-success text-center"> 
		Фильтр людей по имени, фамилии, почтовому адресу и отчеству!
	</h1> 

    
	<div class="container mt-5 "> 
		<div class="row justify-content-center"> 
			<div class="col-md-6"> 
				<div class="card"> 
					<div class="card-body"> 
						<form  method="POST"  action="{{ route('persons.store', ) }}"> 
                       
                        @csrf
                        
								<label for="name"> 
									Имя
								</label> 
                                <input 
									
									id="name"
									name="name"
									placeholder="Имя" > 
                             
								<label for="surname"> 
									Фамилия
								</label>
                                <input 
									
									id="surname"
									placeholder="Фамилия" > 
                                <div class="form-group"> 
								<label for="fathername"> 
									Отчество
								</label> 
                                <input 
									
									id="fathername"
									placeholder="Отчество" > 

							
								<label for="email"> 
									Email 
								</label> 
								<input 
									
									id="email"
									placeholder="Email" > 
							
                                    <button class="btn btn-danger"> 
								Искать
							</button> 
						
						</form> 
						
					</div> 
				</div> 
			</div> 
		</div> 
	</div> 
</body> 

</html>
