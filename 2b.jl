using Printf
const MaxRegularHours = 40
const OvertimeFactor = 1.5
function calculatePay()
print("Hours worked? ")
hours = parse(Float64, readline())
print("Rate of pay? ")
rate = parse(Float64, readline())
if hours <= MaxRegularHours
regPay = hours*rate
ovtPay = 0
else
regPay = MaxRegularHours*rate
ovtPay = (hours-MaxRegularHours)*rate*OvertimeFactor
end
grossPay = regPay + ovtPay
@printf("\nRegular pay: \$%0.2f\n", regPay)
@printf("Overtime pay: \$%03.2f\n", ovtPay)
@printf("Gross pay: \$%0.2f\n", grossPay)
end
calculatePay()