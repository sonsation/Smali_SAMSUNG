.class public Lcom/samsung/android/settings/nfc/NfcSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/NfcSettings$1;,
        Lcom/samsung/android/settings/nfc/NfcSettings$2;,
        Lcom/samsung/android/settings/nfc/NfcSettings$3;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static mConfigReaderModeUI:Ljava/lang/String;

.field private static mIconType:Ljava/lang/String;

.field private static mOperatorSettingUiType:Ljava/lang/String;

.field public static mProductName:Ljava/lang/String;


# instance fields
.field private androidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

.field private cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private isEmergencyMode:Z

.field private mActivity:Landroid/app/Activity;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

.field private mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private nfcMode:Landroid/preference/PreferenceCategory;

.field private nfcSettingPref:Landroid/preference/PreferenceScreen;

.field private paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

.field private preferredSimCard:Landroid/preference/PreferenceCategory;

.field private standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

.field private tapPay:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/NfcSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get3()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/NfcSettings;)Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 119
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mProductName:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    .line 122
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigOperatorSettingUI"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mOperatorSettingUiType:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_StatusBarIconType"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    .line 462
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$1;

    invoke-direct {v0}, Lcom/samsung/android/settings/nfc/NfcSettings$1;-><init>()V

    .line 461
    sput-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 113
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    .line 116
    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 556
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$2;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$3;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 85
    return-void
.end method

.method public static isSupportDomesticUi()Z
    .locals 2

    .prologue
    .line 503
    const-string/jumbo v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mOperatorSettingUiType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSupportDualSwp()Z
    .locals 4

    .prologue
    .line 508
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CscFeature_SmartcardSvc_ConfigMultiSimMode"

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "checkDualSwp":Ljava/lang/String;
    const-string/jumbo v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    const-string/jumbo v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportDualSwp true : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v1, 0x1

    return v1

    .line 514
    :cond_0
    const-string/jumbo v1, "NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSupportDualSwp false : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/4 v1, 0x0

    return v1
.end method

.method public static isSupportRWP2p()Z
    .locals 2

    .prologue
    .line 496
    const-string/jumbo v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    const-string/jumbo v0, "KOREA"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mOperatorSettingUiType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 498
    const-string/jumbo v0, "CMCC"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 496
    if-nez v0, :cond_0

    .line 499
    const-string/jumbo v0, "CTC"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mConfigReaderModeUI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 496
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public isAddPreference()V
    .locals 3

    .prologue
    .line 235
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    const-string/jumbo v1, "nfc_payment_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 237
    .local v0, "tapPayGroup":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 240
    const-string/jumbo v1, "NfcSettings"

    const-string/jumbo v2, "isAddPreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "tapPayGroup":Landroid/preference/PreferenceGroup;
    :cond_0
    return-void
.end method

.method public isDeletePreference()V
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.nfc.hce"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 221
    if-eqz v1, :cond_1

    .line 223
    :cond_0
    const-string/jumbo v1, "nfc_payment_settings"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 224
    .local v0, "tapPayGroup":Landroid/preference/PreferenceGroup;
    if-eqz v0, :cond_1

    .line 226
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    const-string/jumbo v1, "NfcSettings"

    const-string/jumbo v2, "isDeletePreference tapPayGroup"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    .end local v0    # "tapPayGroup":Landroid/preference/PreferenceGroup;
    :cond_1
    return-void
.end method

.method public isDualSimDisabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 520
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->chinaDisabled_offslot(I)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public isPackageExists(Ljava/lang/String;)Z
    .locals 5
    .param p1, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 350
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 351
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v2, v2, 0xa
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 352
    const/4 v2, 0x1

    return v2

    .line 353
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 358
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v4
.end method

