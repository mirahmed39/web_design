#####################################################
# @file: process_tap_data.py                        #
# @author: Mir Ahmed                                #
# @detail: this program reads specific records of   #
# TAP recipients of the year 2016 and creates a pie #
# chart.                                            #
# @date_created: 2/10/2018                          #
#####################################################

# to perform read/write operation
import csv
# to graph data
import matplotlib.pyplot as plt


def fetch_data(filename, year):
    status = ['Married_No_Dependents', 'Dependent_Schedule', 'Independent_Schedule']
    status_dict = {status[0]: 0, status[1]: 0, status[2]: 0}

    with open(filename, 'r') as input_file:
        data = csv.reader(input_file)  # contains .csv formatted data

        # now we want to fetch all the records of the year 2016
        for line in data:
            if line[0] == year:
                if line[7] == status[0]:
                    status_dict[status[0]] += 1
                elif line[7] == status[1]:
                    status_dict[status[1]] += 1
                elif line[7] == status[2]:
                    status_dict[status[2]] += 1
    input_file.close()
    return status_dict


def draw_chart(chart_data):
    slices = [chart_data['Married_No_Dependents'], chart_data['Dependent_Schedule'], chart_data['Independent_Schedule']]
    labels = ['Married_No_Dependents', 'Dependent', 'Independent']
    colors = ['r', 'y', 'm']

    plt.pie(slices, labels=labels, autopct='%1.1f%%', colors=colors)
    plt.legend()
    plt.title('TAP Dependent Status in 2016')
    plt.show()


if __name__ == '__main__':
    processed_data = fetch_data('tap.csv', '2016')
    draw_chart(processed_data)
