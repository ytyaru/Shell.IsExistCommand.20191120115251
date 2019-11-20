Run() {
	. "$(cd $(dirname $0); pwd)/IsExistCmd.sh"
	IsExistCmd "存在確認したいコマンド名" && echo "存在したときの処理" || echo "存在しなかったときの処理"
	IsExistCmd diff && echo "ある"
	IsExistCmd diff && echo "ある" || echo "ない"
	! IsExistCmd aaaa && echo "ない"
	IsExistCmd diff && { echo "アル"; echo "アル"; } || { echo "ナイ"; echo "ナイ"; }
}
Run
