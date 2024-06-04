# David Metcalfe, James Masters, Antonella Delmestri, Andrew Judge, Daniel Perry, Cheryl Zogg, Belinda Gabbe, Matthew Costa, 2024.

import sys, csv, re

codes = [{"code":"66YM.00","system":"readv2"},{"code":"8BMa000","system":"readv2"},{"code":"66Yg.00","system":"readv2"},{"code":"H37..00","system":"readv2"},{"code":"9Oi1.00","system":"readv2"},{"code":"9Oi4.00","system":"readv2"},{"code":"66YB100","system":"readv2"},{"code":"C370500","system":"readv2"},{"code":"9Oi..00","system":"readv2"},{"code":"1I70.00","system":"readv2"},{"code":"491 BT","system":"readv2"},{"code":"66YB.00","system":"readv2"},{"code":"H3y1.00","system":"readv2"},{"code":"5192CM","system":"readv2"},{"code":"H3...00","system":"readv2"},{"code":"H312.00","system":"readv2"},{"code":"9Oi0.00","system":"readv2"},{"code":"H3y..00","system":"readv2"},{"code":"66YS.00","system":"readv2"},{"code":"H3...11","system":"readv2"},{"code":"5199CL","system":"readv2"},{"code":"66YL.00","system":"readv2"},{"code":"H38..00","system":"readv2"},{"code":"8CMV.00","system":"readv2"},{"code":"H36..00","system":"readv2"},{"code":"H312200","system":"readv2"},{"code":"8CMW500","system":"readv2"},{"code":"9Oi2.00","system":"readv2"},{"code":"66Yh.00","system":"readv2"},{"code":"14B3.12","system":"readv2"},{"code":"H335.00","system":"readv2"},{"code":"H39..00","system":"readv2"},{"code":"38Dg.00","system":"readv2"},{"code":"679V.00","system":"readv2"},{"code":"8IEy.00","system":"readv2"},{"code":"66YB000","system":"readv2"},{"code":"8CR1.00","system":"readv2"},{"code":"Hyu3100","system":"readv2"},{"code":"9Oi3.00","system":"readv2"},{"code":"9Nk7000","system":"readv2"},{"code":"H3y0.00","system":"readv2"},{"code":"H3y..11","system":"readv2"},{"code":"66YD.00","system":"readv2"},{"code":"9NgP.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('chronic-pulmonary-disease-charlson-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["chronic-pulmonary-disease-charlson-primary-care-obstruct---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["chronic-pulmonary-disease-charlson-primary-care-obstruct---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["chronic-pulmonary-disease-charlson-primary-care-obstruct---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
