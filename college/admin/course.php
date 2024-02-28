<?php
include 'db_connect.php';
    
$db = $conn;
$name = $_GET['name'];
$year = $_GET['year'];
$jobid = $_GET['jobid'];

$skill = "";
$qry = $db->query("SELECT * from careers where id='$jobid'");
		if($qry->num_rows > 0){
			while ($row = mysqli_fetch_array($qry)) {
				$skill = $row['skills'];
			}
		}

$data = "";
if($year=="1" && $name=="Computer Science"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Skills</th>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
          <td rowspan="7">'.html_entity_decode($skill).'</td>
            <td><b>CSC 1. Introduction to Computer Science</b></td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CSC 1A. Introduction to Computer Science for Advanced Students.</b></td>
          <td>Yes</td>
          <td>Yes</td>
        </tr>
        <tr>
        <td><b>CSC 5. Personal Computing.</b></td>
        <td>Yes</td>
        <td>Yes</td>
      </tr>
    
         
    
          <tr>
          <td><b>CSC 8S. Self-Paced Introduction to Internet Technologies</b>
          </td>
          <td>Yes</td>
          <td>Yes</td>
        </tr>
    
        <tr>
        <td><b>CSC 10. Introduction to Programming Logic</b></td>
        <td>Yes</td>
        <td>Yes</td>
      </tr>
        <tr>
        <td><b>CSC 15. Programming Concepts and Methodology</b>
         </td>
        <td>Yes</td>
        <td>Yes</td>
      </tr>
    
      <tr>
        <td><b>CSC 20. Programming Concepts and Methodology</b>
          </td>
        <td>Yes</td>
        <td>Yes</td>
      </tr>
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}
else if($year=="2" && $name=="Computer Science"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Skills</th>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
          <td rowspan="7">'.html_entity_decode($skill).'</td>
            <td><b>CSC 22. Visual Programming in BASIC.</b></td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CSC 25. Introduction to C Programming.</b></td>
            <td>Yes</td>
            <td>No</td>
          </tr>
          <tr>
            <td><b>CSC 28. Discrete Structures for Computer Science</b></td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CSC 35. Introduction to Computer Architecture</b></td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CSC 60. Introduction to Systems Programming in UNIX.</b></td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CSC 80. Web Development with HTML/XHTML and Tools.</b></td>
          <td>Yes</td>
          <td>Yes</td>
        </tr>
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}
else if($year=="3" && $name=="Computer Science"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><b>CSC 110. Introduction to Programming Logic for Teachers.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CSC 111. Programming Concepts and Methodology for Teachers</b>
          </td>
          <td>Yes</td>
          <td>Yes</td>
            </tr>

            <tr>
          <td><b>CSC 112. Data Structures, Algorithms, and Software Engineering for Teachers</b>
          </td>
          <td>Yes</td>
          <td>Yes</td>
            </tr>

            <tr>
            <td><b>CSC 113. Computer Networking and Cyber Security for Teachers</b>
           </td>
            <td>Yes</td>
            <td>Yes</td>
              </tr>

              <tr>
              <td><b>CSC 114. Digital Evidence and Computer Crime</b>
              </td>
              <td>Yes</td>
              <td>Yes</td>
                </tr>

                <tr>
                <td><b>CSC 115. Internet Security</b>
               </td>
                <td>Yes</td>
                <td>Yes</td>
                  </tr>

                  <tr>
                  <td><b>CSC 116. Cyber Forensics</b>
                  </td>
                  <td>Yes</td>
                  <td>-</td>
                    </tr>

                    <tr>
                    <td><b>CSC 120. Web Server Administration.</b>
                   </td>
                    <td>Yes</td>
                    <td>Yes</td>
                      </tr>

                      <tr>
                      <td><b>CSC 121. Client-Side Web Programming</b>
                      </td>
                      <td>Yes</td>
                      <td>Yes</td>
                        </tr>

                        <tr>
                        <td><b>CSC 122. Web Database Applications</b>
                       </td>
                        <td>Yes</td>
                        <td>Yes</td>
                          </tr>

                          <tr>
                          <td><b>CSC 123. Web Application Development</b>
                          </td>
                          <td>Yes</td>
                          <td>Yes</td>
                            </tr>


                            <tr>
                            <td><b>CSC 126. 3D Computer Modeling.</b>
                           </td>
                            <td>Yes</td>
                            <td>Yes</td>
                              </tr>

                              <tr>
                              <td><b>CSC 127. 3D Computer Animation</b>
                             </td>
                              <td>-</td>
                              <td>Yes</td>
                                </tr>

                                <tr>
                                <td><b>CSC 130. Data Structures and Algorithm Analysis.</b>
                                </td>
                                <td>Yes</td>
                                <td>Yes</td>
                                  </tr>
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}

