#!/bin/bash

# Argo CD 업그레이드 스크립트

# 네임스페이스 설정
NAMESPACE="argocd"

# Helm 차트 리포지토리 URL 설정 (필요 시)
HELM_REPO_URL="https://argoproj.github.io/argo-helm"
HELM_REPO_NAME="argo"

# values.yaml 파일 경로 설정
VALUES_FILE="argocd/values.yaml"

# Helm 차트 리포지토리 업데이트
echo "Updating Helm repositories..."
helm repo add $HELM_REPO_NAME $HELM_REPO_URL
helm repo update

# Argo CD 업그레이드
echo "Upgrading Argo CD..."
helm upgrade argocd $HELM_REPO_NAME/argo-cd -n $NAMESPACE -f $VALUES_FILE

# 업그레이드 상태 확인
echo "Checking upgrade status..."
kubectl get all -n $NAMESPACE

echo "Upgrade complete."
