.class public abstract Lcom/android/internal/telephony/ITelephony$Stub;
.super Landroid/os/Binder;
.source "ITelephony.java"

# interfaces
.implements Lcom/android/internal/telephony/ITelephony;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ITelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ITelephony$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.ITelephony"

.field static final TRANSACTION_IsDomesticRoaming:I = 0x9e

.field static final TRANSACTION_IsInternationalRoaming:I = 0x9d

.field static final TRANSACTION_NSRI_requestProc:I = 0xc9

.field static final TRANSACTION_SimSlotActivation:I = 0xb2

.field static final TRANSACTION_SimSlotOnOff:I = 0xb1

.field static final TRANSACTION_answerRingingCall:I = 0x7

.field static final TRANSACTION_answerRingingCallForSubscriber:I = 0x8

.field static final TRANSACTION_calculateAkaResponse:I = 0xb7

.field static final TRANSACTION_calculateGbaBootstrappingResponse:I = 0xb8

.field static final TRANSACTION_calculateNafExternalKey:I = 0xb9

.field static final TRANSACTION_call:I = 0x3

.field static final TRANSACTION_callForSubscriber:I = 0x4

.field static final TRANSACTION_canChangeDtmfToneLength:I = 0x73

.field static final TRANSACTION_checkCarrierPrivilegesForPackage:I = 0x63

.field static final TRANSACTION_checkCarrierPrivilegesForPackageAnyPhone:I = 0x64

.field static final TRANSACTION_checkNSRIUSIMstate_int:I = 0xc8

.field static final TRANSACTION_dial:I = 0x1

.field static final TRANSACTION_dialForSubscriber:I = 0x2

.field static final TRANSACTION_disableDataConnectivity:I = 0x28

.field static final TRANSACTION_disableLocationUpdates:I = 0x25

.field static final TRANSACTION_disableLocationUpdatesForSubscriber:I = 0x26

.field static final TRANSACTION_enableDataConnectivity:I = 0x27

.field static final TRANSACTION_enableLocationUpdates:I = 0x23

.field static final TRANSACTION_enableLocationUpdatesForSubscriber:I = 0x24

.field static final TRANSACTION_enableVideoCalling:I = 0x71

.field static final TRANSACTION_endCall:I = 0x5

.field static final TRANSACTION_endCallForSubscriber:I = 0x6

.field static final TRANSACTION_factoryReset:I = 0x80

.field static final TRANSACTION_getActiveFgCallState:I = 0xd1

.field static final TRANSACTION_getActivePhoneType:I = 0x32

.field static final TRANSACTION_getActivePhoneTypeForSlot:I = 0x33

.field static final TRANSACTION_getAllCellInfo:I = 0x47

.field static final TRANSACTION_getAtr:I = 0x87

.field static final TRANSACTION_getCalculatedPreferredNetworkType:I = 0x55

.field static final TRANSACTION_getCallState:I = 0x2d

.field static final TRANSACTION_getCallStateForSlot:I = 0x2e

.field static final TRANSACTION_getCarrierPackageNamesForIntentAndPhone:I = 0x65

.field static final TRANSACTION_getCarrierPrivilegeStatus:I = 0x62

.field static final TRANSACTION_getCdmaEriIconIndex:I = 0x34

.field static final TRANSACTION_getCdmaEriIconIndexForSubscriber:I = 0x35

.field static final TRANSACTION_getCdmaEriIconMode:I = 0x36

.field static final TRANSACTION_getCdmaEriIconModeForSubscriber:I = 0x37

.field static final TRANSACTION_getCdmaEriText:I = 0x38

.field static final TRANSACTION_getCdmaEriTextForSubscriber:I = 0x39

.field static final TRANSACTION_getCdmaMdn:I = 0x60

.field static final TRANSACTION_getCdmaMin:I = 0x61

.field static final TRANSACTION_getCellLocation:I = 0x2a

.field static final TRANSACTION_getCellLocationBySubId:I = 0x2b

.field static final TRANSACTION_getCellNetworkScanResults:I = 0x59

.field static final TRANSACTION_getCurrentUATI:I = 0xa7

.field static final TRANSACTION_getDataActivity:I = 0x2f

.field static final TRANSACTION_getDataEnabled:I = 0x5d

.field static final TRANSACTION_getDataNetworkType:I = 0x40

.field static final TRANSACTION_getDataNetworkTypeForSubscriber:I = 0x41

.field static final TRANSACTION_getDataRoamingEnabled:I = 0x8a

.field static final TRANSACTION_getDataRoamingEnabledUsingSubID:I = 0x8b

.field static final TRANSACTION_getDataServiceState:I = 0x8f

.field static final TRANSACTION_getDataServiceStateUsingSubId:I = 0x90

.field static final TRANSACTION_getDataState:I = 0x30

.field static final TRANSACTION_getDataStateSimSlot:I = 0x31

.field static final TRANSACTION_getDefaultSim:I = 0x49

.field static final TRANSACTION_getDeviceId:I = 0x7c

.field static final TRANSACTION_getDeviceSoftwareVersionForSlot:I = 0x7e

.field static final TRANSACTION_getDeviceUAField:I = 0xcf

.field static final TRANSACTION_getDisable2g:I = 0xd3

.field static final TRANSACTION_getEuimid:I = 0xcc

.field static final TRANSACTION_getFeliCaUimLockStatus:I = 0x99

.field static final TRANSACTION_getHandsetInfo:I = 0xa9

.field static final TRANSACTION_getImei:I = 0x96

.field static final TRANSACTION_getImeiForSlot:I = 0x7d

.field static final TRANSACTION_getIpAddressFromLinkProp:I = 0xa1

.field static final TRANSACTION_getLgt3GDataStatus:I = 0xab

.field static final TRANSACTION_getLgtOzStartPage:I = 0xac

.field static final TRANSACTION_getLine1AlphaTagForDisplay:I = 0x68

.field static final TRANSACTION_getLine1NumberForDisplay:I = 0x67

.field static final TRANSACTION_getLocaleFromDefaultSim:I = 0x81

.field static final TRANSACTION_getLteCellInfo:I = 0xa6

.field static final TRANSACTION_getLteOnCdmaMode:I = 0x45

.field static final TRANSACTION_getLteOnCdmaModeForSubscriber:I = 0x46

.field static final TRANSACTION_getMeid:I = 0x95

.field static final TRANSACTION_getMergedSubscriberIds:I = 0x69

.field static final TRANSACTION_getMobileQualityInformation:I = 0xa0

.field static final TRANSACTION_getMultiSimForegroundPhoneId:I = 0xbf

.field static final TRANSACTION_getMultiSimLastRejectIncomingCallPhoneId:I = 0xbd

.field static final TRANSACTION_getNeighboringCellInfo:I = 0x2c

.field static final TRANSACTION_getNetworkType:I = 0x3e

.field static final TRANSACTION_getNetworkTypeForSubscriber:I = 0x3f

.field static final TRANSACTION_getPackagesWithCarrierPrivileges:I = 0x86

.field static final TRANSACTION_getPcscfAddress:I = 0x5e

.field static final TRANSACTION_getPhoneServiceState:I = 0xaa

.field static final TRANSACTION_getPreferredNetworkType:I = 0x56

.field static final TRANSACTION_getRadioAccessFamily:I = 0x70

.field static final TRANSACTION_getSdnAvailable:I = 0x9c

.field static final TRANSACTION_getServiceState:I = 0x8d

.field static final TRANSACTION_getServiceStateForSubscriber:I = 0x83

.field static final TRANSACTION_getServiceStateUsingSubId:I = 0x8e

.field static final TRANSACTION_getSimPinRetry:I = 0x97

.field static final TRANSACTION_getSimPinRetryForSubscriber:I = 0xae

.field static final TRANSACTION_getSimPukRetry:I = 0x9b

.field static final TRANSACTION_getSimPukRetryForSubscriber:I = 0xaf

.field static final TRANSACTION_getSubIdForPhoneAccount:I = 0x7f

.field static final TRANSACTION_getTetherApnRequired:I = 0x57

.field static final TRANSACTION_getTimeInfo:I = 0xa4

.field static final TRANSACTION_getVoiceMessageCount:I = 0x3c

.field static final TRANSACTION_getVoiceMessageCountForSubscriber:I = 0x3d

.field static final TRANSACTION_getVoiceNetworkTypeForSubscriber:I = 0x42

.field static final TRANSACTION_getVoicePhoneServiceState:I = 0x91

.field static final TRANSACTION_getVoicePhoneServiceStateUsingSubId:I = 0x92

.field static final TRANSACTION_getVoicemailRingtoneUri:I = 0x84

.field static final TRANSACTION_getWipiSysInfo:I = 0xa5

.field static final TRANSACTION_handlePinMmi:I = 0x1a

.field static final TRANSACTION_handlePinMmiForSubscriber:I = 0x1b

.field static final TRANSACTION_hasIccCard:I = 0x43

.field static final TRANSACTION_hasIccCardUsingSlotId:I = 0x44

.field static final TRANSACTION_iccCloseLogicalChannel:I = 0x4c

.field static final TRANSACTION_iccExchangeSimIO:I = 0x4f

.field static final TRANSACTION_iccOpenLogicalChannel:I = 0x4a

.field static final TRANSACTION_iccOpenLogicalChannelWithP2:I = 0x4b

.field static final TRANSACTION_iccTransmitApduBasicChannel:I = 0x4e

.field static final TRANSACTION_iccTransmitApduLogicalChannel:I = 0x4d

.field static final TRANSACTION_invokeOemRilRequestRaw:I = 0x6c

.field static final TRANSACTION_invokeOemRilRequestRawForSubscriber:I = 0xd2

.field static final TRANSACTION_isApnTypeAvailable:I = 0xca

.field static final TRANSACTION_isApnTypeAvailableUsingSubId:I = 0xcb

.field static final TRANSACTION_isDataConnectivityPossible:I = 0x29

.field static final TRANSACTION_isDualBTConnection:I = 0xc4

.field static final TRANSACTION_isHearingAidCompatibilitySupported:I = 0x76

.field static final TRANSACTION_isIdle:I = 0xe

.field static final TRANSACTION_isIdleForSubscriber:I = 0xf

.field static final TRANSACTION_isImsCall:I = 0xc0

.field static final TRANSACTION_isImsRegistered:I = 0x77

.field static final TRANSACTION_isOffhook:I = 0xa

.field static final TRANSACTION_isOffhookForSubscriber:I = 0xb

.field static final TRANSACTION_isRadioOn:I = 0x10

.field static final TRANSACTION_isRadioOnForSubscriber:I = 0x11

.field static final TRANSACTION_isRinging:I = 0xd

.field static final TRANSACTION_isRingingForSubscriber:I = 0xc

.field static final TRANSACTION_isSimFDNEnabled:I = 0x88

.field static final TRANSACTION_isSimFDNEnabledForSubscriber:I = 0x89

.field static final TRANSACTION_isTtyModeSupported:I = 0x75

.field static final TRANSACTION_isVideoCall:I = 0x94

.field static final TRANSACTION_isVideoCallingEnabled:I = 0x72

