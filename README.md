# EMAG2 Data

## **This is a simple repository that contains:**

  *a) A Fortran source code to select an area and collect all EMAG2 data for South America;*
  
  *b) EMAG2 data with a 0.05º of resolution.*
  
#### Files contain 1922801 rows and 3 columns (Longitude, Latitude and Magnetic anomaly)

### To collect a data, you open the emag2data.f90 file and change the minimum and maximum values for longitude and latitude (i.e. choose your area!), and then you run the .f90 file in your terminal, using the command bellow:

###### *gfortran emag2data.f90 -o anyname.x*
###### *./anyname.x*

Feel free to send doubts or question.

**nelsondelimar@gmail.com**
