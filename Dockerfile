# Gunakan Node.js versi 10.23.0-alpine sebagai base image
FROM node:10.23.0-alpine

# Set working directory di dalam kontainer
WORKDIR /app

# Salin seluruh konten proyek ke dalam kontainer
COPY . .

# Instal dependensi
RUN npm install

RUN npm install pm2 -g

# Expose port yang akan digunakan oleh aplikasi frontend
EXPOSE 3000

# Perintah yang akan dijalankan saat kontainer berjalan
CMD ["pm2-runtime", "ecosystem.config.js"]