.field static final TRANSACTION_isVideoTelephonyAvailable:I = 0x7a

.field static final TRANSACTION_isVoicemailVibrationEnabled:I = 0x85

.field static final TRANSACTION_isVolteAvailable:I = 0x79

.field static final TRANSACTION_isWifiCallingAvailable:I = 0x78

.field static final TRANSACTION_isWorldPhone:I = 0x74

.field static final TRANSACTION_needMobileRadioShutdown:I = 0x6d

.field static final TRANSACTION_needsOtaServiceProvisioning:I = 0x3a

.field static final TRANSACTION_notifyMissedCall:I = 0xd5

.field static final TRANSACTION_notifyVoIPCallStateChangeIntoBT:I = 0xc3

.field static final TRANSACTION_nvReadItem:I = 0x51

.field static final TRANSACTION_nvResetConfig:I = 0x54

.field static final TRANSACTION_nvWriteCdmaPrl:I = 0x53

.field static final TRANSACTION_nvWriteItem:I = 0x52

.field static final TRANSACTION_prepareEmergencyCall:I = 0xd6

.field static final TRANSACTION_requestModemActivityInfo:I = 0x82

.field static final TRANSACTION_sendEnvelopeWithStatus:I = 0x50

.field static final TRANSACTION_sendRequestRawToRIL:I = 0xa8

.field static final TRANSACTION_sendRequestToRIL:I = 0x9f

.field static final TRANSACTION_setAirplaneMode:I = 0xce

.field static final TRANSACTION_setBTUserWantsAudioOn:I = 0xc1

.field static final TRANSACTION_setBTUserWantsSwitchAudio:I = 0xc2

.field static final TRANSACTION_setCellInfoListRate:I = 0x48

.field static final TRANSACTION_setDataEnabled:I = 0x5c

.field static final TRANSACTION_setDataRoamingEnabled:I = 0x8c

.field static final TRANSACTION_setDisable2g:I = 0xd4

.field static final TRANSACTION_setDmCmd:I = 0xad

.field static final TRANSACTION_setEPSLOCI:I = 0xbb

.field static final TRANSACTION_setGbaBootstrappingParams:I = 0xba

.field static final TRANSACTION_setImsRegistrationState:I = 0x5f

.field static final TRANSACTION_setLine1NumberForDisplayForSubscriber:I = 0x66

.field static final TRANSACTION_setMultiSimForegroundPhoneId:I = 0xbe

.field static final TRANSACTION_setMultiSimLastRejectIncomingCallPhoneId:I = 0xbc

.field static final TRANSACTION_setNetworkBand:I = 0xcd

.field static final TRANSACTION_setNetworkSelectionModeAutomatic:I = 0x58

.field static final TRANSACTION_setNetworkSelectionModeManual:I = 0x5a

.field static final TRANSACTION_setOperatorBrandOverride:I = 0x6a

.field static final TRANSACTION_setPreferredNetworkType:I = 0x5b

.field static final TRANSACTION_setRadio:I = 0x1e

.field static final TRANSACTION_setRadioCapability:I = 0x6f

.field static final TRANSACTION_setRadioForSubscriber:I = 0x1f

.field static final TRANSACTION_setRadioPower:I = 0x20

.field static final TRANSACTION_setRoamingOverride:I = 0x6b

.field static final TRANSACTION_setTransmitPower:I = 0x93

.field static final TRANSACTION_setUimRemoteLockStatus:I = 0x9a

.field static final TRANSACTION_setVoiceMailNumber:I = 0x3b

.field static final TRANSACTION_shutdownMobileRadios:I = 0x6e

.field static final TRANSACTION_silenceRinger:I = 0x9

.field static final TRANSACTION_sms_NSRI_decryptsms:I = 0xc6

.field static final TRANSACTION_sms_NSRI_decryptsmsintxside:I = 0xc7

.field static final TRANSACTION_sms_NSRI_encryptsms:I = 0xc5

.field static final TRANSACTION_startGlobalNetworkSearchTimer:I = 0xb3

.field static final TRANSACTION_startGlobalNoSvcChkTimer:I = 0xb5

.field static final TRANSACTION_startMobileQualityInformation:I = 0xa2

.field static final TRANSACTION_startVoiceLessOtaProvisioning:I = 0x7b

.field static final TRANSACTION_stopGlobalNetworkSearchTimer:I = 0xb4

.field static final TRANSACTION_stopGlobalNoSvcChkTimer:I = 0xb6

.field static final TRANSACTION_stopMobileQualityInformation:I = 0xa3

.field static final TRANSACTION_supplyPerso:I = 0xb0

.field static final TRANSACTION_supplyPin:I = 0x12

.field static final TRANSACTION_supplyPinForSubscriber:I = 0x13

.field static final TRANSACTION_supplyPinReportResult:I = 0x16

.field static final TRANSACTION_supplyPinReportResultForSubscriber:I = 0x17

.field static final TRANSACTION_supplyPuk:I = 0x14

.field static final TRANSACTION_supplyPukForSubscriber:I = 0x15

.field static final TRANSACTION_supplyPukReportResult:I = 0x18

.field static final TRANSACTION_supplyPukReportResultForSubscriber:I = 0x19

.field static final TRANSACTION_toggleRadioOnOff:I = 0x1c

.field static final TRANSACTION_toggleRadioOnOffForSubscriber:I = 0x1d

.field static final TRANSACTION_transmitIccAPDU:I = 0x98

.field static final TRANSACTION_updateServiceLocation:I = 0x21

.field static final TRANSACTION_updateServiceLocationForSubscriber:I = 0x22

