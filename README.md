# propine_solution
Web application solution using Robot Framework


## Requirements  
-Install Python and PIP

-Install robotframework and selenium library using pip

`pip install robotframework`  
`pip install robotframework-seleniumlibrary`  

-Install selenium webdriver for each browser. Following are the steps :-  
  1. Create C:\bin  
  2. Add C:\bin to PATH variable  
  3. Go To seleniumhq.org and click download  
  4. Find IE drivers and Third Party drivers  
  5. Download and extract into C:\bin
  
-Install PyCharm IDE and intellibot plugin

### Run Script on CLI

1. CD to Project Directory  
`cd path\to\directory\propine-test`  
2. Execute robot command  
  a. Default - firefox browser  
  `robot -d Results/ Tests/Web.robot`  
  b. Chrome Browser  
  `robot --variable Browser:Chrome -d Results/ Tests/Web.robot`  
  c. Internet Explorer  
  `robot --variable Browser:ie -d Results/ Tests/Web.robot`
