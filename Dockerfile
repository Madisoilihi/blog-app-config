# Utiliser l'image officielle de Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers de l'application
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port sur lequel l'application va tourner
EXPOSE 5000

# Commande pour démarrer l'application
CMD ["python", "app.py"]

