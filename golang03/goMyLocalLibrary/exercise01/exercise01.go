package exercise01

import(
	"net/http"
	"text/template"

	"github.com/gorilla/mux"
)

func Exercise210113(w http.ResponseWriter, r *http.Request) {
	vars := mux.Vars(r)
	t, _ := template.ParseFiles("./static/index.html")
	t.Execute(w, vars["category"])
}