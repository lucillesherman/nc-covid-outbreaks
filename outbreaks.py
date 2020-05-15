import PyPDF2
import re
import pandas as pd

pdfFileObj = open('Weekly-COVID19-Ongoing-Outbreaks.pdf', 'rb')

# read the pdf
pdfReader = PyPDF2.PdfFileReader(pdfFileObj)



# CONVERT FIRST PAGE TO LISTS
firstpage = pdfReader.getPage(0).extractText()[2054:]
result = ''.join([i for i in firstpage if not i.isdigit()])
string = re.split(r'["\n"]', result)
numbers = re.findall(r'[0-9]+', firstpage)

cases = 'cases, deaths\n'
casescount = 1

facilities = 'facility, facility_county, facility_type\n'
facilitiescount = 1

### FIRST PAGE CASES 
for case in numbers:
    cases += case.strip() + ","
    casescount = casescount + 1
    if casescount == 3:
        cases += "\n"
        casescount = 1

### FIRST PAGE FACILITIES
for facility in string[0:7]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string[7:9]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string[9:12]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string[12:14]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += "\n" + facility.strip() + ","
for facility in string[14:16]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 3:
            facilities += "\n"
            facilitiescount = 1
for facility in string[16:25]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1

# LOAD SECOND PAGE
secondpage = pdfReader.getPage(1).extractText()[185:]
result2 = ''.join([i for i in secondpage if not i.isdigit()])
string2 = re.split(r'["\n"]', result2)
numbers2 = re.findall(r'[0-9]+', secondpage)

for case in numbers2:
    cases += case.strip() + ","
    casescount = casescount + 1
    if casescount == 3:
        cases += "\n"
        casescount = 1

for facility in string2[0:1]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[1:4]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," 
for facility in string2[4:5]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," 
for facility in string2[5:6]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += "\n" + facility.strip() + ","
for facility in string2[6:8]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[9:10]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += "\n" + facility.strip() + ","
for facility in string2[10:13]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 3:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[13:16]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[17:18]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += '"' + facility.strip() + '"' + ","
        facilitiescount = facilitiescount + 1
for facility in string2[18:37]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[37:38]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " " 
for facility in string2[38:41]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[41:54]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[54:55]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[55:57]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," 
for facility in string2[57:58]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," + "\n"
for facility in string2[58:59]:
    if re.match("Facility", facility):
        pass
    else:
        facilities += facility.strip() + " "
for facility in string2[59:60]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," 
for facility in string2[60:61]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[61:62]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," + "\n"
for facility in string2[62:63]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[63:78]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[78:79]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[79:82]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[82:83]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += "\n" + facility.strip() + ","
for facility in string2[83:84]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[84:85]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," + "\n"
for facility in string2[85:87]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[87:88]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," + "\n" 
for facility in string2[88:103]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[103:104]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[104:105]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ", "
for facility in string2[105:107]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string2[107:110]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string2[110:112]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string2[112:113]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string2[113:115]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string2[115:121]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1

thirdpage = pdfReader.getPage(2).extractText()[185:]
result3 = ''.join([i for i in thirdpage if not i.isdigit()])
string3 = re.split(r'["\n"]', result3)
numbers3 = re.findall(r'[0-9]+', thirdpage)

for case in numbers3:
    cases += case.strip() + ","
    casescount = casescount + 1
    if casescount == 3:
        cases += "\n"
        casescount = 1

for facility in string3[0:1]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[1:2]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string3[2:3]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string3[3:4]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + "," + "\n"
for facility in string3[4:6]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip()
facilities += ","
for facility in string3[6:8]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[8:11]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[11:12]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[12:13]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string3[13:15]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[15:17]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[17:18]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[18:19]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[19:20]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += '"' + facility.strip() + '"' + ","
for facility in string3[20:22]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[22:24]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string3[24:28]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[28:29]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[29:32]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[32:44]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[44:45]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[45:48]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[48:51]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[51:52]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[52:55]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[55:64]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[64:65]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[65:68]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[68:80]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[80:81]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[81:84]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[84:85]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[85:88]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[88:89]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[89:92]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[92:102]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
        facilitiescount = facilitiescount + 1
        if facilitiescount == 4:
            facilities += "\n"
            facilitiescount = 1
for facility in string3[102:103]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[103:104]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[104:106]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
for facility in string3[106:107]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + " "
for facility in string3[107:108]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
facilities += "\n"
for facility in string3[108:111]:
    if re.match("Facility", facility):
        pass
    else: 
        facilities += facility.strip() + ","
import csv
print(facilities)
with open('cases4-28.csv', 'w') as csv_file:
    csv_file.write(cases)

with open('facilities4-28.csv', 'w') as csv_file:
    csv_file.write(facilities)