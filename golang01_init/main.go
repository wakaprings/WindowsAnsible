package main

import (
	"net/http"

	"./goMyLocalLibrary/exercise01"

	"github.com/julienschmidt/httprouter"
)

func main() {
	// マルチプレクサ対応
	mux := httprouter.New()

	server := http.Server{
		Addr: "127.0.0.1:8080",
		// Handlerは指定しない -> DefaultServeMuxをハンドラとして利用
		Handler: mux,
	}

	// 動作確認
	mux.GET("/lesson210213/:name", exercise01.Exercise210113) // 関数をハンドラに変換して、DefaultServeMuxに登録

	server.ListenAndServe()
}

