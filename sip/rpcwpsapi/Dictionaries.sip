/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace wpsapi
{
    struct Dictionaries : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **prop /Out/) = 0;

        virtual HRESULT get_Count(
            long *prop /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT get_Maximum(
            long *prop /Out/) = 0;

        virtual HRESULT get_ActiveCustomDictionary(
            Dictionary **prop /Out/) = 0;

        virtual HRESULT put_ActiveCustomDictionary(
            Dictionary *prop) = 0;

        virtual HRESULT Item(
            VARIANT *Index,
            Dictionary **prop /Out/) = 0;

        Dictionary* __getitem__(VARIANT *index) const;
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            if (sipCpp->Item(a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT Add(
            BSTR FileName,
            Dictionary **prop /Out/) = 0;

        virtual HRESULT ClearAll() = 0;

        Application* getApplication();
        %MethodCode
            wpsapi::Application *prop = nullptr;
            HRESULT hr = sipCpp->get_Application(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Application()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Application, get=getApplication)

        long getCount();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Count(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Count()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Count, get=getCount)

        long getMaximum();
        %MethodCode
            long prop = 0;
            HRESULT hr = sipCpp->get_Maximum(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Maximum()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Maximum, get=getMaximum)

        Dictionary* getActiveCustomDictionary();
        %MethodCode
            wpsapi::Dictionary *prop = nullptr;
            HRESULT hr = sipCpp->get_ActiveCustomDictionary(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_ActiveCustomDictionary()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setActiveCustomDictionary(Dictionary *prop);
        %MethodCode
            HRESULT hr = sipCpp->put_ActiveCustomDictionary(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_ActiveCustomDictionary()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=ActiveCustomDictionary, get=getActiveCustomDictionary, set=setActiveCustomDictionary)
    };
};
