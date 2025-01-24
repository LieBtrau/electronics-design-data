## RMS calculation
### On continuous data
$$U_{rms}=\sqrt{\frac{1}{T}*\int_{0}^{T}u(t)^{2}dt}$$
$$I_{rms}=\sqrt{\frac{1}{T}*\int_{0}^{T}i(t)^{2}dt}$$

### On sampling data
$$X_{rms}=\sqrt{\frac{1}{n}*\sum_{i=1}^{n}x_{i}^{2}}$$  

This can be used to calculate the RMS value of the voltage and current.
```python	
# If we let this integrate over 1s, the result after the integration will be the RMS value of the signal.  
Vrms = sqrt(integral(V**2))
Irms = sqrt(integral(I**2))
```

## Apparent power calculation
$$S = U_{rms} * I_{rms}$$

## Real power calculation
### On continuous data
$$P=\frac{1}{T}*\int_{0}^{T}u(t)*i(t)dt$$

### On sampling data
```python	
# If we let this integrate over 1s, the result after the integration will be the real power of the signal.
P = integral(V*I) # [W]
```

## Total Power Factor calculation
$$PF = \frac{P}{S}$$

Remark that this is not the cos phi, but the total power factor.  For the cos phi, only the fundamental frequency is taken into account.