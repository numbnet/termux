#----------------------------------
# Create a directory if it doesn't exist
#------------------------------------
createDirectory() {
    if [ ! -d $1 ]
        then
        mkdir -p $1
    fi
}

#Вы можете вызвать указанную выше функцию как:
#$ createDirectory/tmp/fooDir/BarDir