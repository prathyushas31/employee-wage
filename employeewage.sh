<<<<<<< HEAD
<<<<<<< HEAD
isPartTime=1
isFullTime=2
maxHrsInMonth=10
empRatePerHr=20
numWorkingDays=20
<<<<<<< HEAD

totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours(){
	case $1 in
		$isPartTime)
			empHrs=4
			;;
		$isFullTime)
			empHrs=8
			;;
		*)
			empHrs=0
			;;
	esac
	echo $empHrs
=======
totalEmpHrs=0
totalWorkingDays=0

function getWorkingHours() {
case $1 in
	$isPartTime)
		empHrs=4
		;;
	$isFullTime)
		empHrs=8
		;;
	*)
	empHrs=0
	;;
esac
echo $empHrs
>>>>>>> UC8-store-the-daily-wage-along-with-total-wage
}

function calDailyWages(){
	totalWorkHrs=$1;
	wages=$(( $totalWorkHrs*$empRatePerHr ))
	echo $wages;
}
while [[ $totalEmpHrs -lt $maxHrsMonth && $totalWorkingDays -lt $numWorkingDays ]]
do
	totalWorkingDays=$(($totalWorkingDays+1))
	empHrs="$(getWorkingHours $(( RANDOM%3)) )"
	totalEmpHrs=$(($totalEmpHrs+$empHrs))
	empDailyWages[$totalWorkingDays]="$(calDailyWages $empHrs)"
done
totalSalary="$(calDailyWages $totalEmpHrs)"
echo "daily wages :"${empDailyWages[@]}
echo "All Keys :"${!empDailyWages[@]}




=======
 isPresent=1;
 randomCheck=$(( RANDOM%2 ));
 if [ $isPresent -eq $randomCheck ];
 then
   	echo "Employee is Present";
 else
   	echo "Employee is absent";
 fi
>>>>>>> UC1-check-whether-employee-is-present-or-absent
=======
 isPresent=1;
 randomCheck=$(( RANDOM%2 ));

 if [ $isPresent -eq $randomCheck ];
 then
    empRatePerHr=20;
	 empHrs=8;
	 salary=$(($empHrs*$empRatePerHr));
 else
	 salary=0;
 fi
>>>>>>> UC2-check-daily-employee-wage

