/**
 * Copyright (c) 2020 Weitian Leung
 *
 * This file is part of pywpsrpc.
 *
 * This file is distributed under the MIT License.
 * See the LICENSE file for details.
 *
*/

namespace ksoapi
{
    struct CalloutFormat : public ksoapi::_IMsoDispObj /Abstract/
    {
    public:
        virtual HRESULT AutomaticLength() = 0;

        virtual HRESULT CustomDrop(
            single Drop) = 0;

        virtual HRESULT CustomLength(
            single Length) = 0;

        virtual HRESULT PresetDrop(
            MsoCalloutDropType DropType) = 0;

        virtual HRESULT get_Accent(
            MsoTriState *Accent /Out/) = 0;

        virtual HRESULT put_Accent(
            MsoTriState Accent) = 0;

        virtual HRESULT get_Angle(
            MsoCalloutAngleType *Angle /Out/) = 0;

        virtual HRESULT put_Angle(
            MsoCalloutAngleType Angle) = 0;

        virtual HRESULT get_AutoAttach(
            MsoTriState *AutoAttach /Out/) = 0;

        virtual HRESULT put_AutoAttach(
            MsoTriState AutoAttach) = 0;

        virtual HRESULT get_AutoLength(
            MsoTriState *AutoLength /Out/) = 0;

        virtual HRESULT get_Border(
            MsoTriState *Border /Out/) = 0;

        virtual HRESULT put_Border(
            MsoTriState Border) = 0;

        virtual HRESULT get_Drop(
            single *Drop /Out/) = 0;

        virtual HRESULT get_DropType(
            MsoCalloutDropType *DropType /Out/) = 0;

        virtual HRESULT get_Gap(
            single *Gap /Out/) = 0;

        virtual HRESULT put_Gap(
            single Gap) = 0;

        virtual HRESULT get_Length(
            single *Length /Out/) = 0;

        virtual HRESULT get_Type(
            MsoCalloutType *Type /Out/) = 0;

        virtual HRESULT put_Type(
            MsoCalloutType Type) = 0;

        MsoTriState getAccent();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Accent(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Accent()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAccent(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Accent(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Accent()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Accent, get=getAccent, set=setAccent)

        MsoCalloutAngleType getAngle();
        %MethodCode
            ksoapi::MsoCalloutAngleType prop = (ksoapi::MsoCalloutAngleType)0;
            HRESULT hr = sipCpp->get_Angle(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Angle()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAngle(MsoCalloutAngleType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Angle(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Angle()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Angle, get=getAngle, set=setAngle)

        MsoTriState getAutoAttach();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoAttach(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoAttach()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setAutoAttach(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_AutoAttach(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_AutoAttach()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=AutoAttach, get=getAutoAttach, set=setAutoAttach)

        MsoTriState getAutoLength();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_AutoLength(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_AutoLength()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=AutoLength, get=getAutoLength)

        MsoTriState getBorder();
        %MethodCode
            ksoapi::MsoTriState prop = (ksoapi::MsoTriState)0;
            HRESULT hr = sipCpp->get_Border(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Border()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setBorder(MsoTriState prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Border(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Border()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Border, get=getBorder, set=setBorder)

        single getDrop();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Drop(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Drop()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Drop, get=getDrop)

        MsoCalloutDropType getDropType();
        %MethodCode
            ksoapi::MsoCalloutDropType prop = (ksoapi::MsoCalloutDropType)0;
            HRESULT hr = sipCpp->get_DropType(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_DropType()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=DropType, get=getDropType)

        single getGap();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Gap(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Gap()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setGap(single prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Gap(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Gap()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Gap, get=getGap, set=setGap)

        single getLength();
        %MethodCode
            ksoapi::single prop = 0;
            HRESULT hr = sipCpp->get_Length(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Length()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        %Property(name=Length, get=getLength)

        MsoCalloutType getType();
        %MethodCode
            ksoapi::MsoCalloutType prop = (ksoapi::MsoCalloutType)0;
            HRESULT hr = sipCpp->get_Type(&prop);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'get_Type()' failed with 0x%x", hr);
                return nullptr;
            }
            else
            {
                sipRes = prop;
            }
        %End

        PyObject* setType(MsoCalloutType prop);
        %MethodCode
            HRESULT hr = sipCpp->put_Type(a0);
            if (hr != S_OK)
            {
                PyErr_Format(PyExc_AttributeError,
                    "Call 'put_Type()' failed with 0x%x", hr);
                sipRes = nullptr;
            }
            else
            {
                Py_INCREF(Py_None);
                sipRes = Py_None;
            }
        %End

        %Property(name=Type, get=getType, set=setType)
    };
};