.field static final TRANSACTION_validateMsisdn:I = 0xd0


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    const-string/jumbo v0, "com.android.internal.telephony.ITelephony"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/ITelephony$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 31
    if-nez p0, :cond_0

    .line 32
    return-object v1

    .line 34
    :cond_0
    const-string/jumbo v1, "com.android.internal.telephony.ITelephony"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 35
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/ITelephony;

    if-eqz v1, :cond_1

    .line 36
    check-cast v0, Lcom/android/internal/telephony/ITelephony;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 38
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ITelephony$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 42
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 65
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 46
    sparse-switch p1, :sswitch_data_0

    .line 2329
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 50
    :sswitch_0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 51
    const/4 v4, 0x1

    return v4

    .line 55
    :sswitch_1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 58
    .local v29, "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dial(Ljava/lang/String;)V

    .line 59
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    const/4 v4, 0x1

    return v4

    .line 64
    .end local v29    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 68
    .local v5, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 69
    .local v30, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->dialForSubscriber(ILjava/lang/String;)V

    .line 70
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    const/4 v4, 0x1

    return v4

    .line 75
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 79
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 80
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->call(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    const/4 v4, 0x1

    return v4

    .line 86
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 90
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 92
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 93
    .local v31, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->callForSubscriber(ILjava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 95
    const/4 v4, 0x1

    return v4

    .line 99
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->endCall()Z

    move-result v61

    .line 101
    .local v61, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    if-eqz v61, :cond_0

    const/4 v4, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v4, 0x1

    return v4

    .line 102
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 107
    .end local v61    # "_result":Z
    :sswitch_6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 110
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->endCallForSubscriber(I)Z

    move-result v61

    .line 111
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v61, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v4, 0x1

    return v4

    .line 112
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 117
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCall()V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v4, 0x1

    return v4

    .line 124
    :sswitch_8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 127
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->answerRingingCallForSubscriber(I)V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    const/4 v4, 0x1

    return v4

    .line 133
    .end local v5    # "_arg0":I
    :sswitch_9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->silenceRinger()V

    .line 135
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v4, 0x1

    return v4

    .line 140
    :sswitch_a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 143
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhook(Ljava/lang/String;)Z

    move-result v61

    .line 144
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    if-eqz v61, :cond_2

    const/4 v4, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    const/4 v4, 0x1

    return v4

    .line 145
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 150
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 154
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 155
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isOffhookForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 156
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    if-eqz v61, :cond_3

    const/4 v4, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v4, 0x1

    return v4

    .line 157
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 162
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 166
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 167
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRingingForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 168
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 169
    if-eqz v61, :cond_4

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    const/4 v4, 0x1

    return v4

    .line 169
    :cond_4
    const/4 v4, 0x0

    goto :goto_4

    .line 174
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 177
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRinging(Ljava/lang/String;)Z

    move-result v61

    .line 178
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v61, :cond_5

    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    const/4 v4, 0x1

    return v4

    .line 179
    :cond_5
    const/4 v4, 0x0

    goto :goto_5

    .line 184
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 187
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdle(Ljava/lang/String;)Z

    move-result v61

    .line 188
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v61, :cond_6

    const/4 v4, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v4, 0x1

    return v4

    .line 189
    :cond_6
    const/4 v4, 0x0

    goto :goto_6

    .line 194
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 198
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 199
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isIdleForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 200
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    if-eqz v61, :cond_7

    const/4 v4, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    const/4 v4, 0x1

    return v4

    .line 201
    :cond_7
    const/4 v4, 0x0

    goto :goto_7

    .line 206
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_10
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 209
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOn(Ljava/lang/String;)Z

    move-result v61

    .line 210
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v61, :cond_8

    const/4 v4, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    const/4 v4, 0x1

    return v4

    .line 211
    :cond_8
    const/4 v4, 0x0

    goto :goto_8

    .line 216
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_11
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 220
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 221
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 222
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    if-eqz v61, :cond_9

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v4, 0x1

    return v4

    .line 223
    :cond_9
    const/4 v4, 0x0

    goto :goto_9

    .line 228
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_12
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 231
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPin(Ljava/lang/String;)Z

    move-result v61

    .line 232
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    if-eqz v61, :cond_a

    const/4 v4, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    const/4 v4, 0x1

    return v4

    .line 233
    :cond_a
    const/4 v4, 0x0

    goto :goto_a

    .line 238
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_13
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 242
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 243
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 244
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    if-eqz v61, :cond_b

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    const/4 v4, 0x1

    return v4

    .line 245
    :cond_b
    const/4 v4, 0x0

    goto :goto_b

    .line 250
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_14
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 254
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 255
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v61

    .line 256
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    if-eqz v61, :cond_c

    const/4 v4, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 258
    const/4 v4, 0x1

    return v4

    .line 257
    :cond_c
    const/4 v4, 0x0

    goto :goto_c

    .line 262
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_15
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 264
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 266
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 268
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 269
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v61

    .line 270
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    if-eqz v61, :cond_d

    const/4 v4, 0x1

    :goto_d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    const/4 v4, 0x1

    return v4

    .line 271
    :cond_d
    const/4 v4, 0x0

    goto :goto_d

    .line 276
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_16
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 279
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResult(Ljava/lang/String;)[I

    move-result-object v63

    .line 280
    .local v63, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 282
    const/4 v4, 0x1

    return v4

    .line 286
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v63    # "_result":[I
    :sswitch_17
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 288
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 290
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 291
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPinReportResultForSubscriber(ILjava/lang/String;)[I

    move-result-object v63

    .line 292
    .restart local v63    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 293
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 294
    const/4 v4, 0x1

    return v4

    .line 298
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":[I
    :sswitch_18
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 302
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 303
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v63

    .line 304
    .restart local v63    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 306
    const/4 v4, 0x1

    return v4

    .line 310
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v63    # "_result":[I
    :sswitch_19
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 314
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 316
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 317
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPukReportResultForSubscriber(ILjava/lang/String;Ljava/lang/String;)[I

    move-result-object v63

    .line 318
    .restart local v63    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 320
    const/4 v4, 0x1

    return v4

    .line 324
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v63    # "_result":[I
    :sswitch_1a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 326
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 327
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmi(Ljava/lang/String;)Z

    move-result v61

    .line 328
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 329
    if-eqz v61, :cond_e

    const/4 v4, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 330
    const/4 v4, 0x1

    return v4

    .line 329
    :cond_e
    const/4 v4, 0x0

    goto :goto_e

    .line 334
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_1b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 338
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 339
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->handlePinMmiForSubscriber(ILjava/lang/String;)Z

    move-result v61

    .line 340
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 341
    if-eqz v61, :cond_f

    const/4 v4, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 342
    const/4 v4, 0x1

    return v4

    .line 341
    :cond_f
    const/4 v4, 0x0

    goto :goto_f

    .line 346
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_1c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOff()V

    .line 348
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    const/4 v4, 0x1

    return v4

    .line 353
    :sswitch_1d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 355
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 356
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->toggleRadioOnOffForSubscriber(I)V

    .line 357
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    const/4 v4, 0x1

    return v4

    .line 362
    .end local v5    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_10

    const/16 v39, 0x1

    .line 365
    .local v39, "_arg0":Z
    :goto_10
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadio(Z)Z

    move-result v61

    .line 366
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    if-eqz v61, :cond_11

    const/4 v4, 0x1

    :goto_11
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 368
    const/4 v4, 0x1

    return v4

    .line 364
    .end local v39    # "_arg0":Z
    .end local v61    # "_result":Z
    :cond_10
    const/16 v39, 0x0

    goto :goto_10

    .line 367
    .restart local v39    # "_arg0":Z
    .restart local v61    # "_result":Z
    :cond_11
    const/4 v4, 0x0

    goto :goto_11

    .line 372
    .end local v39    # "_arg0":Z
    .end local v61    # "_result":Z
    :sswitch_1f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 376
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_12

    const/16 v44, 0x1

    .line 377
    .local v44, "_arg1":Z
    :goto_12
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioForSubscriber(IZ)Z

    move-result v61

    .line 378
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 379
    if-eqz v61, :cond_13

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 380
    const/4 v4, 0x1

    return v4

    .line 376
    .end local v44    # "_arg1":Z
    .end local v61    # "_result":Z
    :cond_12
    const/16 v44, 0x0

    goto :goto_12

    .line 379
    .restart local v44    # "_arg1":Z
    .restart local v61    # "_result":Z
    :cond_13
    const/4 v4, 0x0

    goto :goto_13

    .line 384
    .end local v5    # "_arg0":I
    .end local v44    # "_arg1":Z
    .end local v61    # "_result":Z
    :sswitch_20
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_14

    const/16 v39, 0x1

    .line 387
    .restart local v39    # "_arg0":Z
    :goto_14
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioPower(Z)Z

    move-result v61

    .line 388
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 389
    if-eqz v61, :cond_15

    const/4 v4, 0x1

    :goto_15
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 390
    const/4 v4, 0x1

    return v4

    .line 386
    .end local v39    # "_arg0":Z
    .end local v61    # "_result":Z
    :cond_14
    const/16 v39, 0x0

    goto :goto_14

    .line 389
    .restart local v39    # "_arg0":Z
    .restart local v61    # "_result":Z
    :cond_15
    const/4 v4, 0x0

    goto :goto_15

    .line 394
    .end local v39    # "_arg0":Z
    .end local v61    # "_result":Z
    :sswitch_21
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocation()V

    .line 396
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    const/4 v4, 0x1

    return v4

    .line 401
    :sswitch_22
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 404
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->updateServiceLocationForSubscriber(I)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    const/4 v4, 0x1

    return v4

    .line 410
    .end local v5    # "_arg0":I
    :sswitch_23
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdates()V

    .line 412
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    const/4 v4, 0x1

    return v4

    .line 417
    :sswitch_24
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 420
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->enableLocationUpdatesForSubscriber(I)V

    .line 421
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 422
    const/4 v4, 0x1

    return v4

    .line 426
    .end local v5    # "_arg0":I
    :sswitch_25
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdates()V

    .line 428
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v4, 0x1

    return v4

    .line 433
    :sswitch_26
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 436
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->disableLocationUpdatesForSubscriber(I)V

    .line 437
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    const/4 v4, 0x1

    return v4

    .line 442
    .end local v5    # "_arg0":I
    :sswitch_27
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 443
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->enableDataConnectivity()Z

    move-result v61

    .line 444
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 445
    if-eqz v61, :cond_16

    const/4 v4, 0x1

    :goto_16
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 446
    const/4 v4, 0x1

    return v4

    .line 445
    :cond_16
    const/4 v4, 0x0

    goto :goto_16

    .line 450
    .end local v61    # "_result":Z
    :sswitch_28
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->disableDataConnectivity()Z

    move-result v61

    .line 452
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v61, :cond_17

    const/4 v4, 0x1

    :goto_17
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 454
    const/4 v4, 0x1

    return v4

    .line 453
    :cond_17
    const/4 v4, 0x0

    goto :goto_17

    .line 458
    .end local v61    # "_result":Z
    :sswitch_29
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDataConnectivityPossible()Z

    move-result v61

    .line 460
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v61, :cond_18

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/4 v4, 0x1

    return v4

    .line 461
    :cond_18
    const/4 v4, 0x0

    goto :goto_18

    .line 466
    .end local v61    # "_result":Z
    :sswitch_2a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 468
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 469
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v53

    .line 470
    .local v53, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 471
    if-eqz v53, :cond_19

    .line 472
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 473
    const/4 v4, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 478
    :goto_19
    const/4 v4, 0x1

    return v4

    .line 476
    :cond_19
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_19

    .line 482
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v53    # "_result":Landroid/os/Bundle;
    :sswitch_2b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 484
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 485
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellLocationBySubId(I)Landroid/os/Bundle;

    move-result-object v53

    .line 486
    .restart local v53    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    if-eqz v53, :cond_1a

    .line 488
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 489
    const/4 v4, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 494
    :goto_1a
    const/4 v4, 0x1

    return v4

    .line 492
    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1a

    .line 498
    .end local v5    # "_arg0":I
    .end local v53    # "_result":Landroid/os/Bundle;
    :sswitch_2c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 501
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v59

    .line 502
    .local v59, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 503
    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 504
    const/4 v4, 0x1

    return v4

    .line 508
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v59    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/NeighboringCellInfo;>;"
    :sswitch_2d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallState()I

    move-result v51

    .line 510
    .local v51, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 511
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 512
    const/4 v4, 0x1

    return v4

    .line 516
    .end local v51    # "_result":I
    :sswitch_2e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 519
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCallStateForSlot(I)I

    move-result v51

    .line 520
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 521
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 522
    const/4 v4, 0x1

    return v4

    .line 526
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_2f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataActivity()I

    move-result v51

    .line 528
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 529
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    const/4 v4, 0x1

    return v4

    .line 534
    .end local v51    # "_result":I
    :sswitch_30
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataState()I

    move-result v51

    .line 536
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 537
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 538
    const/4 v4, 0x1

    return v4

    .line 542
    .end local v51    # "_result":I
    :sswitch_31
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 544
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 545
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataStateSimSlot(I)I

    move-result v51

    .line 546
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 547
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 548
    const/4 v4, 0x1

    return v4

    .line 552
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_32
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 553
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneType()I

    move-result v51

    .line 554
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 555
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    const/4 v4, 0x1

    return v4

    .line 560
    .end local v51    # "_result":I
    :sswitch_33
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 563
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getActivePhoneTypeForSlot(I)I

    move-result v51

    .line 564
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 565
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    const/4 v4, 0x1

    return v4

    .line 570
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_34
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 572
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 573
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndex(Ljava/lang/String;)I

    move-result v51

    .line 574
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 575
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v4, 0x1

    return v4

    .line 580
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_35
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 584
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 585
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 586
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 587
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    const/4 v4, 0x1

    return v4

    .line 592
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_36
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 594
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 595
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconMode(Ljava/lang/String;)I

    move-result v51

    .line 596
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 597
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    const/4 v4, 0x1

    return v4

    .line 602
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_37
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 606
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 607
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 608
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 609
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 610
    const/4 v4, 0x1

    return v4

    .line 614
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_38
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 616
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 617
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 618
    .local v57, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 620
    const/4 v4, 0x1

    return v4

    .line 624
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_39
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 628
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 629
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 630
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 631
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 632
    const/4 v4, 0x1

    return v4

    .line 636
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_3a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needsOtaServiceProvisioning()Z

    move-result v61

    .line 638
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 639
    if-eqz v61, :cond_1b

    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 640
    const/4 v4, 0x1

    return v4

    .line 639
    :cond_1b
    const/4 v4, 0x0

    goto :goto_1b

    .line 644
    .end local v61    # "_result":Z
    :sswitch_3b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 648
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 650
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 651
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v61

    .line 652
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 653
    if-eqz v61, :cond_1c

    const/4 v4, 0x1

    :goto_1c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 654
    const/4 v4, 0x1

    return v4

    .line 653
    :cond_1c
    const/4 v4, 0x0

    goto :goto_1c

    .line 658
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_3c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCount()I

    move-result v51

    .line 660
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 662
    const/4 v4, 0x1

    return v4

    .line 666
    .end local v51    # "_result":I
    :sswitch_3d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 668
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 669
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceMessageCountForSubscriber(I)I

    move-result v51

    .line 670
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 671
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 672
    const/4 v4, 0x1

    return v4

    .line 676
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_3e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 677
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkType()I

    move-result v51

    .line 678
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 679
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 680
    const/4 v4, 0x1

    return v4

    .line 684
    .end local v51    # "_result":I
    :sswitch_3f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 686
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 688
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 689
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 690
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 691
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 692
    const/4 v4, 0x1

    return v4

    .line 696
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_40
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 699
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkType(Ljava/lang/String;)I

    move-result v51

    .line 700
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 701
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 702
    const/4 v4, 0x1

    return v4

    .line 706
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_41
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 708
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 710
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 711
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 712
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 713
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 714
    const/4 v4, 0x1

    return v4

    .line 718
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_42
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 720
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 722
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 723
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 724
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 725
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 726
    const/4 v4, 0x1

    return v4

    .line 730
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_43
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCard()Z

    move-result v61

    .line 732
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    if-eqz v61, :cond_1d

    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 734
    const/4 v4, 0x1

    return v4

    .line 733
    :cond_1d
    const/4 v4, 0x0

    goto :goto_1d

    .line 738
    .end local v61    # "_result":Z
    :sswitch_44
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 741
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->hasIccCardUsingSlotId(I)Z

    move-result v61

    .line 742
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 743
    if-eqz v61, :cond_1e

    const/4 v4, 0x1

    :goto_1e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 744
    const/4 v4, 0x1

    return v4

    .line 743
    :cond_1e
    const/4 v4, 0x0

    goto :goto_1e

    .line 748
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_45
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 750
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 751
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaMode(Ljava/lang/String;)I

    move-result v51

    .line 752
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 753
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    const/4 v4, 0x1

    return v4

    .line 758
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_46
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 760
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 762
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 763
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I

    move-result v51

    .line 764
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    const/4 v4, 0x1

    return v4

    .line 770
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_47
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 773
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;

    move-result-object v58

    .line 774
    .local v58, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 775
    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 776
    const/4 v4, 0x1

    return v4

    .line 780
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v58    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_48
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 782
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 783
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setCellInfoListRate(I)V

    .line 784
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 785
    const/4 v4, 0x1

    return v4

    .line 789
    .end local v5    # "_arg0":I
    :sswitch_49
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 790
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDefaultSim()I

    move-result v51

    .line 791
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 792
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 793
    const/4 v4, 0x1

    return v4

    .line 797
    .end local v51    # "_result":I
    :sswitch_4a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 799
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 801
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 802
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v54

    .line 803
    .local v54, "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 804
    if-eqz v54, :cond_1f

    .line 805
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 806
    const/4 v4, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 811
    :goto_1f
    const/4 v4, 0x1

    return v4

    .line 809
    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1f

    .line 815
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v54    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 817
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 819
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 821
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v47

    .line 822
    .local v47, "_arg2":B
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v47

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->iccOpenLogicalChannelWithP2(ILjava/lang/String;B)Landroid/telephony/IccOpenLogicalChannelResponse;

    move-result-object v54

    .line 823
    .restart local v54    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 824
    if-eqz v54, :cond_20

    .line 825
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    const/4 v4, 0x1

    move-object/from16 v0, v54

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/IccOpenLogicalChannelResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 831
    :goto_20
    const/4 v4, 0x1

    return v4

    .line 829
    :cond_20
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_20

    .line 835
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v47    # "_arg2":B
    .end local v54    # "_result":Landroid/telephony/IccOpenLogicalChannelResponse;
    :sswitch_4c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 839
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 840
    .local v6, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->iccCloseLogicalChannel(II)Z

    move-result v61

    .line 841
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 842
    if-eqz v61, :cond_21

    const/4 v4, 0x1

    :goto_21
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 843
    const/4 v4, 0x1

    return v4

    .line 842
    :cond_21
    const/4 v4, 0x0

    goto :goto_21

    .line 847
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_4d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 849
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 851
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 853
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 855
    .local v7, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 857
    .local v8, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 859
    .local v9, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 861
    .local v10, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 863
    .local v11, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, "_arg7":Ljava/lang/String;
    move-object/from16 v4, p0

    .line 864
    invoke-virtual/range {v4 .. v12}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 865
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 866
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 867
    const/4 v4, 0x1

    return v4

    .line 871
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v11    # "_arg6":I
    .end local v12    # "_arg7":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_4e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 873
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 875
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 877
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 879
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 881
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 883
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 885
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .local v20, "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 886
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccTransmitApduBasicChannel(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 887
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 888
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 889
    const/4 v4, 0x1

    return v4

    .line 893
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_4f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 895
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 897
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 899
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 901
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 903
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 905
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 907
    .restart local v10    # "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v20

    .restart local v20    # "_arg6":Ljava/lang/String;
    move-object/from16 v13, p0

    move v14, v5

    move v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    .line 908
    invoke-virtual/range {v13 .. v20}, Lcom/android/internal/telephony/ITelephony$Stub;->iccExchangeSimIO(IIIIIILjava/lang/String;)[B

    move-result-object v62

    .line 909
    .local v62, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 910
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 911
    const/4 v4, 0x1

    return v4

    .line 915
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v10    # "_arg5":I
    .end local v20    # "_arg6":Ljava/lang/String;
    .end local v62    # "_result":[B
    :sswitch_50
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 917
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 919
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 920
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sendEnvelopeWithStatus(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 921
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 922
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 923
    const/4 v4, 0x1

    return v4

    .line 927
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_51
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 929
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 930
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvReadItem(I)Ljava/lang/String;

    move-result-object v57

    .line 931
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 933
    const/4 v4, 0x1

    return v4

    .line 937
    .end local v5    # "_arg0":I
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_52
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 941
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 942
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteItem(ILjava/lang/String;)Z

    move-result v61

    .line 943
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 944
    if-eqz v61, :cond_22

    const/4 v4, 0x1

    :goto_22
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 945
    const/4 v4, 0x1

    return v4

    .line 944
    :cond_22
    const/4 v4, 0x0

    goto :goto_22

    .line 949
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_53
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 952
    .local v40, "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->nvWriteCdmaPrl([B)Z

    move-result v61

    .line 953
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 954
    if-eqz v61, :cond_23

    const/4 v4, 0x1

    :goto_23
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 955
    const/4 v4, 0x1

    return v4

    .line 954
    :cond_23
    const/4 v4, 0x0

    goto :goto_23

    .line 959
    .end local v40    # "_arg0":[B
    .end local v61    # "_result":Z
    :sswitch_54
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 961
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 962
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->nvResetConfig(I)Z

    move-result v61

    .line 963
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 964
    if-eqz v61, :cond_24

    const/4 v4, 0x1

    :goto_24
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 965
    const/4 v4, 0x1

    return v4

    .line 964
    :cond_24
    const/4 v4, 0x0

    goto :goto_24

    .line 969
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_55
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 971
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 972
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getCalculatedPreferredNetworkType(Ljava/lang/String;)I

    move-result v51

    .line 973
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 974
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 975
    const/4 v4, 0x1

    return v4

    .line 979
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_56
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 981
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 982
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getPreferredNetworkType(I)I

    move-result v51

    .line 983
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 984
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 985
    const/4 v4, 0x1

    return v4

    .line 989
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_57
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTetherApnRequired()I

    move-result v51

    .line 991
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 992
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 993
    const/4 v4, 0x1

    return v4

    .line 997
    .end local v51    # "_result":I
    :sswitch_58
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1000
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeAutomatic(I)V

    .line 1001
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1002
    const/4 v4, 0x1

    return v4

    .line 1006
    .end local v5    # "_arg0":I
    :sswitch_59
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1008
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1009
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;

    move-result-object v56

    .line 1010
    .local v56, "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1011
    if-eqz v56, :cond_25

    .line 1012
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1013
    const/4 v4, 0x1

    move-object/from16 v0, v56

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/telephony/CellNetworkScanResult;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1018
    :goto_25
    const/4 v4, 0x1

    return v4

    .line 1016
    :cond_25
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_25

    .line 1022
    .end local v5    # "_arg0":I
    .end local v56    # "_result":Lcom/android/internal/telephony/CellNetworkScanResult;
    :sswitch_5a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1024
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1026
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_26

    .line 1027
    sget-object v4, Lcom/android/internal/telephony/OperatorInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/internal/telephony/OperatorInfo;

    .line 1033
    :goto_26
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_27

    const/16 v48, 0x1

    .line 1034
    .local v48, "_arg2":Z
    :goto_27
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    move/from16 v2, v48

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;Z)Z

    move-result v61

    .line 1035
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1036
    if-eqz v61, :cond_28

    const/4 v4, 0x1

    :goto_28
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1037
    const/4 v4, 0x1

    return v4

    .line 1030
    .end local v48    # "_arg2":Z
    .end local v61    # "_result":Z
    :cond_26
    const/16 v43, 0x0

    .local v43, "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    goto :goto_26

    .line 1033
    .end local v43    # "_arg1":Lcom/android/internal/telephony/OperatorInfo;
    :cond_27
    const/16 v48, 0x0

    goto :goto_27

    .line 1036
    .restart local v48    # "_arg2":Z
    .restart local v61    # "_result":Z
    :cond_28
    const/4 v4, 0x0

    goto :goto_28

    .line 1041
    .end local v5    # "_arg0":I
    .end local v48    # "_arg2":Z
    .end local v61    # "_result":Z
    :sswitch_5b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1043
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1045
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1046
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->setPreferredNetworkType(II)Z

    move-result v61

    .line 1047
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1048
    if-eqz v61, :cond_29

    const/4 v4, 0x1

    :goto_29
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1049
    const/4 v4, 0x1

    return v4

    .line 1048
    :cond_29
    const/4 v4, 0x0

    goto :goto_29

    .line 1053
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v61    # "_result":Z
    :sswitch_5c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1055
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1057
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2a

    const/16 v44, 0x1

    .line 1058
    .restart local v44    # "_arg1":Z
    :goto_2a
    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataEnabled(IZ)V

    .line 1059
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1060
    const/4 v4, 0x1

    return v4

    .line 1057
    .end local v44    # "_arg1":Z
    :cond_2a
    const/16 v44, 0x0

    goto :goto_2a

    .line 1064
    .end local v5    # "_arg0":I
    :sswitch_5d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1067
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataEnabled(I)Z

    move-result v61

    .line 1068
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1069
    if-eqz v61, :cond_2b

    const/4 v4, 0x1

    :goto_2b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1070
    const/4 v4, 0x1

    return v4

    .line 1069
    :cond_2b
    const/4 v4, 0x0

    goto :goto_2b

    .line 1074
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_5e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1076
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1078
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1079
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v64

    .line 1080
    .local v64, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1081
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1082
    const/4 v4, 0x1

    return v4

    .line 1086
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v64    # "_result":[Ljava/lang/String;
    :sswitch_5f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2c

    const/16 v39, 0x1

    .line 1089
    .restart local v39    # "_arg0":Z
    :goto_2c
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setImsRegistrationState(Z)V

    .line 1090
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1091
    const/4 v4, 0x1

    return v4

    .line 1088
    .end local v39    # "_arg0":Z
    :cond_2c
    const/16 v39, 0x0

    goto :goto_2c

    .line 1095
    :sswitch_60
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1097
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1098
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v57

    .line 1099
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1100
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1101
    const/4 v4, 0x1

    return v4

    .line 1105
    .end local v5    # "_arg0":I
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_61
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1107
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1108
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v57

    .line 1109
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1110
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1111
    const/4 v4, 0x1

    return v4

    .line 1115
    .end local v5    # "_arg0":I
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_62
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1118
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPrivilegeStatus(I)I

    move-result v51

    .line 1119
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1120
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1121
    const/4 v4, 0x1

    return v4

    .line 1125
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_63
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1128
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v51

    .line 1129
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1130
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1131
    const/4 v4, 0x1

    return v4

    .line 1135
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_64
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1137
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1138
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I

    move-result v51

    .line 1139
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1140
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1141
    const/4 v4, 0x1

    return v4

    .line 1145
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_65
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2d

    .line 1148
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/content/Intent;

    .line 1154
    :goto_2d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1155
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v60

    .line 1156
    .local v60, "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1157
    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1158
    const/4 v4, 0x1

    return v4

    .line 1151
    .end local v6    # "_arg1":I
    .end local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2d
    const/16 v34, 0x0

    .local v34, "_arg0":Landroid/content/Intent;
    goto :goto_2d

    .line 1162
    .end local v34    # "_arg0":Landroid/content/Intent;
    :sswitch_66
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1166
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1168
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 1169
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v61

    .line 1170
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1171
    if-eqz v61, :cond_2e

    const/4 v4, 0x1

    :goto_2e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1172
    const/4 v4, 0x1

    return v4

    .line 1171
    :cond_2e
    const/4 v4, 0x0

    goto :goto_2e

    .line 1176
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_67
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1178
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1180
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1181
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1182
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1183
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1184
    const/4 v4, 0x1

    return v4

    .line 1188
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_68
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1192
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1193
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1194
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1195
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1196
    const/4 v4, 0x1

    return v4

    .line 1200
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_69
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1202
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1203
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v64

    .line 1204
    .restart local v64    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1205
    move-object/from16 v0, p3

    move-object/from16 v1, v64

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 1206
    const/4 v4, 0x1

    return v4

    .line 1210
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v64    # "_result":[Ljava/lang/String;
    :sswitch_6a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1214
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1215
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setOperatorBrandOverride(ILjava/lang/String;)Z

    move-result v61

    .line 1216
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1217
    if-eqz v61, :cond_2f

    const/4 v4, 0x1

    :goto_2f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    const/4 v4, 0x1

    return v4

    .line 1217
    :cond_2f
    const/4 v4, 0x0

    goto :goto_2f

    .line 1222
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_6b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1224
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1226
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 1228
    .local v15, "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v16

    .line 1230
    .local v16, "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v17

    .line 1232
    .local v17, "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v18

    .local v18, "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v13, p0

    move v14, v5

    .line 1233
    invoke-virtual/range {v13 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->setRoamingOverride(ILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z

    move-result v61

    .line 1234
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1235
    if-eqz v61, :cond_30

    const/4 v4, 0x1

    :goto_30
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    const/4 v4, 0x1

    return v4

    .line 1235
    :cond_30
    const/4 v4, 0x0

    goto :goto_30

    .line 1240
    .end local v5    # "_arg0":I
    .end local v15    # "_arg1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "_arg2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "_arg3":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "_arg4":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v61    # "_result":Z
    :sswitch_6c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1242
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 1244
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v46

    .line 1245
    .local v46, "_arg1_length":I
    if-gez v46, :cond_31

    .line 1246
    const/16 v45, 0x0

    .line 1251
    :goto_31
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRaw([B[B)I

    move-result v51

    .line 1252
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1253
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1255
    const/4 v4, 0x1

    return v4

    .line 1249
    .end local v51    # "_result":I
    :cond_31
    move/from16 v0, v46

    new-array v0, v0, [B

    move-object/from16 v45, v0

    .local v45, "_arg1":[B
    goto :goto_31

    .line 1259
    .end local v40    # "_arg0":[B
    .end local v45    # "_arg1":[B
    .end local v46    # "_arg1_length":I
    :sswitch_6d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1260
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->needMobileRadioShutdown()Z

    move-result v61

    .line 1261
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1262
    if-eqz v61, :cond_32

    const/4 v4, 0x1

    :goto_32
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    const/4 v4, 0x1

    return v4

    .line 1262
    :cond_32
    const/4 v4, 0x0

    goto :goto_32

    .line 1267
    .end local v61    # "_result":Z
    :sswitch_6e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1268
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->shutdownMobileRadios()V

    .line 1269
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1270
    const/4 v4, 0x1

    return v4

    .line 1274
    :sswitch_6f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1276
    sget-object v4, Landroid/telephony/RadioAccessFamily;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v41

    check-cast v41, [Landroid/telephony/RadioAccessFamily;

    .line 1277
    .local v41, "_arg0":[Landroid/telephony/RadioAccessFamily;
    move-object/from16 v0, p0

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setRadioCapability([Landroid/telephony/RadioAccessFamily;)V

    .line 1278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1279
    const/4 v4, 0x1

    return v4

    .line 1283
    .end local v41    # "_arg0":[Landroid/telephony/RadioAccessFamily;
    :sswitch_70
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1285
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1287
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1288
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getRadioAccessFamily(ILjava/lang/String;)I

    move-result v51

    .line 1289
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1290
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1291
    const/4 v4, 0x1

    return v4

    .line 1295
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_71
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_33

    const/16 v39, 0x1

    .line 1298
    .restart local v39    # "_arg0":Z
    :goto_33
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->enableVideoCalling(Z)V

    .line 1299
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1300
    const/4 v4, 0x1

    return v4

    .line 1297
    .end local v39    # "_arg0":Z
    :cond_33
    const/16 v39, 0x0

    goto :goto_33

    .line 1304
    :sswitch_72
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1306
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1307
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCallingEnabled(Ljava/lang/String;)Z

    move-result v61

    .line 1308
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1309
    if-eqz v61, :cond_34

    const/4 v4, 0x1

    :goto_34
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    const/4 v4, 0x1

    return v4

    .line 1309
    :cond_34
    const/4 v4, 0x0

    goto :goto_34

    .line 1314
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_73
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1315
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->canChangeDtmfToneLength()Z

    move-result v61

    .line 1316
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1317
    if-eqz v61, :cond_35

    const/4 v4, 0x1

    :goto_35
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1318
    const/4 v4, 0x1

    return v4

    .line 1317
    :cond_35
    const/4 v4, 0x0

    goto :goto_35

    .line 1322
    .end local v61    # "_result":Z
    :sswitch_74
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1323
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWorldPhone()Z

    move-result v61

    .line 1324
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1325
    if-eqz v61, :cond_36

    const/4 v4, 0x1

    :goto_36
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1326
    const/4 v4, 0x1

    return v4

    .line 1325
    :cond_36
    const/4 v4, 0x0

    goto :goto_36

    .line 1330
    .end local v61    # "_result":Z
    :sswitch_75
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1331
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isTtyModeSupported()Z

    move-result v61

    .line 1332
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1333
    if-eqz v61, :cond_37

    const/4 v4, 0x1

    :goto_37
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1334
    const/4 v4, 0x1

    return v4

    .line 1333
    :cond_37
    const/4 v4, 0x0

    goto :goto_37

    .line 1338
    .end local v61    # "_result":Z
    :sswitch_76
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1339
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isHearingAidCompatibilitySupported()Z

    move-result v61

    .line 1340
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1341
    if-eqz v61, :cond_38

    const/4 v4, 0x1

    :goto_38
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1342
    const/4 v4, 0x1

    return v4

    .line 1341
    :cond_38
    const/4 v4, 0x0

    goto :goto_38

    .line 1346
    .end local v61    # "_result":Z
    :sswitch_77
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1347
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsRegistered()Z

    move-result v61

    .line 1348
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1349
    if-eqz v61, :cond_39

    const/4 v4, 0x1

    :goto_39
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1350
    const/4 v4, 0x1

    return v4

    .line 1349
    :cond_39
    const/4 v4, 0x0

    goto :goto_39

    .line 1354
    .end local v61    # "_result":Z
    :sswitch_78
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1355
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isWifiCallingAvailable()Z

    move-result v61

    .line 1356
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1357
    if-eqz v61, :cond_3a

    const/4 v4, 0x1

    :goto_3a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v4, 0x1

    return v4

    .line 1357
    :cond_3a
    const/4 v4, 0x0

    goto :goto_3a

    .line 1362
    .end local v61    # "_result":Z
    :sswitch_79
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1363
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVolteAvailable()Z

    move-result v61

    .line 1364
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1365
    if-eqz v61, :cond_3b

    const/4 v4, 0x1

    :goto_3b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1366
    const/4 v4, 0x1

    return v4

    .line 1365
    :cond_3b
    const/4 v4, 0x0

    goto :goto_3b

    .line 1370
    .end local v61    # "_result":Z
    :sswitch_7a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoTelephonyAvailable()Z

    move-result v61

    .line 1372
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1373
    if-eqz v61, :cond_3c

    const/4 v4, 0x1

    :goto_3c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1374
    const/4 v4, 0x1

    return v4

    .line 1373
    :cond_3c
    const/4 v4, 0x0

    goto :goto_3c

    .line 1378
    .end local v61    # "_result":Z
    :sswitch_7b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1382
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1383
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->startVoiceLessOtaProvisioning(Ljava/lang/String;Ljava/lang/String;)V

    .line 1384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1385
    const/4 v4, 0x1

    return v4

    .line 1389
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    :sswitch_7c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1392
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1393
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1394
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    const/4 v4, 0x1

    return v4

    .line 1399
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_7d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1403
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1404
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getImeiForSlot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1405
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1406
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1407
    const/4 v4, 0x1

    return v4

    .line 1411
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_7e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1413
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1415
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1416
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceSoftwareVersionForSlot(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1417
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1418
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1419
    const/4 v4, 0x1

    return v4

    .line 1423
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_7f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1425
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3d

    .line 1426
    sget-object v4, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telecom/PhoneAccount;

    .line 1431
    :goto_3d
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v51

    .line 1432
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1433
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1434
    const/4 v4, 0x1

    return v4

    .line 1429
    .end local v51    # "_result":I
    :cond_3d
    const/16 v37, 0x0

    .local v37, "_arg0":Landroid/telecom/PhoneAccount;
    goto :goto_3d

    .line 1438
    .end local v37    # "_arg0":Landroid/telecom/PhoneAccount;
    :sswitch_80
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1440
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1441
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->factoryReset(I)V

    .line 1442
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1443
    const/4 v4, 0x1

    return v4

    .line 1447
    .end local v5    # "_arg0":I
    :sswitch_81
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1448
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLocaleFromDefaultSim()Ljava/lang/String;

    move-result-object v57

    .line 1449
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1450
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1451
    const/4 v4, 0x1

    return v4

    .line 1455
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_82
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1457
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_3e

    .line 1458
    sget-object v4, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/ResultReceiver;

    .line 1463
    :goto_3e
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->requestModemActivityInfo(Landroid/os/ResultReceiver;)V

    .line 1464
    const/4 v4, 0x1

    return v4

    .line 1461
    :cond_3e
    const/16 v36, 0x0

    .local v36, "_arg0":Landroid/os/ResultReceiver;
    goto :goto_3e

    .line 1468
    .end local v36    # "_arg0":Landroid/os/ResultReceiver;
    :sswitch_83
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1472
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 1473
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateForSubscriber(ILjava/lang/String;)Landroid/telephony/ServiceState;

    move-result-object v55

    .line 1474
    .local v55, "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1475
    if-eqz v55, :cond_3f

    .line 1476
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1477
    const/4 v4, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1482
    :goto_3f
    const/4 v4, 0x1

    return v4

    .line 1480
    :cond_3f
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3f

    .line 1486
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v55    # "_result":Landroid/telephony/ServiceState;
    :sswitch_84
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_40

    .line 1489
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telecom/PhoneAccountHandle;

    .line 1494
    :goto_40
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicemailRingtoneUri(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v52

    .line 1495
    .local v52, "_result":Landroid/net/Uri;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1496
    if-eqz v52, :cond_41

    .line 1497
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1498
    const/4 v4, 0x1

    move-object/from16 v0, v52

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1503
    :goto_41
    const/4 v4, 0x1

    return v4

    .line 1492
    .end local v52    # "_result":Landroid/net/Uri;
    :cond_40
    const/16 v38, 0x0

    .local v38, "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_40

    .line 1501
    .end local v38    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v52    # "_result":Landroid/net/Uri;
    :cond_41
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_41

    .line 1507
    .end local v52    # "_result":Landroid/net/Uri;
    :sswitch_85
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1509
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_42

    .line 1510
    sget-object v4, Landroid/telecom/PhoneAccountHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/telecom/PhoneAccountHandle;

    .line 1515
    :goto_42
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isVoicemailVibrationEnabled(Landroid/telecom/PhoneAccountHandle;)Z

    move-result v61

    .line 1516
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1517
    if-eqz v61, :cond_43

    const/4 v4, 0x1

    :goto_43
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1518
    const/4 v4, 0x1

    return v4

    .line 1513
    .end local v61    # "_result":Z
    :cond_42
    const/16 v38, 0x0

    .restart local v38    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    goto :goto_42

    .line 1517
    .end local v38    # "_arg0":Landroid/telecom/PhoneAccountHandle;
    .restart local v61    # "_result":Z
    :cond_43
    const/4 v4, 0x0

    goto :goto_43

    .line 1522
    .end local v61    # "_result":Z
    :sswitch_86
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1523
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPackagesWithCarrierPrivileges()Ljava/util/List;

    move-result-object v60

    .line 1524
    .restart local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1525
    move-object/from16 v0, p3

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1526
    const/4 v4, 0x1

    return v4

    .line 1530
    .end local v60    # "_result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_87
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1532
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1533
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getAtr(I)[B

    move-result-object v62

    .line 1534
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1535
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1536
    const/4 v4, 0x1

    return v4

    .line 1540
    .end local v5    # "_arg0":I
    .end local v62    # "_result":[B
    :sswitch_88
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1541
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimFDNEnabled()Z

    move-result v61

    .line 1542
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1543
    if-eqz v61, :cond_44

    const/4 v4, 0x1

    :goto_44
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1544
    const/4 v4, 0x1

    return v4

    .line 1543
    :cond_44
    const/4 v4, 0x0

    goto :goto_44

    .line 1548
    .end local v61    # "_result":Z
    :sswitch_89
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1550
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1551
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->isSimFDNEnabledForSubscriber(I)Z

    move-result v61

    .line 1552
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1553
    if-eqz v61, :cond_45

    const/4 v4, 0x1

    :goto_45
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    const/4 v4, 0x1

    return v4

    .line 1553
    :cond_45
    const/4 v4, 0x0

    goto :goto_45

    .line 1558
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_8a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1559
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabled()Z

    move-result v61

    .line 1560
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1561
    if-eqz v61, :cond_46

    const/4 v4, 0x1

    :goto_46
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1562
    const/4 v4, 0x1

    return v4

    .line 1561
    :cond_46
    const/4 v4, 0x0

    goto :goto_46

    .line 1566
    .end local v61    # "_result":Z
    :sswitch_8b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1568
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1569
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataRoamingEnabledUsingSubID(I)Z

    move-result v61

    .line 1570
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1571
    if-eqz v61, :cond_47

    const/4 v4, 0x1

    :goto_47
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v4, 0x1

    return v4

    .line 1571
    :cond_47
    const/4 v4, 0x0

    goto :goto_47

    .line 1576
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_8c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1578
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_48

    const/16 v39, 0x1

    .line 1579
    .restart local v39    # "_arg0":Z
    :goto_48
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDataRoamingEnabled(Z)V

    .line 1580
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1581
    const/4 v4, 0x1

    return v4

    .line 1578
    .end local v39    # "_arg0":Z
    :cond_48
    const/16 v39, 0x0

    goto :goto_48

    .line 1585
    :sswitch_8d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1586
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceState()I

    move-result v51

    .line 1587
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1588
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1589
    const/4 v4, 0x1

    return v4

    .line 1593
    .end local v51    # "_result":I
    :sswitch_8e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1595
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1596
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getServiceStateUsingSubId(I)I

    move-result v51

    .line 1597
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1598
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    const/4 v4, 0x1

    return v4

    .line 1603
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_8f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1604
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceState()I

    move-result v51

    .line 1605
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1606
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1607
    const/4 v4, 0x1

    return v4

    .line 1611
    .end local v51    # "_result":I
    :sswitch_90
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1613
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1614
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getDataServiceStateUsingSubId(I)I

    move-result v51

    .line 1615
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1616
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1617
    const/4 v4, 0x1

    return v4

    .line 1621
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_91
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicePhoneServiceState()Landroid/telephony/ServiceState;

    move-result-object v55

    .line 1623
    .restart local v55    # "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1624
    if-eqz v55, :cond_49

    .line 1625
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1626
    const/4 v4, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1631
    :goto_49
    const/4 v4, 0x1

    return v4

    .line 1629
    :cond_49
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_49

    .line 1635
    .end local v55    # "_result":Landroid/telephony/ServiceState;
    :sswitch_92
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1637
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1638
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getVoicePhoneServiceStateUsingSubId(I)Landroid/telephony/ServiceState;

    move-result-object v55

    .line 1639
    .restart local v55    # "_result":Landroid/telephony/ServiceState;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1640
    if-eqz v55, :cond_4a

    .line 1641
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1642
    const/4 v4, 0x1

    move-object/from16 v0, v55

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/telephony/ServiceState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1647
    :goto_4a
    const/4 v4, 0x1

    return v4

    .line 1645
    :cond_4a
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4a

    .line 1651
    .end local v5    # "_arg0":I
    .end local v55    # "_result":Landroid/telephony/ServiceState;
    :sswitch_93
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1653
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1654
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setTransmitPower(I)Z

    move-result v61

    .line 1655
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1656
    if-eqz v61, :cond_4b

    const/4 v4, 0x1

    :goto_4b
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1657
    const/4 v4, 0x1

    return v4

    .line 1656
    :cond_4b
    const/4 v4, 0x0

    goto :goto_4b

    .line 1661
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_94
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1662
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isVideoCall()Z

    move-result v61

    .line 1663
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1664
    if-eqz v61, :cond_4c

    const/4 v4, 0x1

    :goto_4c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1665
    const/4 v4, 0x1

    return v4

    .line 1664
    :cond_4c
    const/4 v4, 0x0

    goto :goto_4c

    .line 1669
    .end local v61    # "_result":Z
    :sswitch_95
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1670
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMeid()Ljava/lang/String;

    move-result-object v57

    .line 1671
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1672
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    const/4 v4, 0x1

    return v4

    .line 1677
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_96
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1678
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getImei()Ljava/lang/String;

    move-result-object v57

    .line 1679
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1680
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1681
    const/4 v4, 0x1

    return v4

    .line 1685
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_97
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1686
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetry()I

    move-result v51

    .line 1687
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1688
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1689
    const/4 v4, 0x1

    return v4

    .line 1693
    .end local v51    # "_result":I
    :sswitch_98
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1695
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1697
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 1699
    .restart local v6    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1701
    .restart local v7    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 1703
    .restart local v8    # "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 1705
    .restart local v9    # "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v27

    .local v27, "_arg5":Ljava/lang/String;
    move-object/from16 v21, p0

    move/from16 v22, v5

    move/from16 v23, v6

    move/from16 v24, v7

    move/from16 v25, v8

    move/from16 v26, v9

    .line 1706
    invoke-virtual/range {v21 .. v27}, Lcom/android/internal/telephony/ITelephony$Stub;->transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1707
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1708
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1709
    const/4 v4, 0x1

    return v4

    .line 1713
    .end local v5    # "_arg0":I
    .end local v6    # "_arg1":I
    .end local v7    # "_arg2":I
    .end local v8    # "_arg3":I
    .end local v9    # "_arg4":I
    .end local v27    # "_arg5":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_99
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1715
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1716
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getFeliCaUimLockStatus(I)I

    move-result v51

    .line 1717
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1718
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1719
    const/4 v4, 0x1

    return v4

    .line 1723
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_9a
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1725
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1726
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setUimRemoteLockStatus(I)I

    move-result v51

    .line 1727
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1728
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    const/4 v4, 0x1

    return v4

    .line 1733
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_9b
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1734
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetry()I

    move-result v51

    .line 1735
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1736
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    const/4 v4, 0x1

    return v4

    .line 1741
    .end local v51    # "_result":I
    :sswitch_9c
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1742
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getSdnAvailable()Z

    move-result v61

    .line 1743
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1744
    if-eqz v61, :cond_4d

    const/4 v4, 0x1

    :goto_4d
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1745
    const/4 v4, 0x1

    return v4

    .line 1744
    :cond_4d
    const/4 v4, 0x0

    goto :goto_4d

    .line 1749
    .end local v61    # "_result":Z
    :sswitch_9d
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1750
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsInternationalRoaming()Z

    move-result v61

    .line 1751
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1752
    if-eqz v61, :cond_4e

    const/4 v4, 0x1

    :goto_4e
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1753
    const/4 v4, 0x1

    return v4

    .line 1752
    :cond_4e
    const/4 v4, 0x0

    goto :goto_4e

    .line 1757
    .end local v61    # "_result":Z
    :sswitch_9e
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1758
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->IsDomesticRoaming()Z

    move-result v61

    .line 1759
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1760
    if-eqz v61, :cond_4f

    const/4 v4, 0x1

    :goto_4f
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1761
    const/4 v4, 0x1

    return v4

    .line 1760
    :cond_4f
    const/4 v4, 0x0

    goto :goto_4f

    .line 1765
    .end local v61    # "_result":Z
    :sswitch_9f
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1767
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 1769
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 1771
    .restart local v45    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 1772
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestToRIL([B[BI)I

    move-result v51

    .line 1773
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1774
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1775
    move-object/from16 v0, p3

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1776
    const/4 v4, 0x1

    return v4

    .line 1780
    .end local v7    # "_arg2":I
    .end local v40    # "_arg0":[B
    .end local v45    # "_arg1":[B
    .end local v51    # "_result":I
    :sswitch_a0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1781
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMobileQualityInformation()Ljava/lang/String;

    move-result-object v57

    .line 1782
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1783
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1784
    const/4 v4, 0x1

    return v4

    .line 1788
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_a1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1790
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1791
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getIpAddressFromLinkProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1792
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1793
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1794
    const/4 v4, 0x1

    return v4

    .line 1798
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_a2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1799
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startMobileQualityInformation()V

    .line 1800
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1801
    const/4 v4, 0x1

    return v4

    .line 1805
    :sswitch_a3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1806
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopMobileQualityInformation()V

    .line 1807
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1808
    const/4 v4, 0x1

    return v4

    .line 1812
    :sswitch_a4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1813
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getTimeInfo()Ljava/lang/String;

    move-result-object v57

    .line 1814
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1815
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1816
    const/4 v4, 0x1

    return v4

    .line 1820
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_a5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1821
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getWipiSysInfo()Ljava/lang/String;

    move-result-object v57

    .line 1822
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1823
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1824
    const/4 v4, 0x1

    return v4

    .line 1828
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_a6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1829
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLteCellInfo()Ljava/lang/String;

    move-result-object v57

    .line 1830
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1831
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1832
    const/4 v4, 0x1

    return v4

    .line 1836
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_a7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1837
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getCurrentUATI()[B

    move-result-object v62

    .line 1838
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1839
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1840
    const/4 v4, 0x1

    return v4

    .line 1844
    .end local v62    # "_result":[B
    :sswitch_a8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1846
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 1848
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_50

    .line 1849
    sget-object v4, Landroid/os/Message;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/Message;

    .line 1854
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sendRequestRawToRIL([BLandroid/os/Message;)I

    move-result v51

    .line 1855
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1856
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1857
    const/4 v4, 0x1

    return v4

    .line 1852
    .end local v51    # "_result":I
    :cond_50
    const/16 v42, 0x0

    .local v42, "_arg1":Landroid/os/Message;
    goto :goto_50

    .line 1861
    .end local v40    # "_arg0":[B
    .end local v42    # "_arg1":Landroid/os/Message;
    :sswitch_a9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1863
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1864
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 1865
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1866
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1867
    const/4 v4, 0x1

    return v4

    .line 1871
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_aa
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getPhoneServiceState()I

    move-result v51

    .line 1873
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1874
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1875
    const/4 v4, 0x1

    return v4

    .line 1879
    .end local v51    # "_result":I
    :sswitch_ab
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1881
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1882
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgt3GDataStatus(I)Ljava/lang/String;

    move-result-object v57

    .line 1883
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1884
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1885
    const/4 v4, 0x1

    return v4

    .line 1889
    .end local v5    # "_arg0":I
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_ac
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getLgtOzStartPage()Ljava/lang/String;

    move-result-object v57

    .line 1891
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1892
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1893
    const/4 v4, 0x1

    return v4

    .line 1897
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_ad
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1899
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1901
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 1902
    .restart local v45    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setDmCmd(I[B)[I

    move-result-object v63

    .line 1903
    .restart local v63    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1904
    move-object/from16 v0, p3

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 1905
    const/4 v4, 0x1

    return v4

    .line 1909
    .end local v5    # "_arg0":I
    .end local v45    # "_arg1":[B
    .end local v63    # "_result":[I
    :sswitch_ae
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1911
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1912
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPinRetryForSubscriber(I)I

    move-result v51

    .line 1913
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1914
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1915
    const/4 v4, 0x1

    return v4

    .line 1919
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_af
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1921
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1922
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->getSimPukRetryForSubscriber(I)I

    move-result v51

    .line 1923
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1924
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1925
    const/4 v4, 0x1

    return v4

    .line 1929
    .end local v5    # "_arg0":I
    .end local v51    # "_result":I
    :sswitch_b0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 1932
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->supplyPerso(Ljava/lang/String;)Z

    move-result v61

    .line 1933
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1934
    if-eqz v61, :cond_51

    const/4 v4, 0x1

    :goto_51
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1935
    const/4 v4, 0x1

    return v4

    .line 1934
    :cond_51
    const/4 v4, 0x0

    goto :goto_51

    .line 1939
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_b1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1941
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1942
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotOnOff(I)V

    .line 1943
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1944
    const/4 v4, 0x1

    return v4

    .line 1948
    .end local v5    # "_arg0":I
    :sswitch_b2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1950
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_52

    const/16 v39, 0x1

    .line 1951
    .restart local v39    # "_arg0":Z
    :goto_52
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->SimSlotActivation(Z)V

    .line 1952
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1953
    const/4 v4, 0x1

    return v4

    .line 1950
    .end local v39    # "_arg0":Z
    :cond_52
    const/16 v39, 0x0

    goto :goto_52

    .line 1957
    :sswitch_b3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1958
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNetworkSearchTimer()V

    .line 1959
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1960
    const/4 v4, 0x1

    return v4

    .line 1964
    :sswitch_b4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1965
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNetworkSearchTimer()V

    .line 1966
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1967
    const/4 v4, 0x1

    return v4

    .line 1971
    :sswitch_b5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1972
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->startGlobalNoSvcChkTimer()V

    .line 1973
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1974
    const/4 v4, 0x1

    return v4

    .line 1978
    :sswitch_b6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1979
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->stopGlobalNoSvcChkTimer()V

    .line 1980
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1981
    const/4 v4, 0x1

    return v4

    .line 1985
    :sswitch_b7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1987
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 1989
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 1990
    .restart local v45    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateAkaResponse([B[B)Ljava/lang/String;

    move-result-object v57

    .line 1991
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 1992
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1993
    const/4 v4, 0x1

    return v4

    .line 1997
    .end local v40    # "_arg0":[B
    .end local v45    # "_arg1":[B
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_b8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 1999
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 2001
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 2002
    .restart local v45    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v45

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;

    move-result-object v53

    .line 2003
    .restart local v53    # "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2004
    if-eqz v53, :cond_53

    .line 2005
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2006
    const/4 v4, 0x1

    move-object/from16 v0, v53

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2011
    :goto_53
    const/4 v4, 0x1

    return v4

    .line 2009
    :cond_53
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_53

    .line 2015
    .end local v40    # "_arg0":[B
    .end local v45    # "_arg1":[B
    .end local v53    # "_result":Landroid/os/Bundle;
    :sswitch_b9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2017
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 2018
    .restart local v40    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->calculateNafExternalKey([B)[B

    move-result-object v62

    .line 2019
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2020
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2021
    const/4 v4, 0x1

    return v4

    .line 2025
    .end local v40    # "_arg0":[B
    .end local v62    # "_result":[B
    :sswitch_ba
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2027
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 2029
    .restart local v40    # "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2031
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2032
    .restart local v31    # "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v30

    move-object/from16 v3, v31

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/ITelephony$Stub;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V

    .line 2033
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2034
    const/4 v4, 0x1

    return v4

    .line 2038
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v40    # "_arg0":[B
    :sswitch_bb
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2040
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v40

    .line 2041
    .restart local v40    # "_arg0":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setEPSLOCI([B)V

    .line 2042
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2043
    const/4 v4, 0x1

    return v4

    .line 2047
    .end local v40    # "_arg0":[B
    :sswitch_bc
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2049
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2050
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimLastRejectIncomingCallPhoneId(I)V

    .line 2051
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2052
    const/4 v4, 0x1

    return v4

    .line 2056
    .end local v5    # "_arg0":I
    :sswitch_bd
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2057
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimLastRejectIncomingCallPhoneId()I

    move-result v51

    .line 2058
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2059
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2060
    const/4 v4, 0x1

    return v4

    .line 2064
    .end local v51    # "_result":I
    :sswitch_be
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2066
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2067
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setMultiSimForegroundPhoneId(I)V

    .line 2068
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2069
    const/4 v4, 0x1

    return v4

    .line 2073
    .end local v5    # "_arg0":I
    :sswitch_bf
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2074
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getMultiSimForegroundPhoneId()I

    move-result v51

    .line 2075
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2076
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2077
    const/4 v4, 0x1

    return v4

    .line 2081
    .end local v51    # "_result":I
    :sswitch_c0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2082
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isImsCall()Z

    move-result v61

    .line 2083
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2084
    if-eqz v61, :cond_54

    const/4 v4, 0x1

    :goto_54
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2085
    const/4 v4, 0x1

    return v4

    .line 2084
    :cond_54
    const/4 v4, 0x0

    goto :goto_54

    .line 2089
    .end local v61    # "_result":Z
    :sswitch_c1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2091
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_55

    const/16 v39, 0x1

    .line 2092
    .restart local v39    # "_arg0":Z
    :goto_55
    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsAudioOn(Z)V

    .line 2093
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2094
    const/4 v4, 0x1

    return v4

    .line 2091
    .end local v39    # "_arg0":Z
    :cond_55
    const/16 v39, 0x0

    goto :goto_55

    .line 2098
    :sswitch_c2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->setBTUserWantsSwitchAudio()V

    .line 2100
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2101
    const/4 v4, 0x1

    return v4

    .line 2105
    :sswitch_c3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2106
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyVoIPCallStateChangeIntoBT()V

    .line 2107
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2108
    const/4 v4, 0x1

    return v4

    .line 2112
    :sswitch_c4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2113
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->isDualBTConnection()Z

    move-result v61

    .line 2114
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2115
    if-eqz v61, :cond_56

    const/4 v4, 0x1

    :goto_56
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2116
    const/4 v4, 0x1

    return v4

    .line 2115
    :cond_56
    const/4 v4, 0x0

    goto :goto_56

    .line 2120
    .end local v61    # "_result":Z
    :sswitch_c5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2124
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2126
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 2127
    .local v49, "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v49

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_encryptsms(ILjava/lang/String;[B)[B

    move-result-object v62

    .line 2128
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2129
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2130
    const/4 v4, 0x1

    return v4

    .line 2134
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v49    # "_arg2":[B
    .end local v62    # "_result":[B
    :sswitch_c6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2136
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2138
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 2139
    .restart local v45    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsms(I[B)[B

    move-result-object v62

    .line 2140
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2141
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2142
    const/4 v4, 0x1

    return v4

    .line 2146
    .end local v5    # "_arg0":I
    .end local v45    # "_arg1":[B
    .end local v62    # "_result":[B
    :sswitch_c7
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2150
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2152
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v49

    .line 2153
    .restart local v49    # "_arg2":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v49

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->sms_NSRI_decryptsmsintxside(ILjava/lang/String;[B)[B

    move-result-object v62

    .line 2154
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2155
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2156
    const/4 v4, 0x1

    return v4

    .line 2160
    .end local v5    # "_arg0":I
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v49    # "_arg2":[B
    .end local v62    # "_result":[B
    :sswitch_c8
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2161
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->checkNSRIUSIMstate_int()I

    move-result v51

    .line 2162
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2163
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2164
    const/4 v4, 0x1

    return v4

    .line 2168
    .end local v51    # "_result":I
    :sswitch_c9
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2170
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2172
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 2173
    .restart local v45    # "_arg1":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v5, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->NSRI_requestProc(I[B)[B

    move-result-object v62

    .line 2174
    .restart local v62    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2175
    move-object/from16 v0, p3

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2176
    const/4 v4, 0x1

    return v4

    .line 2180
    .end local v5    # "_arg0":I
    .end local v45    # "_arg1":[B
    .end local v62    # "_result":[B
    :sswitch_ca
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2182
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2183
    .restart local v29    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v61

    .line 2184
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2185
    if-eqz v61, :cond_57

    const/4 v4, 0x1

    :goto_57
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2186
    const/4 v4, 0x1

    return v4

    .line 2185
    :cond_57
    const/4 v4, 0x0

    goto :goto_57

    .line 2190
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_cb
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2194
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 2195
    .restart local v6    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/ITelephony$Stub;->isApnTypeAvailableUsingSubId(Ljava/lang/String;I)Z

    move-result v61

    .line 2196
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2197
    if-eqz v61, :cond_58

    const/4 v4, 0x1

    :goto_58
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    const/4 v4, 0x1

    return v4

    .line 2197
    :cond_58
    const/4 v4, 0x0

    goto :goto_58

    .line 2202
    .end local v6    # "_arg1":I
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v61    # "_result":Z
    :sswitch_cc
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getEuimid()Ljava/lang/String;

    move-result-object v57

    .line 2204
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2205
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2206
    const/4 v4, 0x1

    return v4

    .line 2210
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_cd
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2212
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2214
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2216
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 2217
    .restart local v7    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/internal/telephony/ITelephony$Stub;->setNetworkBand(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v51

    .line 2218
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2219
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2220
    const/4 v4, 0x1

    return v4

    .line 2224
    .end local v7    # "_arg2":I
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v51    # "_result":I
    :sswitch_ce
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2226
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2228
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_59

    const/16 v44, 0x1

    .line 2229
    .restart local v44    # "_arg1":Z
    :goto_59
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->setAirplaneMode(Ljava/lang/String;Z)I

    move-result v51

    .line 2230
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2231
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2232
    const/4 v4, 0x1

    return v4

    .line 2228
    .end local v44    # "_arg1":Z
    .end local v51    # "_result":I
    :cond_59
    const/16 v44, 0x0

    goto :goto_59

    .line 2236
    .end local v29    # "_arg0":Ljava/lang/String;
    :sswitch_cf
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2237
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDeviceUAField()Ljava/lang/String;

    move-result-object v57

    .line 2238
    .restart local v57    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2239
    move-object/from16 v0, p3

    move-object/from16 v1, v57

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2240
    const/4 v4, 0x1

    return v4

    .line 2244
    .end local v57    # "_result":Ljava/lang/String;
    :sswitch_d0
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2245
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->validateMsisdn()I

    move-result v51

    .line 2246
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2247
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2248
    const/4 v4, 0x1

    return v4

    .line 2252
    .end local v51    # "_result":I
    :sswitch_d1
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2253
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getActiveFgCallState()Z

    move-result v61

    .line 2254
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2255
    if-eqz v61, :cond_5a

    const/4 v4, 0x1

    :goto_5a
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2256
    const/4 v4, 0x1

    return v4

    .line 2255
    :cond_5a
    const/4 v4, 0x0

    goto :goto_5a

    .line 2260
    .end local v61    # "_result":Z
    :sswitch_d2
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2262
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2264
    .restart local v5    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v45

    .line 2266
    .restart local v45    # "_arg1":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v50

    .line 2267
    .local v50, "_arg2_length":I
    if-gez v50, :cond_5b

    .line 2268
    const/16 v49, 0x0

    .line 2273
    :goto_5b
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    move-object/from16 v2, v49

    invoke-virtual {v0, v5, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->invokeOemRilRequestRawForSubscriber(I[B[B)I

    move-result v51

    .line 2274
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2275
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2276
    move-object/from16 v0, p3

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 2277
    const/4 v4, 0x1

    return v4

    .line 2271
    .end local v51    # "_result":I
    :cond_5b
    move/from16 v0, v50

    new-array v0, v0, [B

    move-object/from16 v49, v0

    .restart local v49    # "_arg2":[B
    goto :goto_5b

    .line 2281
    .end local v5    # "_arg0":I
    .end local v45    # "_arg1":[B
    .end local v49    # "_arg2":[B
    .end local v50    # "_arg2_length":I
    :sswitch_d3
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2282
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/ITelephony$Stub;->getDisable2g()I

    move-result v51

    .line 2283
    .restart local v51    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2284
    move-object/from16 v0, p3

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2285
    const/4 v4, 0x1

    return v4

    .line 2289
    .end local v51    # "_result":I
    :sswitch_d4
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2291
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 2292
    .restart local v5    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/ITelephony$Stub;->setDisable2g(I)Z

    move-result v61

    .line 2293
    .restart local v61    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2294
    if-eqz v61, :cond_5c

    const/4 v4, 0x1

    :goto_5c
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2295
    const/4 v4, 0x1

    return v4

    .line 2294
    :cond_5c
    const/4 v4, 0x0

    goto :goto_5c

    .line 2299
    .end local v5    # "_arg0":I
    .end local v61    # "_result":Z
    :sswitch_d5
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2301
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v29

    .line 2303
    .restart local v29    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2305
    .restart local v30    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v31

    .line 2307
    .restart local v31    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v32

    .local v32, "_arg3":J
    move-object/from16 v28, p0

    .line 2308
    invoke-virtual/range {v28 .. v33}, Lcom/android/internal/telephony/ITelephony$Stub;->notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2309
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2310
    const/4 v4, 0x1

    return v4

    .line 2314
    .end local v29    # "_arg0":Ljava/lang/String;
    .end local v30    # "_arg1":Ljava/lang/String;
    .end local v31    # "_arg2":Ljava/lang/String;
    .end local v32    # "_arg3":J
    :sswitch_d6
    const-string/jumbo v4, "com.android.internal.telephony.ITelephony"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 2316
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5d

    .line 2317
    sget-object v4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Landroid/os/Bundle;

    .line 2323
    :goto_5d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v30

    .line 2324
    .restart local v30    # "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony$Stub;->prepareEmergencyCall(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 2325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 2326
    const/4 v4, 0x1

    return v4

    .line 2320
    .end local v30    # "_arg1":Ljava/lang/String;
    :cond_5d
    const/16 v35, 0x0

    .local v35, "_arg0":Landroid/os/Bundle;
    goto :goto_5d

    .line 46
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x40 -> :sswitch_40
        0x41 -> :sswitch_41
        0x42 -> :sswitch_42
        0x43 -> :sswitch_43
        0x44 -> :sswitch_44
        0x45 -> :sswitch_45
        0x46 -> :sswitch_46
        0x47 -> :sswitch_47
        0x48 -> :sswitch_48
        0x49 -> :sswitch_49
        0x4a -> :sswitch_4a
        0x4b -> :sswitch_4b
        0x4c -> :sswitch_4c
        0x4d -> :sswitch_4d
        0x4e -> :sswitch_4e
        0x4f -> :sswitch_4f
        0x50 -> :sswitch_50
        0x51 -> :sswitch_51
        0x52 -> :sswitch_52
        0x53 -> :sswitch_53
        0x54 -> :sswitch_54
        0x55 -> :sswitch_55
        0x56 -> :sswitch_56
        0x57 -> :sswitch_57
        0x58 -> :sswitch_58
        0x59 -> :sswitch_59
        0x5a -> :sswitch_5a
        0x5b -> :sswitch_5b
        0x5c -> :sswitch_5c
        0x5d -> :sswitch_5d
        0x5e -> :sswitch_5e
        0x5f -> :sswitch_5f
        0x60 -> :sswitch_60
        0x61 -> :sswitch_61
        0x62 -> :sswitch_62
        0x63 -> :sswitch_63
        0x64 -> :sswitch_64
        0x65 -> :sswitch_65
        0x66 -> :sswitch_66
        0x67 -> :sswitch_67
        0x68 -> :sswitch_68
        0x69 -> :sswitch_69
        0x6a -> :sswitch_6a
        0x6b -> :sswitch_6b
        0x6c -> :sswitch_6c
        0x6d -> :sswitch_6d
        0x6e -> :sswitch_6e
        0x6f -> :sswitch_6f
        0x70 -> :sswitch_70
        0x71 -> :sswitch_71
        0x72 -> :sswitch_72
        0x73 -> :sswitch_73
        0x74 -> :sswitch_74
        0x75 -> :sswitch_75
        0x76 -> :sswitch_76
        0x77 -> :sswitch_77
        0x78 -> :sswitch_78
        0x79 -> :sswitch_79
        0x7a -> :sswitch_7a
        0x7b -> :sswitch_7b
        0x7c -> :sswitch_7c
        0x7d -> :sswitch_7d
        0x7e -> :sswitch_7e
        0x7f -> :sswitch_7f
        0x80 -> :sswitch_80
        0x81 -> :sswitch_81
        0x82 -> :sswitch_82
        0x83 -> :sswitch_83
        0x84 -> :sswitch_84
        0x85 -> :sswitch_85
        0x86 -> :sswitch_86
        0x87 -> :sswitch_87
        0x88 -> :sswitch_88
        0x89 -> :sswitch_89
        0x8a -> :sswitch_8a
        0x8b -> :sswitch_8b
        0x8c -> :sswitch_8c
        0x8d -> :sswitch_8d
        0x8e -> :sswitch_8e
        0x8f -> :sswitch_8f
        0x90 -> :sswitch_90
        0x91 -> :sswitch_91
        0x92 -> :sswitch_92
        0x93 -> :sswitch_93
        0x94 -> :sswitch_94
        0x95 -> :sswitch_95
        0x96 -> :sswitch_96
        0x97 -> :sswitch_97
        0x98 -> :sswitch_98
        0x99 -> :sswitch_99
        0x9a -> :sswitch_9a
        0x9b -> :sswitch_9b
        0x9c -> :sswitch_9c
        0x9d -> :sswitch_9d
        0x9e -> :sswitch_9e
        0x9f -> :sswitch_9f
        0xa0 -> :sswitch_a0
        0xa1 -> :sswitch_a1
        0xa2 -> :sswitch_a2
        0xa3 -> :sswitch_a3
        0xa4 -> :sswitch_a4
        0xa5 -> :sswitch_a5
        0xa6 -> :sswitch_a6
        0xa7 -> :sswitch_a7
        0xa8 -> :sswitch_a8
        0xa9 -> :sswitch_a9
        0xaa -> :sswitch_aa
        0xab -> :sswitch_ab
        0xac -> :sswitch_ac
        0xad -> :sswitch_ad
        0xae -> :sswitch_ae
        0xaf -> :sswitch_af
        0xb0 -> :sswitch_b0
        0xb1 -> :sswitch_b1
        0xb2 -> :sswitch_b2
        0xb3 -> :sswitch_b3
        0xb4 -> :sswitch_b4
        0xb5 -> :sswitch_b5
        0xb6 -> :sswitch_b6
        0xb7 -> :sswitch_b7
        0xb8 -> :sswitch_b8
        0xb9 -> :sswitch_b9
        0xba -> :sswitch_ba
        0xbb -> :sswitch_bb
        0xbc -> :sswitch_bc
        0xbd -> :sswitch_bd
        0xbe -> :sswitch_be
        0xbf -> :sswitch_bf
        0xc0 -> :sswitch_c0
        0xc1 -> :sswitch_c1
        0xc2 -> :sswitch_c2
        0xc3 -> :sswitch_c3
        0xc4 -> :sswitch_c4
        0xc5 -> :sswitch_c5
        0xc6 -> :sswitch_c6
        0xc7 -> :sswitch_c7
        0xc8 -> :sswitch_c8
        0xc9 -> :sswitch_c9
        0xca -> :sswitch_ca
        0xcb -> :sswitch_cb
        0xcc -> :sswitch_cc
        0xcd -> :sswitch_cd
        0xce -> :sswitch_ce
        0xcf -> :sswitch_cf
        0xd0 -> :sswitch_d0
        0xd1 -> :sswitch_d1
        0xd2 -> :sswitch_d2
        0xd3 -> :sswitch_d3
        0xd4 -> :sswitch_d4
        0xd5 -> :sswitch_d5
        0xd6 -> :sswitch_d6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
