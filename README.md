# cse-5335-vxs5278-2

1.What is your external data source used to populate your Heroku data sources?

	I have used a health dataset, which I have used for my previous projects. I have made few changes 
	to my dataset in order accommodate the requirements of the project.  The attributes present in my 
	dataset are as follows:

	           AGE 
              SEX 
              RACE 
              DAY_OF_ADMISSION 
              DISCHARGE_STATUS 
              STAY_INDICATOR 
              DRG_CODE 
              LENGTH_OF_STAY 
              DRG_PRICE 
              TOTAL_CHARGES 
              COVERED_CHARGES 
              POA_DIAGNOSIS_INDICATOR_1 
              POA_DIAGNOSIS_INDICATOR_2 
              DIAGNOSIS_CODE_1 
              DIAGNOSIS_CODE_2 
              PROCEDURE_CODE_1 
              PROCEDURE_CODE_2 
              DISCHARGE_DESTINATION 
              SOURCE_OF_ADMISSION 
              TYPE_OF_ADMISSION 
              ADMITTING_DIAGNOSIS_CODE 
             
	Apart from these attributes I have added an attribute called ‘ID’ which 
	will serve as a Primary key for the database.
	
2.What are the Heroku toolbelt commands to execute the scripts?
	
	First we are pushing our local project folder to Github account. The commands to be used for pushing to Github,
	•	git init
	•	git add README.md
	•	git commit -m "first commit"
	•	git remote add origin https://github.com/vivek0293/cse5335-vxs5278-2.git
	•	git push -u origin master
	
	After pushing our project to Github, we are now deploying that in Heroku. Commands for deploying,
	•	$ heroku login
	
	Clone the repository
	  Use Git to clone project's source code to your local machine.
	•	$ heroku git:clone -a project_name
	•	$ cd project_name
	
	Deploy your changes
	  Make some changes to the code you just cloned deploy them to Heroku using Git.
	•	$ git add .
	•	$ git commit -am "make it better"
	•	$ git push heroku master
	After logging in, execute
	•	Heroku run bash
	Now you will be entering the heroku’s console where you can execute your scripts.
	For postgres, 
	•	Ruby query.rb
	For Mongo,
	•	Ruby mlabs.rb
	For Redis,
	•	Ruby redis.rb
	
3.What aspect of the implementation did you find easy, if any, and why?

	Almost the entire implementation of the project was easy as heroku took care of all the 
	dependencies needed for different clients. Especially for postgres and mongo both 
	the insertion and querying parts were very easy.
	
4.What aspect of the implementation did you find hard, if any, and why?

	The querying part for redis was the most difficult one as there were no proper commands for querying. 


