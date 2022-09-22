" JAVA MUTIL PROS RUN
let pros = [
            \"mall4cloud-auth"
            \,"mall4cloud-biz"
            \,"mall4cloud-gateway"
            \,"mall4cloud-leaf"
            \]
            " \,"mall4cloud-multishop"
            " \,"mall4cloud-order"
            " \,"mall4cloud-payment"
            " \,"mall4cloud-platform"
            " \,"mall4cloud-product"
            " \,"mall4cloud-rbac"
            " \,"mall4cloud-search"
            " \,"mall4cloud-user"
            " \]

function! s:JavaRunCommand(pro)
    return 'java -jar '.a:pro.'/target/*.jar -Dspring.profiles.active dev'
endfunction

for pro in pros
let cmd ='FloatermNew --height=0.99 --width=0.85 --wintype=float --name='.pro.' --title='.pro.' --position=right '.<sid>JavaRunCommand(pro)
execute cmd
endfor


