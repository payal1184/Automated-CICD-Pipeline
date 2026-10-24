# Base Image (Python 3.9 ची हलकी आवृत्ती)
FROM python:3.9-slim

# Working Directory सेट करा
WORKDIR /app

# Dependencies कॉपी करून इन्स्टॉल करा
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# बाकीचा सर्व ॲप्लिकेशन कोड कॉपी करा
COPY . .

# App चा Port 5000 ओपन करा
EXPOSE 5000

# App सुरू करण्याची मुख्य कमांड
CMD ["python", "app.py"]