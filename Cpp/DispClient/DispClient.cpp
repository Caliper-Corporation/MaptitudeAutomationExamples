#include <atlbase.h>
#include <iostream>
#include <windows.h>

using namespace std;

int main() {
    // Initialize the COM library
    CoInitialize(NULL);

    // Create an instance of the desired COM object
    CComPtr<IDispatch> pDisp;
    HRESULT hr = pDisp.CoCreateInstance(L"Maptitude.AutomationServer");
    if (FAILED(hr)) {
        cout << "Failed to create COM object." << endl;
        CoUninitialize();
        return 1;
    }

    //--------------------------
    // Calling Coord method
    // -------------------------
    {
        const wchar_t* methodName = L"Coord";
        DISPID dispid;
        hr = pDisp->GetIDsOfNames(IID_NULL, (LPOLESTR*)(&methodName), 1, LOCALE_USER_DEFAULT, &dispid);
        if (FAILED(hr)) {
            cout << "Failed to get DISPID for the method." << endl;
            CoUninitialize();
            return 1;
        }

        // Invoke the Coord method using IDispatch::Invoke
        int x = 10;
        int y = 20;
        VARIANTARG args[2];
        args[0].vt = VT_I4;
        args[0].lVal = y;
        args[1].vt = VT_I4;
        args[1].lVal = x;
        DISPPARAMS dp = { args, NULL, 2, 0 };
        VARIANT result;
        VariantInit(&result);
        hr = pDisp->Invoke(dispid, IID_NULL, LOCALE_USER_DEFAULT, DISPATCH_METHOD, &dp, &result, NULL, NULL);
        if (SUCCEEDED(hr)) {
            cout << "Method call successful. Result: " << result.lVal << endl;
        }
        else {
            cout << "Failed to call the method." << endl;
        }

        // Clean up
        VariantClear(&result);
    }

    //--------------------------
    // Calling RunMacro method
    // -------------------------
    {
        const wchar_t* methodName = L"RunMacro";
        DISPID dispid;
        hr = pDisp->GetIDsOfNames(IID_NULL, (LPOLESTR*)&methodName, 1, LOCALE_USER_DEFAULT, &dispid);

        VARIANTARG args[3]; // Note: arguments are from right to left!
        VariantInit(&args[0]);
        VariantInit(&args[1]);
        VariantInit(&args[2]);

        args[2].vt = VT_BSTR;
        args[2].bstrVal = SysAllocString(L"OpenMap");

        args[1].vt = VT_BSTR;
        args[1].bstrVal = SysAllocString(L"C:\\Users\\wuping\\Documents\\Caliper\\Maptitude 2023\\Tutorial\\BMP_SVR.MAP");

        args[0].vt = VT_NULL;
        DISPPARAMS dp = { args, NULL, 3, 0 };

        VARIANT result;
        VariantInit(&result);
        hr = pDisp->Invoke(dispid, IID_NULL, LOCALE_USER_DEFAULT, DISPATCH_METHOD, &dp, &result, NULL, NULL);

        if (SUCCEEDED(hr)) {
            std::cout << "RunMacro method invoked successfully." << std::endl;
        }
        else {
            std::cout << "Failed to invoke RunMacro method." << std::endl;
        }

        VariantClear(&args[0]);
        VariantClear(&args[1]);
        VariantClear(&args[2]);
        VariantClear(&result);
    }

    pDisp.Release();
    CoUninitialize();

    return 0;
}
