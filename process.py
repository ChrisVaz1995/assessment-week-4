log_file = open("um-server-01.txt")

# I think what this code is doing is that it will loop through the files and split it by 3. 
# Then it will print out the line fro the log_file from the sales_reports(log_file)

# Changed the if day from Tuesday to Monday
def sales_reports(log_file):
    for line in log_file:
        line = line.rstrip()
        day = line[0:3]
        if day == "Mon":
            print(line)


sales_reports(log_file)