else if($year=="4" && $name=="Computer Science"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><b>CSC 140. Advanced Algorithm Design and Analysis</b>
            </td>
            <td>-</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CSC 142. Advanced Computer Organization.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CSC 148. Modeling and Experimental Design.</b>
          </td>
          <td>-</td>
          <td>-</td>
        </tr>
        <tr>
          <td><b>CSC 151. Compiler Construction</b>
          </td>
          <td>Yes</td>
          <td>-</td>
        </tr>
        <tr>
          <td><b>CSC 152. Cryptography</b>
          </td>
          <td>Yes</td>
          <td>-</td>
        </tr>
        <tr>
        <td><b>CSC 153. Computer Forensics Principles and Practices.</b>
        </td>
        <td>-</td>
        <td>Yes</td>
      </tr>

      <tr>
        <td><b>CSC 154. Computer System Attacks and Countermeasures.</b>
        </td>
        <td>Yes</td>
        <td>-</td>
      </tr>

      <tr>
        <td><b>CSC 155. Advanced Computer Graphics.</b>
       </td>
        <td>Yes</td>
        <td>-</td>
      </tr>

      <tr>
      <td><b>CSC 159. Operating System Pragmatics.</b>
      </td>
      <td>Yes</td>
      <td>Yes</td>
    </tr>

    <tr>
      <td><b>CSC 163. Parallel Programming with GPUs</b>
      </td>
      <td>Yes</td>
      <td>Yes</td>
    </tr>
          
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}

else if($year=="1" && $name=="Civil Engineering"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><b>CE 1. Civil Engineering Seminar.</b>
           </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CE 4. Engineering Graphics and CAD.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CE 9. Plane and Topographic Surveying.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CE 9L. Plane and Topographic Surveying Laboratory.</b>
            
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CE 100. Engineering Geology.</b>
            
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
         
          
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}
else if(($year=="2" || $year=="3") && $name=="Civil Engineering"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
         
          <tr>
            <td><b>CE 100. Engineering Geology.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
            <td><b>CE 101. Computer Applications in Civil Engineering.</b>
            </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CE 130. Water Resources Engineering.</b>
          </td>
          <td>Yes</td>
          <td>Yes</td>
        </tr>
        <tr>
        <td><b>CE 131. Hydrology.</b>
        </td>
        <td>Yes</td>
        <td>-</td>
      </tr>
      <tr>
        <td><b>CE 132. Groundwater Engineering.</b>
        </td>
        <td>-</td>
        <td>Yes</td>
      </tr>
      <tr>
        <td><b>CE 133. Design of Urban Water and Sewer Systems.</b>
        </td>
        <td>Yes</td>
        <td>-</td>
      </tr>
      <tr>
      <td><b>CE 134. Open Channel Hydraulics.</b>
      </td>
      <td>-</td>
      <td>Yes</td>
    </tr>
    <tr>
      <td><b>CE 140. Transportation Engineering.</b>
      </td>
      <td>Yes</td>
      <td>Yes</td>
    </tr>
       
          
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}
else if($year=="4" && $name=="Civil Engineering"){
    $data .= '<!DOCTYPE html>
    <html lang="en">
    <head>
      <title>Bootstrap Example</title>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    </head>
    <body>
    
    <div class="container">
      <h2>'.$name.' Course</h2>
      <table class="table table-bordered">
        <thead>
          <tr>
            <th>Subject Name</th>
            <th>Fall</th>
            <th>Spring</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td><b>CE 200. Civil Engineering Professional Writing</b>
           </td>
            <td>Yes</td>
            <td>Yes</td>
          </tr>
          <tr>
          <td><b>CE 230. Water Resources Planning.</b>
         </td>
          <td>Yes</td>
          <td>-</td>
        </tr>
        <tr>
          <td><b>CE 231. Hydrometeorology.</b>
          </td>
          <td>-</td>
          <td>Yes</td>
        </tr>

        <tr>
          <td><b>CE 232. Groundwater Hydrology.</b>
         </td>
          <td>-</td>
          <td>Yes</td>
        </tr>

        <tr>
          <td><b>CE 234. Advanced Engineering Hydraulics.</b>
         </td>
          <td>-</td>
          <td>Yes</td>
        </tr>

        <tr>
        <td><b>CE 235. Hydrologic Modeling.</b>
        </td>
        <td>-</td>
        <td>Yes</td>
      </tr>

      <tr>
        <td><b>CE 241. Analysis and Control of Traffic Systems.</b>
       </td>
        <td>-</td>
        <td>Yes</td>
      </tr>

      <tr>
        <td><b>CE 242. Transportation Planning.</b>
        </td>
        <td>Yes</td>
        <td>-</td>
      </tr>

      <tr>
        <td><b>CE 243. Traffic Flow Theory.</b>
       </td>
        <td>Yes</td>
        <td>-</td>
      </tr>
      <tr>
      <td><b>CE 260. Matrix Structural Analysis.</b>
     </td>
      <td>Yes</td>
      <td>-</td>
    </tr>
      <tr>
      <td><b>CE 261. Finite Element Analysis.</b>
      </td>
      <td>-</td>
      <td>Yes</td>
    </tr>
         
         
          
          
          
        </tbody>
      </table>
    </div>
    
    </body>
    </html>';
}

echo $data;



?>