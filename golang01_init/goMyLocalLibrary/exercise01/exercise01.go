package exercise01

import(
	"fmt"
	"net/http"
	"github.com/julienschmidt/httprouter"
)

func Exercise210113(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
	fmt.Fprintf(w, "動作確認")
}