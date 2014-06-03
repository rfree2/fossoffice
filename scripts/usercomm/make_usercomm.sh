

alice=kernelbuild
bob=user1
sysname=usercomm

function mkdir_mod() {
	mod=$1
	usr=$2
	dir=$3
	mkdir $dir
	chmod 000 $dir
	chown $usr $dir
	chmod $mod $dir
}

function usercomm_make_a_to_b() {
	alice=$1
	bob=$2
	echo "$alice to $bob"
	mkdir_mod 755 $alice /home/$alice.pub
	mkdir_mod 755 $alice /home/$alice.pub/$sysname
	mkdir_mod 755 $alice /home/$alice.pub/$sysname/to
	mkdir_mod 700 $alice /home/$alice.pub/$sysname/to/$bob

	dir="/home/$alice.pub/$sysname/to/$bob"
	setfacl  -m  ":u::-" $dir
	setfacl  -m  "default:u::-" $dir

	setfacl  -m  "u:$alice:rwX" $dir
	setfacl  -m  "default:u:$alice:rwX" $dir

	setfacl  -m  "u:$bob:rwX" $dir
	setfacl  -m  "default:u:$bob:rwX" $dir

	setfacl  -m  "default:m:rwX" $dir

	getfacl $dir

	echo "$bob to $alice"
	mkdir_mod 700 $bob /home/$bob.priv/
	mkdir_mod 700 $bob /home/$bob.priv/$sysname
	mkdir_mod 700 $bob /home/$bob.priv/$sysname/from

	ln -s /home/$alice.pub/$sysname/to/$bob /home/$bob.priv/$sysname/from/$alice
	echo "DONE"
	echo 
}

usercomm_make_a_to_b $alice $bob
usercomm_make_a_to_b $bob $alice


