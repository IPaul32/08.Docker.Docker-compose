FROM python:3.9 as builder

LABEL MAINTAINER="marchik32@gmail.com"

WORKDIR /python-game

COPY app/app.py .

RUN echo -e "#!/bin/bash\npython /python-game/app.py" > /python-game/app && chmod +x /python-game/app

FROM python:3.9-slim

COPY --from=builder /python-game/app /usr/local/bin/

CMD ["app"]
