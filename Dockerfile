# use an official lightweight python
FROM python:3.9-slim

#Set work directory
WORKDIR/app

# Copy only the necessary files
COPY requirements.txt .

#Install dependencies
RUN pip install --no cache-dir -r requirements.txt

# Copy project files
COPY . .

# Expose the port FsatApi runs on
EXPOSE 8000

# Run the FastApi api application
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "8000"]