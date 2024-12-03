<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel ="stylesheet" href ="styles/connect.css">
    <title>Book a new Event</title>
  </head>

  <body>


    
  <div class="container">
    <header class="header">
      <h1 id="title" class="text-center">Book A New Event...</h1>
      <p id="description" class="text-center">
        YOU CAN DREAM IT.WE CAN MAKE IT!!!
      </p>
    </header>
    <div class="form-wrap">	
      <form id="survey-form" action="insertBooking" method="post">
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label id="name-label" for="name"><b>Name</b></label>
              <input type="text" name="name" id="name" placeholder="Enter your name" class="form-control" required>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label id="email-label" for="email"><b>Email</b></label>
              <input type="email" name="email" id="email" placeholder="Enter your email" class="form-control" required>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <label id="number-label" for="number"><b>Contact Number</b> </label>
              <input type="number" name="number" id="number"  class="form-control" placeholder="Enter your contact Number" >
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label id="name-label" for="name"><b> Event Name</b></label>
              <input type="text" name="eventName" id="eventName" placeholder="Enter your event name" class="form-control" required>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label id="name-label" for="name"><b> Date</b></label>
              <input type="date" name="date" id="date" placeholder="Enter your event Date" class="form-control" required>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label id="name-label" for="name"><b> Event Place</b></label>
              <input type="text" name="place" id="place" placeholder="Enter your event place" class="form-control" required>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label><b>Event Category</b></label>
              <select id="dropdown" name="category" class="form-control" required>
                <option disabled selected value>Select</option>
                <option value="none">None</option>
                <option value="Government & Coporate">Government & Corporate</option>
                <option value="Seminars & Conferences">Seminars & Conferences</option>
                <option value="Celebrations">Celebrations</option>

              </select>
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <label><b>Package</b></label>
              <select id="dropdown" name="packageType" class="form-control" required>
                <option disabled selected value>Select</option>
                <option value="funBlaster">Fun blaster</option>
                <option value="profCombo">Prof Combo</option>
                <option value="booster">Booster</option>
              </select>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-12">
            <div class="form-group">
              <label><b>Drop your Idea</b> </label>
              <textarea  id="idea" class="form-control" name="idea" placeholder="Enter your idea here..."></textarea>
            </div>
          </div>
        </div>
        
        <div class="row">
          <div class="col-md-4">
            <button type="submit" id="submit" class="btn btn-primary btn-block"><b>Submit</b></button>
          </div>
        </div>
  
      </form>
    </div>	
  </div>
</body>
</html>