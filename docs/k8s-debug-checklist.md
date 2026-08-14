# Kubernetes Debugging Checklist

Quick reference for common cluster issues.

## Pods stuck in Pending
- Check node resources: `kubectl describe node`
- Look for taints: `kubectl describe node | grep Taints`
- Verify PVCs are bound: `kubectl get pvc`

## CrashLoopBackOff
- View logs: `kubectl logs <pod> --previous`
- Check events: `kubectl describe pod <pod>`
- Inspect liveness/readiness probes in deployment

## ImagePullBackOff
- Confirm image tag exists
- Check registry credentials: `kubectl get secrets`
- Test pull locally: `docker pull <image>`

## Service not reachable
- Endpoints present? `kubectl get endpoints`
- Selector matches pod labels?
- Network policy blocking? `kubectl get netpol`

## Node NotReady
- Check kubelet: `systemctl status kubelet`
- Disk pressure? `kubectl describe node | grep Pressure`
- Reboot if needed, then validate

---
Add notes as you encounter new issues.