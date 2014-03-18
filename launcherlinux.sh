# Veuillez remplir la ligne ci dessous par 32 ou 64 selon votre OS,
# pour eviter tout soucis je met la valeur 32 par defaut.
OS="32"

echo "/--------------------------------"
echo "| Pour jouer en solo : tapez '1' "
echo "| Pour jouer en multi : tapez '2'"
echo "| Pour quitter tapez 'q'         "
echo "\--------------------------------"
echo "Choisissez votre option :"
read choix

case $choix in
    1)
       cp bootstrap/bootstrapsolo.config ../linux`$OS`/bootstrap.config
       ../linux`$OS`/starbound
       cp bootstrap/bootstrap.config ../linux`$OS`/bootstrap.config
       ;;
    2)
       git pull
       cp bootstrap/bootstrapmulti.config ../linux`$OS`/bootstrap.config
       ../linux`$OS`/starbound
       cp bootstrap/bootstrap.config ../linux`$OS`/bootstrap.config
       ;;
    q) 
       exit
       ;;
    *) 
       echo saisie incorecte
       sh launcherlinux.sh
       exit
       ;;
esac