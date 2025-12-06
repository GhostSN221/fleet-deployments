#!/bin/bash

echo "🚀 Deploying TaskFlow to Fleet..."

# Vérifier que nous sommes dans le bon dossier
if [ ! -f "fleet.yaml" ]; then
    echo "❌ Error: fleet.yaml not found. Run from taskflow-app directory."
    exit 1
fi

# Copier vers le repo Fleet
cp -r ./* ~/fleet-deployments/taskflow-app/

# Commit et push
cd ~/fleet-deployments
git add taskflow-app/
git commit -m "Deploy TaskFlow App v1.0.0"
git push origin main

echo "✅ Deployment triggered! Fleet will deploy in 60 seconds."
echo ""
echo "📊 Monitor deployment:"
echo "   kubectl get pods -n taskflow-production -w"
echo "   kubectl get svc -n taskflow-production"
echo ""
echo "🌐 Access URLs:"
echo "   Frontend: http://<cluster-ip>/"
echo "   API: http://<cluster-ip>/api/health"
