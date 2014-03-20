BINDIR=$(dirname "$(readlink -fn "$0")")
cd "$BINDIR"

echo "/--------------------------------"
echo "| Pour jouer en solo : tapez '1' "
echo "| Pour jouer en multi : tapez '2'"
echo "| Pour quitter tapez 'q'         "
echo "\--------------------------------"
echo "Choisissez votre option :"
read choix

case $choix in
    1)
       cp bootstrap/bootstrapmacsolo.config ../Starbound.app/Contents/MacOS/bootstrap.config
       ../Starbound.app/Contents/MacOS/starbound
       cp bootstrap/bootstrapmac.config ../Starbound.app/Contents/MacOS/bootstrap.config
       ;;
    2)
       git pull
       cp bootstrap/bootstrapmacmulti.config ../Starbound.app/Contents/MacOS/bootstrap.config
       ../Starbound.app/Contents/MacOS/starbound
       cp bootstrap/bootstrapmac.config ../Starbound.app/Contents/MacOS/bootstrap.config
       ;;
    q) 
       exit
       ;;
    *) 
       echo saisie incorecte
       sh launchermac.sh
       exit
       ;;
esac