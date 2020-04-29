# ICGEM Data

## **This is a simple repository that contains:**

  *a) A Fortran source code to select an area and collect all ICGEM data from Eigen6C4 or XGM2016 functional;*
  
  *b) XGM2016 and EIGEN6C4 data files with a 0.125º of resolution.*
  
#### Files contain 4151521 rows and 11 columns. The columns are, in that order: Longitude, Latitude, Orthometric height, Topography and bathymetry from Etopo1, Geoid ondulation, Gravity field, Gravity Anomaly, Gravity Disturbance, FreeairAnomaly, Bouguer Anomaly and Isostatic Anomaly from Isostatic Moho from Airy model.

### To collect a data, you open the ICGEMDATA.f90 file and change the minimum and maximum values for longitude and latitude (i.e. choose your area!), and then you run the .f90 file in your terminal, using the command bellow:

###### *gfortran icgemdata.f90 -o anyname.x*
###### *./anyname.x*

Feel free to send doubts or question.

**nelsondelimar@gmail.com**
