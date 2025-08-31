```mermaid        
graph TB
    A[GitHub Repository] --> B[GitHub Actions]
    B --> C{CI Pipeline}
    C --> D[ESLint Check]
    C --> E[Unit Tests]
    C --> F[Docker Build]
    C --> G[Trivy Security Scan]
            
    G --> H{CD Pipeline}
    H --> I[Terraform Validate]
    H --> J[Push to Artifact Registry]
    J --> K[Deploy to Cloud Run]
            
    L[Terraform] --> M[GCP APIs]
    L --> N[Artifact Registry]
    L --> O[Service Accounts]
    L --> P[IAM Roles]
            
    K --> Q[Live Service URL]
    Q --> R[Cloud Logging]
    Q --> S[Health Checks]
            
    style A fill:#f9f,stroke:#333,stroke-width:2px
    style Q fill:#9f9,stroke:#333,stroke-width:2px
    style G fill:#ff9,stroke:#333,stroke-width:2px
    style L fill:#99f,stroke:#333,stroke-width:2px