.method makeAlertDialog()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 427
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 428
    .local v0, "mAlertDialogBuilder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "ultra_powersaving_mode"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 429
    const v1, 0x7f0b09f2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 433
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "NFC"

    aput-object v3, v2, v4

    const v3, 0x7f0b09f3

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 434
    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$4;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 445
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 446
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 426
    return-void

    .line 431
    :cond_0
    const v1, 0x7f0b0b1a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 197
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    check-cast v9, Lcom/android/settings/SettingsActivity;

    .line 199
    .local v9, "activity":Lcom/android/settings/SettingsActivity;
    invoke-virtual {v9}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 200
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 204
    new-instance v0, Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/preference/PreferenceScreen;

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/preference/PreferenceScreen;

    iget-object v7, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iget-object v8, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-direct/range {v0 .. v8}, Lcom/samsung/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;Landroid/preference/PreferenceScreen;Landroid/preference/Preference;Landroid/preference/PreferenceScreen;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    .line 207
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->created()V

    .line 211
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gtelwifigoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    const-string/jumbo v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    .line 211
    if-eqz v0, :cond_3

    .line 213
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDeletePreference()V

    .line 194
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 132
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 134
    const v2, 0x7f0800ac

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 138
    .local v0, "actionBar":Landroid/app/ActionBar;
    const v2, 0x7f0b09d0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 140
    const-string/jumbo v2, "nfc_android_beam_help"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 141
    .local v1, "nfcSetting":Landroid/preference/Preference;
    const-string/jumbo v2, "android_beam_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->androidBeam:Lcom/android/settingslib/SecRestrictedSettingsSwitchPreference;

    .line 142
    const-string/jumbo v2, "nfc_mode_general"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/preference/PreferenceCategory;

    .line 143
    const-string/jumbo v2, "mode_card_mode"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 144
    const-string/jumbo v2, "mode_standard_mode"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 145
    const-string/jumbo v2, "nfc_payment_settings"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->tapPay:Landroid/preference/PreferenceScreen;

    .line 147
    const-string/jumbo v2, "nfc_payment_sim"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 148
    const-string/jumbo v2, "nfc_preferred_general"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/preference/PreferenceCategory;

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcSettingPref:Landroid/preference/PreferenceScreen;

    .line 154
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportRWP2p()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 155
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 156
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 157
    if-eqz v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v2, :cond_1

    .line 177
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 178
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 179
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V

    .line 189
    :cond_1
    :goto_1
    new-instance v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 190
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/nfc/NfcSettings;->setHasOptionsMenu(Z)V

    .line 131
    return-void

    .line 161
    :cond_2
    iput-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mCardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 162
    iput-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mStandardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    .line 163
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v2, :cond_3

    .line 164
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->cardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    if-eqz v2, :cond_4

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->standardMode:Lcom/samsung/android/settings/nfc/NfcRadioButtonPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 169
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/preference/PreferenceCategory;

    if-eqz v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->nfcMode:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 181
    :cond_5
    iput-object v4, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->preferredSimCard:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v2, 0x0

    .line 248
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_ConfigAdvancedSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DISABLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/settings/nfc/NfcSettings;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gtelwifigoogle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 260
    :cond_1
    const v0, 0x7f140008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 247
    :cond_2
    :goto_0
    return-void

    .line 253
    :cond_3
    const/4 v0, 0x1

    const v1, 0x7f0b09e9

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 255
    const-string/jumbo v0, "com.samsung.helphub"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isPackageExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const/4 v0, 0x2

    const v1, 0x7f0b198f

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020158

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 452
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 454
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 455
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->destroy()V

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 451
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v7, 0x1

    .line 278
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 337
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v4

    return v4

    .line 284
    :sswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v5, "com.samsung.helphub"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 285
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    if-ne v4, v7, :cond_0

    .line 289
    return v7

    .line 290
    :cond_0
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 305
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:section"

    const-string/jumbo v5, "nfc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V

    .line 325
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    return v7

    .line 308
    .restart local v2    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    iget v4, v2, Landroid/content/pm/PackageInfo;->versionCode:I

    rem-int/lit8 v4, v4, 0xa

    const/4 v5, 0x3

    if-ne v4, v5, :cond_1

    .line 316
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.helphub.HELP"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string/jumbo v4, "helphub:appid"

    const-string/jumbo v5, "nfc"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 320
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 322
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 329
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :sswitch_1
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.settings.SEC_NFC_ADVANCED_SETTING"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .restart local v3    # "intent":Landroid/content/Intent;
    :try_start_1
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/NfcSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 335
    :goto_1
    return v7

    .line 332
    :catch_1
    move-exception v0

    .line 333
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 278
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x7f1108bd -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 405
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->pause()V

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 414
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v0, :cond_1

    .line 415
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 416
    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "onPause() So AlertDialog dismiss in EmergencyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 422
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NfcSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 404
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 266
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 267
    .local v0, "advanced":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 363
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 365
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 368
    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/nfc/NfcSettings;->mIconType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isAddPreference()V

    .line 377
    :cond_0
    :goto_0
    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcEnabler:Lcom/samsung/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/nfc/NfcEnabler;->resume()V

    .line 381
    :cond_1
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 382
    .local v3, "filter":Landroid/content/IntentFilter;
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 385
    invoke-static {}, Lcom/samsung/android/settings/nfc/NfcSettings;->isSupportDualSwp()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mPaymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->refresh()V

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 392
    .local v7, "mContext":Landroid/content/Context;
    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/emergencymode/SemEmergencyManager;

    move-result-object v6

    .line 393
    .local v6, "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    invoke-static {v7}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    .line 394
    iget-boolean v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->isEmergencyMode:Z

    if-eqz v0, :cond_3

    .line 395
    const-string/jumbo v0, "NfcSettings"

    const-string/jumbo v1, "show makeAlertDialog in EmergencyMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->makeAlertDialog()V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v4, "NfcSettings"

    invoke-virtual {v0, v1, v2, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 362
    return-void

    .line 372
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v6    # "em":Lcom/samsung/android/emergencymode/SemEmergencyManager;
    .end local v7    # "mContext":Landroid/content/Context;
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDeletePreference()V

    goto :goto_0
.end method

.method public refresh()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 524
    const-string/jumbo v3, "NfcSettings"

    const-string/jumbo v4, "refresh()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getPreferredSimSlot()I

    move-result v0

    .line 526
    .local v0, "preferredSim":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 527
    const/4 v0, 0x0

    .line 529
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->getEntryArray()[Ljava/lang/String;

    move-result-object v1

    .line 531
    .local v1, "simName":[Ljava/lang/String;
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->clearItems()V

    .line 532
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    aget-object v4, v1, v6

    const-string/jumbo v5, "0"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 533
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    aget-object v4, v1, v7

    const-string/jumbo v5, "1"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->addItem(Ljava/lang/String;Ljava/lang/Object;)V

    .line 535
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_1"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 536
    .local v2, "summary":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v2}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    .line 539
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->onUpdateAdapter()V

    .line 540
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setSelectedValue(Ljava/lang/Object;Z)V

    .line 541
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    new-instance v4, Lcom/samsung/android/settings/nfc/NfcSettings$5;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/nfc/NfcSettings$5;-><init>(Lcom/samsung/android/settings/nfc/NfcSettings;)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setCallback(Lcom/samsung/android/settings/nfc/PaymentDropDownPreference$Callback;)V

    .line 549
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v3}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    if-eq v3, v7, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->isDualSimDisabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 550
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v6}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    .line 523
    :goto_1
    return-void

    .line 535
    .end local v2    # "summary":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "select_name_2"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "summary":Ljava/lang/String;
    goto :goto_0

    .line 552
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/NfcSettings;->paymentSim:Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;

    invoke-virtual {v3, v7}, Lcom/samsung/android/settings/nfc/PaymentDropDownPreference;->setEnabled(Z)V

    goto :goto_1
.end method
