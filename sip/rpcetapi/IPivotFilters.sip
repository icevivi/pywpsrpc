/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace etapi
{
    struct IPivotFilters : public IDispatch /Abstract/
    {
    public:
        virtual HRESULT get_Application(
            Application **RHS /Out/) = 0;

        virtual HRESULT get_Creator(
            XlCreator *RHS /Out/) = 0;

        virtual HRESULT get__Default(
            VARIANT Index,
            PivotFilter **RHS /Out/) = 0;

        virtual HRESULT get_Item(
            VARIANT Index,
            PivotFilter **RHS /Out/) = 0;

        PivotFilter* __getitem__(VARIANT index) const;
        %MethodCode
            etapi::PivotFilter *prop = nullptr;
            if (sipCpp->get_Item(*a0, &prop) != S_OK)
                sipIsErr = 1;
            else
                sipRes = prop;
        %End

        virtual HRESULT get_Count(
            long *RHS /Out/) = 0;

        int __len__() const;
        %MethodCode
            long count = 0;
            if (sipCpp->get_Count(&count) != S_OK)
                count = 0;
            sipRes = count;
        %End

        virtual HRESULT Add(
            XlPivotFilterType Type,
            VARIANT DataField = argMissing2(),
            VARIANT Value1 = argMissing2(),
            VARIANT Value2 = argMissing2(),
            VARIANT Order = argMissing2(),
            VARIANT Name = argMissing2(),
            VARIANT Description = argMissing2(),
            VARIANT MemberPropertyField = argMissing2(),
            PivotFilter **RHS /Out/ = 0) = 0;

        virtual HRESULT Add2(
            XlPivotFilterType Type,
            VARIANT DataField = argMissing2(),
            VARIANT Value1 = argMissing2(),
            VARIANT Value2 = argMissing2(),
            VARIANT Order = argMissing2(),
            VARIANT Name = argMissing2(),
            VARIANT Description = argMissing2(),
            VARIANT MemberPropertyField = argMissing2(),
            VARIANT WholeDayFilter = argMissing2(),
            PivotFilter **RHS /Out/ = 0) = 0;

        Application* getApplication();
        %MethodCode
            etapi::Application *prop = nullptr;
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

        XlCreator getCreator();
        %MethodCode
            etapi::XlCreator prop = (etapi::XlCreator)0;
            HRESULT hr = sipCpp->get_Creator(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Creator()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Creator, get=getCreator)

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
    };
};
