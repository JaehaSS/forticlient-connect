# Connecting FortiVpn 

## Inputs
| Name         | Type   | Description |
|-------------|--------|-------------|
| VPN_IP      | String | VPN IP      |
| VPN_PORT    | String | VPN PORT    |
| VPN_USERNAME | String | VPN USERNAME |
| VPN_PASS | String | VPN PASSWORD |
## Example usage
```yaml
jobs:
  foriclient-setup:
  runs-on: ubuntu-22.04 # Currently 20.04 or 22.04 Supported
  steps:
    - name: fortclient-vpn
      uses: JaehaSS/forticlient-connect@1.0.0
      with:
        VPN_IP: ${{ secrets.VPN_IP }}
        VPN_PORT: ${{ secrets.VPN_PORT }}
        VPN_USERNAME: ${{ secrets.VPN_USERNAME }}
        VPN_PASS: ${{ secrets.VPN_PASS }}
```

## V2.0 - Dev
Using Dockerfile