pemulung() {
    array=()
    while IFS= read -r baris
    do
        array+=("$baris")
    done < "$1"
}

echo -e "\n\nTes Koneksi All Server Cpanel"
pemulung "data/servercPanel.txt"
for wakwaw in "${array[@]}"
do
    echo -e "\n$wakwaw"
    ping -c 2 $wakwaw | tail -n 2
done

echo -e "\n\nTes Koneksi All Server Directadmin"
pemulung "data/serverDirectAdmin.txt"
for hai in "${array[@]}"
do
    echo -e "\n$hai"
    ping -c 2 $hai | tail -n 2
done

echo -e "\n\nTes Koneksi All Server Virtualizor"
pemulung "data/serverVirtualizor.txt"
for uwu in "${array[@]}"
do
    echo -e "\n$uwu"
    ping -c 2 $uwu | tail -n 2
done