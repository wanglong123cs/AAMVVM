/**
 * generate by AAMVVM: https://github.com/HeadingMobile/AAMVVM
 */
package ${packageName};

import ${superClassFqcn};

<#if generateViewModel>
import ${packageName}.viewmodel.${shortName}ViewModel;
</#if>  

/**
 * description: ${fragmentClass}
 <#if generateViewModel>
 * @see ${shortName}ViewModel
 </#if>
 * @date ${.now?string("yyyy/MM/dd")}
 */
public class ${fragmentClass} extends BaseFragment<${fragmentClass}Binding>{

    <#if generateViewModel>
    private ${shortName}ViewModel  mViewModel;
    </#if>  

    @Override
    public int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override 
    public void initView() {
         <#if generateViewModel>
        //mViewModel = initViewModel();
        getMBinding.setVm(mViewModel);
        </#if>
    }

    @Override
    public void loadData(boolean isRefresh) {

    }
}

