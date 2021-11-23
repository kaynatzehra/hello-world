l=60
echo "convert length in ft to m "
float(nl)=(($l)/3.281)
b=40
echo "convert breadth in ft to m "
float(nb)=(($b)/3.281)
float(area)=$(($nl*$nb))
echo "area of rectangle is $area"