#include <atlbase.h>
#include <iostream>
#include <windows.h>

#import "C:\\Program Files\\Maptitude 2023\\mapt.tlb"

#include "mapt.tlh"

using namespace std;
using namespace MaptitudeTypeLibrary;

int main() {
    // Initialize the COM library
    CoInitialize(NULL);

    // Create an instance of the desired COM object
    CComPtr<IMaptitude> pMapt;

    try {
        HRESULT hr = pMapt.CoCreateInstance(L"Maptitude.AutomationServer");
        if (FAILED(hr)) {
            throw std::runtime_error(_com_error(hr).ErrorMessage());
        }   

        // Calling Coord method  
        auto coord = pMapt->Coord(10, 20);

        // Calling RunMacro method      
        VARIANT opt_null;
        opt_null.vt = VT_NULL;

        pMapt->RunMacro(L"OpenMap", L"C:\\Users\\WXIN\\Documents\\Caliper\\Maptitude 2023\\Tutorial\\BMP_SVR.MAP", 
            /*NULL*/opt_null);
    }
    catch (_com_error& e) {
        std::cerr << "Caught _com_error: " << e.ErrorMessage() << std::endl;
    }
    catch (const std::exception& e) {
        std::cerr << "Error: " << e.what() << std::endl;
    }
    catch (...) {
        std::cerr << "Caught an unknown exception." << std::endl;
    }

    CoUninitialize();
    return 0;
}

