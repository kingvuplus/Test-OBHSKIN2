#j00zek @2015


myDir=/usr/share/enigma2/MX_HQ8

MakeChanges(){
SkinName=$1
#Global screens

sed -i 's/\(render="Listbox".*\)foregroundColor="[a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Listbox".*\)foregroundColor="[#a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Listbox".*\)foregroundColor="[#0-9]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Listbox".*\)foregroundColor="[0-9]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Listbox".*\)alphatest="[a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Progress".*\)foregroundColor="[a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Progress".*\)foregroundColor="[#a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Progress".*\)foregroundColor="[#0-9]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Progress".*\)foregroundColor="[0-9]*"/\1/' $SkinName > /dev/null 2>&1
sed -i 's/\(render="Progress".*\)alphatest="[a-zA-Z_]*"/\1/' $SkinName > /dev/null 2>&1
#Other
sed -i '/name="anglePix"/d' $SkinName > /dev/null 2>&1
sed -i '/name="angleLabel"/d' $SkinName > /dev/null 2>&1
sed -i '/name="audioLabel"/d' $SkinName > /dev/null 2>&1
sed -i '/name="chapterLabel"/d' $SkinName > /dev/null 2>&1
sed -i '/name="subtitleLabel"/d' $SkinName > /dev/null 2>&1
}

MakeChanges $myDir/skin.xml

myDirs='allScreens allFonts allColors'

for mySubDir in $myDirs; do
	for skin in `ls $myDir/$mySubDir`; do
		echo Modyfing $skin
		MakeChanges $myDir/$mySubDir/$skin 
	done
done
