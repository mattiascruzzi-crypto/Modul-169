# Stage 1: Build stage
FROM python:3.9-slim AS builder
WORKDIR /app
COPY generate_files.py .
RUN python generate_files.py

# Stage 2: Runtime stage
FROM python:3.9-slim
WORKDIR /app
COPY --from=builder /app/\*.txt .
CMD ["cat", "file1.txt", "file2.txt", "file3.txt"]