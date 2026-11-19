status_code=$(curl -s -o /dev/null -w "%{http_code}" "https://brbnovo.brb.com.br/mobilidade/cartao-mobilidade/")

if [ "$status_code" -eq 503 ]; then
  notify-send "Erro: 503 !OK"
else
  echo "Sucesso BRB"
fi
