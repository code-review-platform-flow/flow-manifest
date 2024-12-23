## ✨ ArgoCD GitOps Repository ✨

ArgoCD를 활용하여 Kubernetes 환경에서<br> 
✨ Application을 GitOps 방식 ✨으로 관리하기 위한 레포지토리입니다.
<br>
<br>
각 폴더는 개발 Application을 나타나며, <br>
Grafana와 같은 애플리케이션을 Helm with ArgoCD 방식을 사용하여 <br> 
✨ 선언적이며 버전 관리 ✨가 가능하도록 하였습니다.

## 프로젝트 구조
```
.
├── argocd/                  # ArgoCD 관련 설정 파일
├── flow-admin-dashboard-dev # Admin 대시보드 애플리케이션 (Dev 환경)
├── flow-admin-main-dev      # Admin 전용 서비스 애플리케이션 (Dev 환경)
├── flow-api-gateway-dev     # API Gateway 애플리케이션 (Dev 환경)
├── flow-batch-dev           # 배치 작업 애플리케이션 (Dev 환경) - 사용 X
├── flow-file-dev            # 파일 저장 애플리케이션 (Dev 환경)
├── flow-grafana             # Grafana 모니터링 (Helm with ArgoCD)
├── flow-hpa                 # Horizontal Pod Autoscaler 설정 - 사용 X
├── flow-main-dev            # 메인 서비스 애플리케이션 (Dev 환경)
├── flow-payment-dev         # 결제 시스템 애플리케이션 (Dev 환경)
├── flow-web-dev             # 웹 클라이언트 애플리케이션 (Dev 환경)
└── nginx/                   # Nginx Ingress 설정 - 사용 X
```
