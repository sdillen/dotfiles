" Description: Ansible specific
au BufRead,BufNewFile */roles/*.yaml set filetype=yaml.ansible
au BufRead,BufNewFile */ansible-roles/*.yaml set filetype=yaml.ansible

" Description: Golang specific
au FileType go set noexpandtab
au FileType go set shiftwidth=4
au FileType go set softtabstop=4
au FileType go set tabstop=4

" Description: C specific
au FileType c set noexpandtab
au FileType c set shiftwidth=2
au FileType c set softtabstop=2
au FileType c set tabstop=2

" Description: Markdown specific
au Filetype markdown set conceallevel=0
