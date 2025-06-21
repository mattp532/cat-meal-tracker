package config

import(
	"os"
	"fmt"
)
var(
	DatabaseURL string
	Env string
)
func InitConfig(){
	Env = os.Getenv("ENVIRONMENT")
	if Env == "local" {
		DatabaseURL = os.Getenv("DATABASE_URL_LOCAL")
		fmt.Println("Running in local mode")
	}else{{
		DatabaseURL = os.Getenv("DATABASE_URL_DOCKER")
		fmt.Println("Running in Docker mode")
	}}
}