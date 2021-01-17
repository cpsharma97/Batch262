 #!/bin/bash -x

read -p "Enter 1 for celceius to farhenhite and 2 farhenhite to celceius : " enter
DEG_CELCEIUS_TO_FARHENHITE=1;
DEG_FARHENHITE_TO_CELCIUS=2;

function temperatureconversion() {
		local enter="$1"
		case $enter in
				$DEG_CELCEIUS_TO_FARHENHITE)
					read degC
					degF=$(( $degC*((9/5)) + 32 ))
					echo "$degF"
					;;
				$DEG_FARHENHITE_TO_CELCIUS)
					read degF
					degC=$(( (($degF-32)) * 5/9 ))
					echo "$degC"
					;;
				*)
					echo "not acceptable"
					;;
		esac
                                  }

              temperatureconversion $enter 
