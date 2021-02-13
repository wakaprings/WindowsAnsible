package exercise01

import(
	"net/http"
	"text/template"

	"github.com/julienschmidt/httprouter"
)

func Exercise210113(w http.ResponseWriter, r *http.Request, p httprouter.Params) {
	t, _ := template.ParseFiles("./static/index.html")
	t.Execute(w, "")
}