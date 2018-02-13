#####################################################
# @file: process_tap_data.py                        #
# @author: Mir Ahmed                                #
# @detail: This program asks the user for two       #
# ranges of years and searches data in a file to    #
# collect necessary information and draw a          #
# scatter plot                                      #
# @date_created: 2/10/2018                          #
#####################################################

# to perform read/write operation
import csv
# to graph data
import matplotlib.pyplot as plt


def get_user_input():
    # boolean flag to exit while loop
    flag = True
    # this will contains the two years user has input as list items
    years = []

    while flag:
        year_range = input('Please enter a year range between 2000 and 2016 separated by hyphen(i.e. 2011-2016): ')
        years = year_range.split('-')

        if int(years[1]) > 2016:
            print('End year cannot be greater than 2016')
        elif int(years[0]) < 2000:
            print('Beginning year cannot be less than 2000')
        elif int(years[0]) > int(years[1]):
            print('Start with the beginning year first. For example "2011-2016". 2011 should be entered first')
        # else we are assuming that the user has put the years in correct format.
        else:
            flag = False
    return years


def get_user_input2(input1):
    # boolean flag to exit while loop
    flag = True
    # this will contains the two years user has input as list items
    years = []

    while flag:
        year_range = input('Please enter another year range between 2000 and 2016 separated by hyphen(i.e. 2011-2016): ')
        years = year_range.split('-')

        if int(years[1]) > 2016:
            print('End year cannot be greater than 2016')
        elif int(years[0]) < 2000:
            print('Beginning year cannot be less than 2000')
        elif int(years[0]) > int(years[1]):
            print('Start with the beginning year first. For example "2011-2016". 2011 should be entered first')
        # else we are assuming that the user has put the years in correct format.
        elif (int(input1[0]) >= int(years[0]) and int(input1[0]) <= int(years[1])) or (int(input1[1]) <= int(years[1]) and int(input1[1]) >= int(years[0])):
            print('The years overlap with the first input.')
        else:
            flag = False
    return years


def create_year_range(years):
    # a list that contains the all the years between the range in descending order.
    years_to_search = list(range(int(years[1]), int(years[0]) - 1, -1))
    # now cast each years into string since the years are of type string in the input file
    for i in range(len(years_to_search)):
        years_to_search[i] = str(years_to_search[i])
    return years_to_search


def prepare_data(filename, year_range):
    # creating a dictionary that contains the years as keys and values will be the headcounts(initialized with 0)
    # which will later be read from the input file
    headcount_dict = {}
    for years in year_range:
        headcount_dict[years] = 0

    with open(filename, 'r') as input_file:
        data = csv.reader(input_file)

        # we skip the first line since it does not start with the data we need.
        # then in order to break out of the loop, we check if the year read from
        # file is less than the beginning year user has typed.
        # finally to add the "head count", we just check if the year is still within range
        # note that the head count is found on index 13 of each line read from the file.
        for line in data:
            if line[0] == 'Academic Year':
                continue
            elif line[0] in year_range:
                headcount_dict[line[0]] += int(line[13])
        input_file.close()

        print('headcount map:', headcount_dict)

    # now we are going to prepare the parameters for the function draw_plot below
    # the years list will be the list of descending years
    # headcount_list contains the headcounts in that order. Check the "for loop below" to make sure
    headcount_list = []
    for y in year_range:
        headcount_list.append(headcount_dict[y])
    return headcount_list


def graph_data(years1, headcounts1, years2, headcounts2):
    label1 = str(years1[0]) + ' - ' + str(years1[-1])
    label2 = str(years2[0]) + ' - ' + str(years2[-1])
    plt.scatter(years1, headcounts1, label=label1, alpha=1.0)
    plt.scatter(years2, headcounts2, label=label2, alpha=0.6)
    plt.xlabel("Years")
    plt.ylabel("Head Counts")
    plt.title('Number of TAP Recipients')
    plt.text(0, 0, "The shaded part shows overlapped years")
    plt.legend()
    plt.show()


if __name__ == '__main__':
    years1 = get_user_input()
    years2 = get_user_input2(years1)
    print('year 1:', years1)
    print('year 2:', years2)
    ranges1 = create_year_range(years1)
    ranges2 = create_year_range(years2)
    print('ranges 1:', ranges1)
    print('ranges 2:', ranges2)
    data1 = prepare_data('tap.csv', ranges1)
    data2 = prepare_data('tap.csv', ranges2)
    print('data 1:', data1)
    print('data 2:', data2)
    graph_data(ranges1, data1, ranges2, data2)
