//creating an array which contains all holidays according to the NYU calendar
const holidays = [
	['942017', 'Labor Day', 'September 4'],
	['1092017', 'Fall Recess', 'October 9'],
	['11222017', 'Thanksgiving Recess', 'November 22'],
	['11232017', 'Thanksgiving Recess', 'November 23'],
	['11242017', 'Thanksgiving Recess', 'November 24'],
	['11252017', 'Thanksgiving Recess', 'November 25'],
	['11262017', 'Thanksgiving Recess', 'November 26'],
	['12232017', 'Winter Recess for University Offices', 'December 23'],
	['12242017', 'Winter Recess for University Offices', 'December 24'],
	['12252017', 'Winter Recess for University Offices', 'December 25'],
	['12262017', 'Winter Recess for University Offices', 'December 26'],
	['12272017', 'Winter Recess for University Offices', 'December 27'],
	['12282017', 'Winter Recess for University Offices', 'December 28'],
	['12292017', 'Winter Recess for University Offices', 'December 29'],
	['12302017', 'Winter Recess for University Offices', 'December 30'],
	['12312017', 'Winter Recess for University Offices', 'December 31'],
	['112018', 'Winter Recess for University Offices', 'January 1'],
	['1152018', 'Birthday of Martin Luther King Jr.', 'January 15'],
	['2192018', 'President\'s Day', 'February 19'],
	['3122018', 'Spring Recess', 'March 12'],
	['3132018', 'Spring Recess', 'March 13'],
	['3142018', 'Spring Recess', 'March 14'],
	['3152018', 'Spring Recess', 'March 15'],
	['3162018', 'Spring Recess', 'March 16'],
	['3172018', 'Spring Recess', 'March 17'],
	['3182018', 'Spring Recess', 'March 18'],
	['5282018', 'Memorial Day', 'May 28'],
	['742018', 'Independence Day', 'July 4']
];

const holidayPictures = [
	['Labor Day', 'labor-day.jpeg'],
	['Fall Recess', 'fall-recess.jpg'],
	['Thanksgiving Recess', 'thanksgiving.jpeg'],
	['Winter Recess for University Offices', 'winter.jpeg'],
	['Birthday of Martin Luther King Jr.', 'martin.jpg'],
	['President\'s Day', 'presidents-day.jpg'],
	['Spring Recess', 'spring.jpeg'],
	['Memorial Day', 'memorial-day.jpeg'],
	['Independence Day', 'independence-day.jpg']
];
const months = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'];

function findHolidays() {
	const input = document.getElementById('date-input').value;
	const target = document.getElementById('output');
    const image = document.getElementById('holiday-image');
    let holidayName = "";
	const dateObj = new Date(input);
	const startDate = new Date(2017, 8, 1); // september 1st 2017
	const endDate = new Date(2018, 7, 31); // august 31st 2018
	if (dateObj >= startDate && dateObj <= endDate) {
        const formattedDate = "" + (dateObj.getMonth() + 1) + (dateObj.getDate() + 1) + dateObj.getFullYear();
        let output = months[dateObj.getMonth()] + " " + (dateObj.getDate() + 1) + " is not a school holiday at NYU";
        for (let i = 0; i < holidays.length; i++) {
            if (formattedDate === holidays[i][0]) {
                output = holidays[i][2] + " is " + holidays[i][1];
                holidayName = holidays[i][1];
                break;
            }
        }
        // check for the correct image
		let imageSrc = 'images/';
		for (let i = 0; i < holidayPictures.length; i++) {
            if (holidayPictures[i][0] === holidayName) {
            	imageSrc += holidayPictures[i][1];
			}
        }
        target.innerHTML = output;
        image.src = imageSrc; // images/labor-day.jpg
    } else
    	target.innerHTML = months[dateObj.getMonth()] + " " + (dateObj.getDate() + 1) + ", " + dateObj.getFullYear()+ " is not a valid day for this" +
			" Calendar Holiday Application";
}

// const uni_holidays = [
// 	// inside it would be arrays of length three
// 	// 1st item: date objcet of the holiday, name of the holiday, picture url.
// 	[new Date(2017, 8, 3), "Labor Day", "labor-day.jpeg"]
// ];

// function findHolidays2() {
// 	const input = document.getElementById('date-input').value;
// 	const target = document.getElementById('output');
//     const image = document.getElementById('holiday-image');
//     const labor = new Date(2017, 8, 3);
//     console.log("labor day input: month " + labor.getMonth() + " day " + labor.getDate() + " year " + labor.getFullYear());

//     const userDate = new Date(input);
//     console.log("user input: month " + userDate.getMonth() + " day " + userDate.getDate() + " year " + userDate.getFullYear());
//     const startDate = new Date(2017, 8, 1);
//     const endDate = new Date(2018, 7, 31);
//     if(userDate >= startDate && userDate <= endDate) {
//     	console.log("fall within range");
//     	// it falls within the range
//     	for(var i = 0; i < uni_holidays.length; i++) {
//     		if (userDate.getTime() == uni_holidays[i][0].getTime()) {
//     			console.log("found match");
//     			image.src = "images/" + uni_holidays[i][2];
//     			output.innerHTML = "it is " + uni_holidays[i][1];
//     		} else {
//     			console.log("could not find match");
//     		}
//     	}

//     } else {
//     	target.innerHTML = "Date does not fall within the range";
//     }
// }