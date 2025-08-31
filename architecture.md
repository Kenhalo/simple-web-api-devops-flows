```mermaid
graph TB
    A[GitHub Repository] --> B[GitHub Actions]
    B --> C{CI Pipeline}
    C --> D[ESLint Check]
    C --> E[Unit Tests]
    C --> F[Docker Build]
    C --> G[Trivy Security Scan]
    
    G --> H{CD Pipeline}
    H --> J[Push to Artifact Registry]
    J --> K[Deploy to Cloud Run]
    
    L[Terraform IaC] --> M[GCP APIs]
    L --> N[Artifact Registry]
    L --> O[Service Accounts]
    L --> P[IAM Roles]
    
    K --> Q[Live Service URL]
    Q --> R[Cloud Logging]
    Q --> S[Health Checks]
    
    %% Source Control
    style A fill:#2196F3,stroke:#1565C0,stroke-width:3px,color:#fff
    
    %% CI/CD Pipeline
    style B fill:#4CAF50,stroke:#2E7D32,stroke-width:3px,color:#fff
    style C fill:#FF9800,stroke:#E65100,stroke-width:3px,color:#fff
    style H fill:#FF9800,stroke:#E65100,stroke-width:3px,color:#fff
    
    %% CI Steps
    style D fill:#E3F2FD,stroke:#1976D2,stroke-width:2px,color:#000
    style E fill:#E3F2FD,stroke:#1976D2,stroke-width:2px,color:#000
    style F fill:#E3F2FD,stroke:#1976D2,stroke-width:2px,color:#000
    
    %% Security
    style G fill:#F44336,stroke:#C62828,stroke-width:3px,color:#fff
    
    %% Infrastructure
    style L fill:#9C27B0,stroke:#6A1B9A,stroke-width:3px,color:#fff
    style M fill:#E1BEE7,stroke:#7B1FA2,stroke-width:2px,color:#000
    style N fill:#E1BEE7,stroke:#7B1FA2,stroke-width:2px,color:#000
    style O fill:#E1BEE7,stroke:#7B1FA2,stroke-width:2px,color:#000
    style P fill:#E1BEE7,stroke:#7B1FA2,stroke-width:2px,color:#000
    
    %% CD Steps
    style J fill:#E8F5E8,stroke:#388E3C,stroke-width:2px,color:#000
    style K fill:#E8F5E8,stroke:#388E3C,stroke-width:2px,color:#000
    
    %% Production
    style Q fill:#4CAF50,stroke:#2E7D32,stroke-width:3px,color:#fff
    style R fill:#C8E6C9,stroke:#4CAF50,stroke-width:2px,color:#000
    style S fill:#C8E6C9,stroke:#4CAF50,stroke-width:2px,color:#000