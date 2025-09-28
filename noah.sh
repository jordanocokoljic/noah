#!/usr/bin/env sh

toolchain="$1"
version="$2"
architecture="$3"

tmpl="$toolchain.$version.$architecture.tmpl"

{
	echo '#!/usr/bin/env sh'
	echo "mkdir -p '@tmp'"
	cat "./templates/$toolchain.txt"
	echo
	echo "rm -rf '@tmp'"
} > "$tmpl"

file="./generated/$toolchain.$version.$architecture.sh"
mkdir -p "$(dirname "$file")"
sed -e "s/@tmp/.$toolchain.noah/g" -e "s/@version/$version/g" -e "s/@arch/$architecture/g" "$tmpl" > "$file"
rm "$tmpl"
chmod +x "$file"
