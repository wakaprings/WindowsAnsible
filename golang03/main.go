package main

import (
	"net/http"

	"./goMyLocalLibrary/exercise01"

	"github.com/gorilla/mux"
)

func main() {
    r := mux.NewRouter()

    // 静的ファイルを公開する場合
	r.PathPrefix("/static_js/").Handler(http.StripPrefix("/static_js/", http.FileServer(http.Dir("static_js/"))))

    server := &http.Server{
        Handler:      r,
        Addr:         "127.0.0.1:8080",
    }

	// 動作確認
	r.HandleFunc("/lesson210213/{category}", exercise01.Exercise210113)

	server.ListenAndServe()
}

