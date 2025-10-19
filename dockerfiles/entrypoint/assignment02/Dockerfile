# use the README.md file for requirements to build this image
# If you get stuck, the answer/ directory has the solution
# This is a Python app, so you should start with the `python:slim` image. I always prefer slim images when available, as the default language images are usually too big and bloated for real-world use.

FROM python:slim

# Set the working directory to `/app`.

WORKDIR /app

# Python apps often keep their dependencies in a requirements.txt file, so let's copy that in first, so we can install dependencies before we copy all the other files in.

COPY requirements.txt .

# Install the dependencies with a run command for `pip install --no-cache-dir -r requirements.txt`

RUN pip install --no-cache-dir -r requirements.txt

# Now let's copy all files in after requirements are installed.

COPY . .

# This app requires persistant data, so lets create a volume statment for `/app/data`.

VOLUME [ "/app/data" ]

# Set the entrypoint to run the startup script `./docker-entrypoint.sh`.

ENTRYPOINT [ "./docker-entrypoint.sh" ]

# Set the cmd to start the uvicorn web server with `uvicorn main:app --host 0.0.0.0 --port 8000`.

CMD ["uvicorn","main:app","--host", "0.0.0.0","--port", "8000"]
