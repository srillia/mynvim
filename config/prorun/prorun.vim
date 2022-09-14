let pros = [
            \"mall4cloud-auth"
            \,"mall4cloud-biz"
            \]
            " \,"mall4cloud-gateway"
            " \,"mall4cloud-leaf"
            " \,"mall4cloud-multishop"
            " \,"mall4cloud-order"
            " \,"mall4cloud-payment"
            " \,"mall4cloud-platform"
            " \,"mall4cloud-product"
            " \,"mall4cloud-rbac"
            " \,"mall4cloud-search"
            " \,"mall4cloud-user"
            " \]

for pro in pros
let cmd ='FloatermNew --height=0.99 --width=0.6 --wintype=float --name='.pro.' --title='.pro.' --position=right java -jar '.pro.'/target/*.jar -Dspring.profiles.active dev'
" let cmd ='FloatermNew --height=0.99 --width=0.6 --wintype=float --name='.pro.' --title='.pro.' --position=right pwd'
" echo cmd
execute cmd
endfor

" java -jar mall4cloud-biz/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-gateway/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-leaf/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-multishop/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-order/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-payment/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-platform/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-product/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-rbac/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-search/target/*.jar -Dspring.profiles.active dev
" java -jar mall4cloud-user/target/*.jar -Dspring.profiles.active dev
