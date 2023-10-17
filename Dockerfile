FROM python:3.9 as builder

LABEL MAINTAINER="marchik32@gmail.com"

WORKDIR /python-game

COPY app/app.py .

RUN echo -e "#!/bin/bash\npython /app/app.py" > /app/app && chmod +x /app/app

FROM python:3.9-slim

COPY --from=builder /app/app /usr/local/bin/

CMD ["app"]
