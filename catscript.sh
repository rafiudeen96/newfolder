cat << EOF
	cat can print multilines
	the \EOF defines the delimiter to use to the end of the strean
	when \EOF is found and not escaped cat will end
EOF

cat << EOF >&2
	You can also redirect to standard error
	Will only print on error exit code
EOF
exit 1
	
