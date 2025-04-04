# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"66k..00","system":"readv2"},{"code":"H563100","system":"readv2"},{"code":"H431.00","system":"readv2"},{"code":"H433.00","system":"readv2"},{"code":"H563.00","system":"readv2"},{"code":"H563200","system":"readv2"},{"code":"C370900","system":"readv2"},{"code":"H55..00","system":"readv2"},{"code":"C370.00","system":"readv2"},{"code":"C370400","system":"readv2"},{"code":"Hyu5000","system":"readv2"},{"code":"H464200","system":"readv2"},{"code":"H563.13","system":"readv2"},{"code":"9OqCC00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-pulmonary-disease-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-pulmonary-disease-charlson-primary-care-fibrosing---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
