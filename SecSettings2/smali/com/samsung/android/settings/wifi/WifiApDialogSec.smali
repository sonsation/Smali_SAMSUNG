.class public Lcom/samsung/android/settings/wifi/WifiApDialogSec;
.super Landroid/app/AlertDialog;
.source "WifiApDialogSec.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;,
        Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final MAX_CLIENT:I

.field private static mSecurityTypeIndex:I

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private CheckBoxChannel2g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5g:Landroid/widget/RadioButton;

.field private CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

.field private advanced:Landroid/widget/CheckBox;

.field private bTimeOutSpinner:Z

.field private customView:Landroid/view/View;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private hideSsidDoNotShowAgain:Z

.field private isTimeoutValueChanged:Z

.field private mAdvancedShowLayout:Landroid/widget/LinearLayout;

.field private mBand2gTextView:Landroid/widget/TextView;

.field private mChannel:Landroid/widget/Spinner;

.field private mChannel2gLayout:Landroid/widget/LinearLayout;

.field private mChannel5g:Landroid/widget/TextView;

.field private mChannel5gLayout:Landroid/widget/LinearLayout;

.field private mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

.field private mChannel5genabled:Z

.field public mChecked5GPrefer:Z

.field private mConfigureTitleTV:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field public mDismissIfOpen:Z

.field private mHideSsid:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

.field private mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mIsTablet:Z

.field private mLast2gChannel:I

.field private mLast5gChannel:I

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mNumBasedOnCharger:I

.field private mNumBasedOnCountry:I

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordErrorText:Landroid/widget/TextView;

.field private mPasswordShowLayout:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveButtonClicked:Z

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityMsg:Landroid/widget/TextView;

.field private mSelectedBand:I

.field private mSelectedChannel:I

.field private mSelectedMaxClient:I

.field private mSelectedTimeoutValue:I

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mSsid:Landroid/widget/EditText;

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidHideLayout:Landroid/widget/LinearLayout;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private maxClientSpinner:Landroid/widget/Spinner;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private timeoutSettingsSpinner:Landroid/widget/Spinner;

.field private wifiAp5gDoNotShowAgain:Z

.field private wifiAp5gItem:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

.field private wifiAp5gItemBasedOnCountry:[Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    return v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic -get16(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get17(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get18(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get20(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get21(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get22(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/Spinner;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set4(Lcom/samsung/android/settings/wifi/WifiApDialogSec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/samsung/android/settings/wifi/WifiApDialogSec;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getChgType()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    .line 123
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 181
    sget v0, Lcom/android/settings/Utils;->MAX_CLIENT_4_MOBILEAP:I

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 190
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    .line 124
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    .line 129
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    .line 145
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    .line 151
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 152
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    .line 153
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 154
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    .line 155
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    .line 162
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    .line 163
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    .line 164
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    .line 165
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "36"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 166
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "149"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 168
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    .line 169
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    .line 176
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    .line 177
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    .line 182
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 183
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    .line 184
    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    .line 447
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 843
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 907
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    .line 953
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    .line 191
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 192
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 193
    if-eqz p3, :cond_4

    .line 194
    invoke-static {p1}, Lcom/android/settings/Utils;->isDualFolderType(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 195
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 201
    :cond_0
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 202
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_5

    .line 203
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 208
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 209
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 210
    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 211
    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing MHS Channel to Auto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    .line 215
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    .line 217
    :cond_2
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 218
    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_4

    .line 219
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    .line 189
    :cond_4
    return-void

    .line 205
    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p4, "tempWifiConfig"    # Landroid/net/wifi/WifiConfiguration;
    .param p5, "permitDismiss"    # Z
    .param p6, "continueOpen"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 227
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 122
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    .line 124
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    .line 129
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    .line 145
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSsid:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempPassworld:Ljava/lang/String;

    .line 151
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 152
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    .line 153
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 154
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    .line 155
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    .line 162
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    .line 163
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gDoNotShowAgain:Z

    .line 164
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5genabled:Z

    .line 165
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "36"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    .line 166
    new-array v0, v2, [Ljava/lang/String;

    const-string/jumbo v1, "149"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    .line 168
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    .line 169
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    .line 176
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    .line 177
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    .line 178
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    .line 182
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 183
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    .line 184
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    .line 447
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$1;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 843
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$2;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 907
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$3;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    .line 953
    new-instance v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$4;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    .line 228
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 229
    if-eqz p4, :cond_5

    .line 230
    iput-object p4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_4

    .line 235
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    sput v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 236
    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiApDialogSec2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 237
    const-string/jumbo v2, "   continueOpen ?   "

    .line 236
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput-boolean p5, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    .line 239
    if-eqz p6, :cond_6

    .line 240
    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 246
    :cond_0
    :goto_1
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 250
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_7

    .line 251
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 256
    :goto_2
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_1

    .line 257
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 258
    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 259
    const-string/jumbo v0, "WifiApDialogSec"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Changing MHS Channel to Auto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    .line 263
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v0, :cond_2

    .line 264
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    .line 265
    :cond_2
    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 266
    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 265
    if-eqz v0, :cond_4

    .line 267
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromSheredPreference(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutIndexFromValue(I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    .line 226
    :cond_4
    return-void

    .line 232
    :cond_5
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto/16 :goto_0

    .line 241
    :cond_6
    if-nez p6, :cond_0

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 242
    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    goto :goto_1

    .line 253
    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto :goto_2
.end method

.method private checkMaxFontSize(Landroid/widget/TextView;)V
    .locals 9
    .param p1, "textview"    # Landroid/widget/TextView;

    .prologue
    const/4 v8, 0x0

    const v7, 0x3f99999a    # 1.2f

    .line 1569
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v1, v4, Landroid/content/res/Configuration;->fontScale:F

    .line 1570
    .local v1, "currentFontScale":F
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 1571
    .local v3, "outValue":Landroid/util/TypedValue;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x11600cb

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v3, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1572
    const/4 v2, 0x0

    .line 1573
    .local v2, "mThemeIsDeviceDefault":Z
    iget v4, v3, Landroid/util/TypedValue;->data:I

    if-eqz v4, :cond_1

    .line 1574
    const/4 v2, 0x1

    .line 1579
    :goto_0
    if-eqz v2, :cond_0

    cmpl-float v4, v1, v7

    if-lez v4, :cond_0

    .line 1580
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v4

    div-float v0, v4, v1

    .line 1581
    .local v0, "baseFontSize":F
    mul-float v4, v0, v7

    invoke-virtual {p1, v8, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 1567
    .end local v0    # "baseFontSize":F
    :cond_0
    return-void

    .line 1576
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getChgType()Z
    .locals 8

    .prologue
    .line 1463
    const-string/jumbo v0, "/sys/class/sec/switch/chg_type"

    .line 1464
    .local v0, "CHG_TYPE_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1465
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string/jumbo v3, ""

    .line 1467
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1468
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 1469
    const-string/jumbo v5, "WifiApDialogSec"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ChgType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1474
    if-eqz v2, :cond_0

    .line 1475
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v1, v2

    .line 1481
    .end local v2    # "buf":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    const-string/jumbo v5, "0"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string/jumbo v5, "1"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1482
    :cond_2
    const/4 v5, 0x1

    return v5

    .line 1476
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_0
    move-exception v4

    .line 1477
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1470
    .end local v2    # "buf":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    :catch_1
    move-exception v4

    .line 1471
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1474
    if-eqz v1, :cond_1

    .line 1475
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1476
    :catch_2
    move-exception v4

    .line 1477
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1472
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 1474
    :goto_3
    if-eqz v1, :cond_3

    .line 1475
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1472
    :cond_3
    :goto_4
    throw v5

    .line 1476
    :catch_3
    move-exception v4

    .line 1477
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 1484
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4
    const/4 v5, 0x0

    return v5

    .line 1472
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    goto :goto_3

    .line 1470
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v1    # "buf":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 4
    .param p0, "wifiConfig"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 273
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sput v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 275
    return v1

    .line 276
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 277
    sput v3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 278
    return v3

    .line 280
    :cond_1
    sput v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 281
    return v2
.end method

.method private getTimeoutIndexFromValue(I)I
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1502
    sparse-switch p1, :sswitch_data_0

    .line 1516
    const/4 v0, -0x1

    return v0

    .line 1504
    :sswitch_0
    const/4 v0, 0x0

    return v0

    .line 1506
    :sswitch_1
    const/4 v0, 0x1

    return v0

    .line 1508
    :sswitch_2
    const/4 v0, 0x2

    return v0

    .line 1510
    :sswitch_3
    const/4 v0, 0x3

    return v0

    .line 1512
    :sswitch_4
    const/4 v0, 0x4

    return v0

    .line 1514
    :sswitch_5
    const/4 v0, 0x5

    return v0

    .line 1502
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x12c -> :sswitch_1
        0x258 -> :sswitch_2
        0x4b0 -> :sswitch_3
        0x708 -> :sswitch_4
        0xe10 -> :sswitch_5
    .end sparse-switch
.end method

.method private getTimeoutValueFromIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/16 v0, 0x4b0

    .line 1520
    packed-switch p1, :pswitch_data_0

    .line 1534
    return v0

    .line 1522
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 1524
    :pswitch_1
    const/16 v0, 0x12c

    return v0

    .line 1526
    :pswitch_2
    const/16 v0, 0x258

    return v0

    .line 1528
    :pswitch_3
    return v0

    .line 1530
    :pswitch_4
    const/16 v0, 0x708

    return v0

    .line 1532
    :pswitch_5
    const/16 v0, 0xe10

    return v0

    .line 1520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private getTimeoutValueFromSheredPreference(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1497
    const-string/jumbo v0, "SAMSUNG_HOTSPOT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1498
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    sget v2, Lcom/android/settings/Utils;->DEFAULT_TIMEOUT_MOBILEAP:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private isHotspotTestMode()Z
    .locals 14

    .prologue
    const/4 v10, 0x1

    .line 407
    const/4 v6, 0x0

    .line 408
    .local v6, "isTestMode":Z
    const/4 v8, 0x0

    .line 409
    .local v8, "testModeintent":Z
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "wifi"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiManager;

    .line 410
    .local v9, "wm":Landroid/net/wifi/WifiManager;
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 411
    .local v7, "msg":Landroid/os/Message;
    const/16 v11, 0xbf

    iput v11, v7, Landroid/os/Message;->what:I

    .line 413
    invoke-virtual {v9, v7}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v11

    if-ne v11, v10, :cond_2

    .line 414
    const/4 v8, 0x1

    .line 417
    :goto_0
    sget-boolean v11, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->DBG:Z

    if-eqz v11, :cond_1

    .line 418
    const-string/jumbo v0, "/data/misc/wifi/hotspot_info"

    .line 419
    .local v0, "HOTSPOT_INFO_FILE":Ljava/lang/String;
    const/4 v1, 0x0

    .line 420
    .local v1, "buf":Ljava/io/BufferedReader;
    const-string/jumbo v3, ""

    .line 423
    .local v3, "bufReadLine":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v11, Ljava/io/FileReader;

    invoke-direct {v11, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 424
    .end local v1    # "buf":Ljava/io/BufferedReader;
    .local v2, "buf":Ljava/io/BufferedReader;
    :cond_0
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 425
    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 426
    .local v5, "hotspotInfo":[Ljava/lang/String;
    array-length v11, v5

    const/4 v12, 0x2

    if-lt v11, v12, :cond_0

    const-string/jumbo v11, "ATT_HOTSPOT"

    const/4 v12, 0x0

    aget-object v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 427
    const/4 v11, 0x1

    aget-object v11, v5, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    if-ne v11, v10, :cond_3

    const/4 v6, 0x1

    .line 428
    :goto_2
    const-string/jumbo v11, "WifiApDialogSec"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "ATT_HOTSPOT ? "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 431
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 432
    .end local v2    # "buf":Ljava/io/BufferedReader;
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 435
    if-eqz v1, :cond_1

    .line 436
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 442
    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_4
    if-nez v6, :cond_6

    .end local v8    # "testModeintent":Z
    :goto_5
    return v8

    .line 416
    .restart local v8    # "testModeintent":Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 427
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    .restart local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    .line 435
    .end local v5    # "hotspotInfo":[Ljava/lang/String;
    :cond_4
    if-eqz v2, :cond_1

    .line 436
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_4

    .line 437
    :catch_1
    move-exception v4

    .line 438
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 437
    .end local v2    # "buf":Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    .line 438
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 433
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 435
    :goto_6
    if-eqz v1, :cond_5

    .line 436
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 433
    :cond_5
    :goto_7
    throw v10

    .line 437
    :catch_3
    move-exception v4

    .line 438
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .end local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .end local v3    # "bufReadLine":Ljava/lang/String;
    .end local v4    # "e":Ljava/io/IOException;
    :cond_6
    move v8, v10

    .line 442
    goto :goto_5

    .line 433
    .restart local v0    # "HOTSPOT_INFO_FILE":Ljava/lang/String;
    .restart local v2    # "buf":Ljava/io/BufferedReader;
    .restart local v3    # "bufReadLine":Ljava/lang/String;
    :catchall_1
    move-exception v10

    move-object v1, v2

    .end local v2    # "buf":Ljava/io/BufferedReader;
    .local v1, "buf":Ljava/io/BufferedReader;
    goto :goto_6

    .line 431
    .local v1, "buf":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1547
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 1548
    return v4

    .line 1549
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_1

    .line 1550
    return v3

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e1":Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Wifi Sharing not defined"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    .end local v0    # "e1":Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    return v3
.end method

.method private restartFocusedViewInput()V
    .locals 2

    .prologue
    .line 1372
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1373
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 1374
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1375
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1376
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1377
    :cond_2
    if-eqz v0, :cond_0

    .line 1378
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1379
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1378
    if-eqz v1, :cond_0

    .line 1380
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartViewInput(Landroid/view/View;)V

    goto :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1386
    if-eqz p1, :cond_0

    .line 1387
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1388
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1389
    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1385
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private saveTempConfig()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 352
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 354
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 356
    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 357
    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 356
    if-nez v2, :cond_0

    .line 357
    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 356
    if-eqz v2, :cond_5

    .line 358
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 361
    :goto_1
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 362
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 365
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 366
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 369
    :cond_1
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_2

    .line 370
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 373
    :cond_2
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 396
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 350
    return-void

    :cond_4
    move v2, v4

    .line 358
    goto :goto_0

    .line 360
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 375
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 379
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 380
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 381
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 382
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 388
    .end local v1    # "password":Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 389
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 390
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 391
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 392
    .restart local v1    # "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_2

    .line 373
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "resId"    # I

    .prologue
    .line 1539
    const-string/jumbo v1, "WifiApDialogSec"

    const-string/jumbo v2, "Enter to setAdapterToSpinner"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f04034d

    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1541
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1542
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1538
    return-void
.end method

.method private setTimeout(I)V
    .locals 4
    .param p1, "timeout"    # I

    .prologue
    .line 1488
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v1, :cond_0

    .line 1489
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "SAMSUNG_HOTSPOT"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1490
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1492
    .local v0, "ed":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v1, "CONNECTION_TIMEOUT"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1493
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1487
    return-void
.end method

.method private showSecurityFields()V
    .locals 6

    .prologue
    const v5, 0x7f11077b

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1269
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110782

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    .line 1270
    sget v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 1271
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1272
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1273
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1275
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1276
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1278
    :cond_0
    return-void

    .line 1280
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityMsg:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1282
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 1283
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1284
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1287
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1289
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    .line 1290
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1291
    const/16 v1, 0x90

    .line 1290
    :goto_0
    or-int/lit8 v1, v1, 0x1

    .line 1289
    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 1294
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "password":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 1296
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    .line 1268
    return-void

    .line 1292
    .end local v0    # "password":Ljava/lang/String;
    :cond_3
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private validate()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 1001
    const/4 v11, 0x0

    .line 1002
    .local v11, "trimedSsidLength":I
    const/4 v10, 0x0

    .line 1003
    .local v10, "trimedPasswordLength":I
    const/4 v7, 0x1

    .line 1006
    .local v7, "enabled":Z
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1007
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1008
    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 1007
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1009
    .local v8, "mhsCr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1010
    const-string/jumbo v3, "isOpenWifiApAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 1009
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1011
    .local v9, "openapCr":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 1013
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1014
    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    const/4 v7, 0x0

    .line 1018
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1021
    :cond_1
    if-eqz v9, :cond_3

    .line 1023
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1024
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v0, :cond_2

    const-string/jumbo v0, "isOpenWifiApAllowed"

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    .line 1025
    const/4 v7, 0x0

    .line 1028
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1033
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    .line 1034
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    .line 1036
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_4

    if-nez v11, :cond_5

    .line 1037
    :cond_4
    const/4 v7, 0x0

    .line 1041
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_6

    .line 1042
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    .line 1045
    :cond_6
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_7

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_a

    :cond_7
    if-nez v10, :cond_a

    .line 1047
    :goto_0
    const/4 v7, 0x0

    .line 1050
    :cond_8
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 1051
    .local v6, "button":Landroid/widget/Button;
    if-eqz v6, :cond_9

    .line 1052
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 999
    :cond_9
    return-void

    .line 1017
    .end local v6    # "button":Landroid/widget/Button;
    :catchall_0
    move-exception v0

    .line 1018
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1017
    throw v0

    .line 1027
    :catchall_1
    move-exception v0

    .line 1028
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1027
    throw v0

    .line 1046
    :cond_a
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-eq v0, v12, :cond_b

    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-ne v0, v13, :cond_8

    :cond_b
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ge v0, v2, :cond_8

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    .line 1155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1152
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1304
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1305
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 1306
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1308
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1300
    :cond_3
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f11077c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 7

    .prologue
    const/16 v6, 0x95

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 286
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 294
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 296
    const-string/jumbo v2, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    const-string/jumbo v2, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-nez v2, :cond_0

    .line 297
    const-string/jumbo v2, "USC"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 296
    if-eqz v2, :cond_3

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 302
    :goto_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChecked5GPrefer:Z

    if-eqz v2, :cond_4

    .line 303
    iput v6, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 309
    :goto_2
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    if-ne v2, v6, :cond_5

    .line 310
    iput v4, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 314
    :goto_3
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 315
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v2, :cond_1

    .line 316
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    .line 324
    :cond_1
    sget v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 347
    const/4 v2, 0x0

    return-object v2

    :cond_2
    move v2, v4

    .line 298
    goto :goto_0

    .line 300
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 306
    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    goto :goto_2

    .line 312
    :cond_5
    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    goto :goto_3

    .line 326
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 327
    return-object v0

    .line 330
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 331
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 332
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_6

    .line 333
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 336
    .end local v1    # "password":Ljava/lang/String;
    :cond_6
    return-object v0

    .line 339
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 340
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 341
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_7

    .line 342
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    .restart local v1    # "password":Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 345
    .end local v1    # "password":Ljava/lang/String;
    :cond_7
    return-object v0

    .line 324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 1363
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public getTempConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getTimeoutValueChangedFlag()Z
    .locals 1

    .prologue
    .line 1316
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    return v0
.end method

.method public isSaveButtonClicked()Z
    .locals 1

    .prologue
    .line 1564
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 875
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 876
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f11077a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    .line 884
    :cond_1
    sget v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 874
    :goto_0
    return-void

    .line 886
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 889
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 890
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 895
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 899
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 884
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v8, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1058
    const-string/jumbo v9, "WifiApDialogSec"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onCheckedChanged, isChecked = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 1057
    :cond_0
    :goto_0
    return-void

    .line 1061
    :sswitch_0
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    .line 1062
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1063
    const/16 v6, 0x90

    .line 1062
    :goto_1
    or-int/lit8 v6, v6, 0x1

    .line 1061
    invoke-virtual {v7, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 1066
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1067
    .local v5, "password":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 1068
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 1064
    .end local v5    # "password":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x80

    goto :goto_1

    .line 1072
    :sswitch_1
    const-string/jumbo v8, "TMO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 1073
    const-string/jumbo v8, "NEWCO"

    sget-object v9, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 1072
    if-eqz v8, :cond_0

    .line 1074
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v8}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1075
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0e9c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1077
    :cond_3
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "SAMSUNG_HOTSPOT"

    invoke-virtual {v8, v9, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    .line 1078
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v9, "HIDE_SSID_DO_NOTSHOW_AGAIN"

    invoke-interface {v8, v9, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v6, :cond_4

    :goto_2
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    .line 1079
    const-string/jumbo v6, "WifiApDialogSec"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "hideSsidDoNotShowAgain = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->hideSsidDoNotShowAgain:Z

    if-nez v6, :cond_0

    .line 1081
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showHideSsidWarningDialog()V

    goto/16 :goto_0

    :cond_4
    move v6, v7

    .line 1078
    goto :goto_2

    .line 1086
    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v9, 0x7f110787

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 1087
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v7

    .line 1086
    :goto_3
    invoke-virtual {v9, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1089
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1090
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1091
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v8, "input_method"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 1092
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 1093
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v1, v6, v7}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_0

    .end local v0    # "focusedView":Landroid/view/View;
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    move v6, v8

    .line 1087
    goto :goto_3

    .line 1097
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->restartFocusedViewInput()V

    goto/16 :goto_0

    .line 1101
    :sswitch_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    .line 1102
    .local v2, "is2gChecked":Z
    if-eqz v2, :cond_7

    move v9, v7

    :goto_4
    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    .line 1110
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v2, :cond_8

    move v9, v7

    :goto_5
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1111
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v2, :cond_9

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1112
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    if-eqz v2, :cond_a

    :goto_7
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto/16 :goto_0

    :cond_7
    move v9, v6

    .line 1102
    goto :goto_4

    :cond_8
    move v9, v8

    .line 1110
    goto :goto_5

    :cond_9
    move v8, v7

    .line 1111
    goto :goto_6

    :cond_a
    move v7, v6

    .line 1112
    goto :goto_7

    .line 1115
    .end local v2    # "is2gChecked":Z
    :sswitch_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    invoke-virtual {v9}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v3

    .line 1116
    .local v3, "is5gChecked":Z
    if-eqz v3, :cond_c

    move v9, v6

    :goto_8
    iput v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedBand:I

    .line 1124
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    if-eqz v3, :cond_d

    move v9, v8

    :goto_9
    invoke-virtual {v10, v9}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 1125
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    if-eqz v3, :cond_b

    move v8, v7

    :cond_b
    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1126
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    if-eqz v3, :cond_e

    :goto_a
    invoke-virtual {v8, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1127
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 1128
    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 1129
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    :cond_c
    move v9, v7

    .line 1116
    goto :goto_8

    :cond_d
    move v9, v7

    .line 1124
    goto :goto_9

    :cond_e
    move v7, v6

    .line 1126
    goto :goto_a

    .line 1133
    .end local v3    # "is5gChecked":Z
    :sswitch_5
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    .line 1137
    .local v4, "is5gPreferChecked":Z
    if-eqz v4, :cond_f

    .line 1138
    const-string/jumbo v6, "149"

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 1139
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    .line 1141
    :cond_f
    iput v7, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 1142
    iget v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    goto/16 :goto_0

    .line 1059
    :sswitch_data_0
    .sparse-switch
        0x7f11077c -> :sswitch_0
        0x7f110780 -> :sswitch_1
        0x7f110786 -> :sswitch_2
        0x7f110789 -> :sswitch_5
        0x7f11078c -> :sswitch_3
        0x7f11078e -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 22
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040342

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 508
    .local v7, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    .line 509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mIsTablet:Z

    .line 510
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v18

    const v19, 0x7f040343

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    .line 511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mCustomTitleView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110795

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    .line 513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0d021f

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    .line 515
    .local v17, "spinnerTintColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110781

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const v19, 0x7f0c0044

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11077a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setView(Landroid/view/View;)V

    .line 527
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setInverseBackgroundForced(Z)V

    .line 529
    invoke-static {}, Lcom/android/settings/Utils;->readSalesCode()Ljava/lang/String;

    move-result-object v18

    sput-object v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->sSalesCode:Ljava/lang/String;

    .line 531
    new-instance v14, Lcom/android/settings/Utils$LengthFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lcom/android/settings/Utils$LengthFilter;-><init>(Landroid/content/Context;)V

    .line 532
    .local v14, "lengthFilter":Lcom/android/settings/Utils$LengthFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f1104b9

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110779

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11077e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidErrorText:Landroid/widget/TextView;

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const v19, 0x7f0b11ee

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setHint(I)V

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11072a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/EditText;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110783

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordErrorText:Landroid/widget/TextView;

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11077f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110780

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    const v20, 0x7f0b0d95

    invoke-static/range {v19 .. v20}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsidHideLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110784

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPasswordShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110785

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mAdvancedShowLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 557
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110786

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->advanced:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078f

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 564
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const v19, 0x7f0c004a

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078b

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078d

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110788

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayoutPrefer:Landroid/widget/LinearLayout;

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078e

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RadioButton;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110789

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5gPrefer:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110790

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11078a

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mBand2gTextView:Landroid/widget/TextView;

    .line 590
    const/4 v12, 0x0

    .line 607
    .local v12, "getChinfo":I
    sget-boolean v18, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_5G:Z

    if-nez v18, :cond_5

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 683
    :cond_0
    :goto_0
    const v18, 0x7f0b121d

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 685
    const v18, 0x7f0b121f

    move/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    .line 684
    const/16 v20, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 688
    if-eqz v18, :cond_9

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0ea0

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setCustomTitle(Landroid/view/View;)V

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->checkMaxFontSize(Landroid/widget/TextView;)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 699
    const-string/jumbo v18, "TMO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_1

    .line 700
    const-string/jumbo v18, "NEWCO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 699
    if-nez v18, :cond_1

    .line 700
    const-string/jumbo v18, "USC"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 699
    if-eqz v18, :cond_b

    .line 701
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    const/16 v18, 0x0

    :goto_2
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 707
    :goto_3
    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_c

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 713
    :goto_4
    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 714
    sget v18, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 715
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string/jumbo v19, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 715
    if-eqz v18, :cond_d

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/EditText;->requestFocus()Z

    .line 724
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Landroid/text/InputFilter;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/settings/Utils$EmojiInputFilter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->passwordWatcher:Landroid/text/TextWatcher;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11077c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 736
    sget-boolean v18, Lcom/android/settings/Utils;->ENABLE_SHOW_PASSWORD_AS_DEFAULT:Z

    if-eqz v18, :cond_e

    const/4 v9, 0x1

    .line 738
    .local v9, "defaultValue":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f11077c

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/CheckBox;

    .line 739
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string/jumbo v20, "wifi_ap_show_passwd"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    const/16 v19, 0x1

    .line 738
    :goto_7
    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110792

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    .line 744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 745
    sget-boolean v18, Lcom/android/settings/Utils;->SUPPORT_MOBILEAP_MAXCLIENT_MENU:Z

    if-eqz v18, :cond_1c

    .line 746
    const-string/jumbo v18, "SPRINT"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    .line 747
    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    .line 748
    .local v6, "changeableMaxvalue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    .line 750
    .local v8, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v16

    .line 752
    .local v16, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v16, :cond_4

    .line 754
    :try_start_0
    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_10

    .line 755
    const-string/jumbo v18, "chameleon_gsmmaxuser"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 756
    const-string/jumbo v18, "WifiApDialogSec"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "GSMMAXUSER, changeableMaxvalue = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :cond_4
    :goto_8
    if-lez v6, :cond_12

    .line 773
    new-array v15, v6, [Ljava/lang/String;

    .line 775
    .local v15, "max":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_9
    if-ge v13, v6, :cond_11

    .line 776
    add-int/lit8 v18, v13, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v13

    .line 775
    add-int/lit8 v13, v13, 0x1

    goto :goto_9

    .line 608
    .end local v6    # "changeableMaxvalue":I
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v9    # "defaultValue":I
    .end local v13    # "i":I
    .end local v15    # "max":[Ljava/lang/String;
    .end local v16    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_5
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v19, v0

    add-int v18, v18, v19

    if-lez v18, :cond_0

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel2gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5gLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 619
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    .line 620
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v13, v0, :cond_6

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCharger:[Ljava/lang/String;

    move-object/from16 v19, v0

    aget-object v19, v19, v13

    aput-object v19, v18, v13

    .line 620
    add-int/lit8 v13, v13, 0x1

    goto :goto_a

    .line 623
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v18, v0

    if-lez v18, :cond_7

    .line 624
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    :goto_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCountry:I

    move/from16 v19, v0

    add-int v18, v18, v19

    move/from16 v0, v18

    if-ge v13, v0, :cond_7

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItemBasedOnCountry:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mNumBasedOnCharger:I

    move/from16 v20, v0

    sub-int v20, v13, v20

    aget-object v19, v19, v20

    aput-object v19, v18, v13

    .line 624
    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    .line 628
    :cond_7
    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    move-object/from16 v19, v0

    const v20, 0x1090008

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v5, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 629
    .local v5, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 633
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    move/from16 v18, v0

    const/16 v19, 0xe

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_8

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 640
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel2g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->CheckBoxChannel5g:Landroid/widget/RadioButton;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mChannel5g:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 692
    .end local v5    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v13    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mConfigureTitleTV:Landroid/widget/TextView;

    move-object/from16 v18, v0

    new-instance v19, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0b0e9b

    invoke-static/range {v20 .. v21}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 701
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_2

    .line 703
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_3

    .line 711
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    sget v19, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_4

    .line 719
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 736
    :cond_e
    const/4 v9, 0x0

    .restart local v9    # "defaultValue":I
    goto/16 :goto_6

    .line 739
    :cond_f
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 762
    .restart local v6    # "changeableMaxvalue":I
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_10
    :try_start_1
    const-string/jumbo v18, "chameleon_maxuser"

    move-object/from16 v0, v18

    invoke-static {v8, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    goto/16 :goto_8

    .line 767
    :catch_0
    move-exception v11

    .line 768
    .local v11, "e":Landroid/provider/Settings$SettingNotFoundException;
    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    goto/16 :goto_8

    .line 765
    .end local v11    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v10

    .line 766
    .local v10, "e":Landroid/os/RemoteException;
    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    goto/16 :goto_8

    .line 779
    .end local v10    # "e":Landroid/os/RemoteException;
    .restart local v13    # "i":I
    .restart local v15    # "max":[Ljava/lang/String;
    :cond_11
    new-instance v5, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x1090008

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v5, v0, v1, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 780
    .restart local v5    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 784
    .end local v5    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v13    # "i":I
    .end local v15    # "max":[Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 785
    if-eqz v6, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_15

    .line 786
    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    .line 817
    .end local v6    # "changeableMaxvalue":I
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v16    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_13
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 818
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 824
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110794

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/Spinner;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    .line 825
    const-string/jumbo v18, "TMO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_14

    .line 826
    const-string/jumbo v18, "NEWCO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    .line 825
    if-eqz v18, :cond_1d

    .line 827
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const v19, 0x7f0c0048

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setSelection(I)V

    .line 830
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    .line 836
    :goto_e
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 838
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    .line 839
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    .line 840
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSoftInput()V

    .line 504
    return-void

    .line 788
    .restart local v6    # "changeableMaxvalue":I
    .restart local v8    # "cr":Landroid/content/ContentResolver;
    .restart local v16    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_c

    .line 791
    .end local v6    # "changeableMaxvalue":I
    .end local v8    # "cr":Landroid/content/ContentResolver;
    .end local v16    # "phone":Lcom/android/internal/telephony/ITelephony;
    :cond_16
    const-string/jumbo v18, "TMO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_17

    const-string/jumbo v18, "NEWCO"

    sget-object v19, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 792
    :cond_17
    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->MAX_CLIENT:I

    .line 794
    .restart local v6    # "changeableMaxvalue":I
    if-lez v6, :cond_19

    .line 795
    new-array v15, v6, [Ljava/lang/String;

    .line 796
    .restart local v15    # "max":[Ljava/lang/String;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_f
    if-ge v13, v6, :cond_18

    .line 797
    add-int/lit8 v18, v13, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v15, v13

    .line 796
    add-int/lit8 v13, v13, 0x1

    goto :goto_f

    .line 800
    :cond_18
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f04034d

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v4, v0, v1, v15}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 801
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v18, 0x1090009

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 805
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v13    # "i":I
    .end local v15    # "max":[Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 806
    if-eqz v6, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v6, v0, :cond_1a

    .line 807
    add-int/lit8 v18, v6, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_c

    .line 809
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_c

    .line 813
    .end local v6    # "changeableMaxvalue":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->maxclient:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_c

    .line 820
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110791

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->maxClientSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_d

    .line 832
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    move-object/from16 v18, v0

    const v19, 0x7f110793

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 833
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->timeoutSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/Spinner;->setVisibility(I)V

    goto/16 :goto_e
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1162
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 1255
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {p1, v4}, Landroid/widget/AdapterView;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1256
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    new-instance v5, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$5;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1160
    :cond_1
    return-void

    .line 1164
    :sswitch_0
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    .line 1165
    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 1167
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1168
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1170
    .local v1, "context":Landroid/content/Context;
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_3

    .line 1171
    const v4, 0x7f0b0d4c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1174
    .end local v1    # "context":Landroid/content/Context;
    :cond_3
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 1175
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1176
    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_4

    .line 1178
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 1179
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    .line 1180
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    .line 1183
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    .line 1184
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_0

    .line 1188
    :sswitch_1
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mTempSecurityTypeIndex:I

    .line 1189
    sput p3, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    .line 1190
    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    if-nez p3, :cond_9

    .line 1192
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1193
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->requestFocus()Z

    .line 1194
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1195
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1198
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    :goto_1
    const-string/jumbo v4, "TMO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "NEWCO"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1199
    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1201
    .restart local v1    # "context":Landroid/content/Context;
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_7

    .line 1202
    const v4, 0x7f0b0d4c

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v1, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1205
    .end local v1    # "context":Landroid/content/Context;
    :cond_7
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 1206
    const-string/jumbo v4, "VZW"

    sget-object v5, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1207
    const-string/jumbo v4, "WifiApDialogSec"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onItemSelected - mSecurityTypeIndex ?  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  mDismissIfOpen ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    sget v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    if-nez v4, :cond_8

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mDismissIfOpen:Z

    if-eqz v4, :cond_8

    .line 1209
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mUserSelectOpenSecurity:Z

    .line 1210
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->saveTempConfig()V

    .line 1211
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    .line 1214
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->showSecurityFields()V

    .line 1215
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    goto/16 :goto_0

    .line 1196
    :cond_9
    const/4 v4, 0x1

    if-ne p3, v4, :cond_5

    .line 1197
    const/4 v4, 0x2

    sput v4, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurityTypeIndex:I

    goto/16 :goto_1

    .line 1219
    :sswitch_2
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast2gChannel:I

    .line 1220
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    goto/16 :goto_0

    .line 1223
    :sswitch_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1224
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->wifiAp5gItem:[Ljava/lang/String;

    aget-object v4, v4, p3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    .line 1225
    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedChannel:I

    iput v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mLast5gChannel:I

    goto/16 :goto_0

    .line 1230
    :sswitch_4
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedMaxClient:I

    goto/16 :goto_0

    .line 1233
    :sswitch_5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    .line 1234
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    .line 1236
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    if-nez v4, :cond_b

    .line 1237
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 1238
    .local v3, "msg":Landroid/os/Message;
    const/16 v4, 0x4d

    iput v4, v3, Landroid/os/Message;->what:I

    .line 1239
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1240
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v4, "feature"

    const-string/jumbo v5, "MHTO"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1241
    if-nez p3, :cond_c

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "NEVER TIMEOUT"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_a
    :goto_2
    iput-object v0, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1248
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 1250
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v3    # "msg":Landroid/os/Message;
    :cond_b
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->bTimeOutSpinner:Z

    .line 1252
    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSelectedTimeoutValue:I

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getTimeoutValueFromIndex(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setTimeout(I)V

    goto/16 :goto_0

    .line 1242
    .restart local v0    # "args":Landroid/os/Bundle;
    .restart local v3    # "msg":Landroid/os/Message;
    :cond_c
    const/4 v4, 0x1

    if-ne p3, v4, :cond_d

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "5 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1243
    :cond_d
    const/4 v4, 0x2

    if-ne p3, v4, :cond_e

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "10 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1244
    :cond_e
    const/4 v4, 0x3

    if-ne p3, v4, :cond_f

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "20 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1245
    :cond_f
    const/4 v4, 0x4

    if-ne p3, v4, :cond_10

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "30 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1246
    :cond_10
    const/4 v4, 0x5

    if-ne p3, v4, :cond_a

    const-string/jumbo v4, "extra"

    const-string/jumbo v5, "60 MINS"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1162
    :sswitch_data_0
    .sparse-switch
        0x7f11077a -> :sswitch_0
        0x7f110781 -> :sswitch_1
        0x7f11078f -> :sswitch_2
        0x7f110790 -> :sswitch_3
        0x7f110792 -> :sswitch_4
        0x7f110794 -> :sswitch_5
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1265
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1149
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .param p1, "hasFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 1321
    const-string/jumbo v0, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1322
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1323
    const-string/jumbo v3, "isWifiApSettingUserModificationAllowed"

    move-object v4, v2

    move-object v5, v2

    .line 1322
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1324
    .local v6, "cr":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 1325
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11077a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110780

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    .line 1329
    if-eqz v6, :cond_1

    .line 1331
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1332
    const-string/jumbo v0, "isWifiApSettingUserModificationAllowed"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1333
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1334
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1336
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1337
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11077c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1338
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110786

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1348
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1352
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->validate()V

    .line 1320
    return-void

    .line 1340
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1341
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsid:Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1342
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSecurity:Landroid/widget/Spinner;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1344
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f11077c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1345
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v2, 0x7f110786

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1347
    :catchall_0
    move-exception v0

    .line 1348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1347
    throw v0
.end method

.method public setSaveButtonClicked(Z)V
    .locals 0
    .param p1, "click"    # Z

    .prologue
    .line 1560
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSaveButtonClicked:Z

    .line 1559
    return-void
.end method

.method public setTimeoutValueChangedFlag(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1312
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->isTimeoutValueChanged:Z

    .line 1311
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    const v2, 0x7f110787

    .line 859
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 860
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    const v1, 0x7f110786

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 865
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 866
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 858
    :cond_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public showHideSsidWarningDialog()V
    .locals 5

    .prologue
    .line 1411
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1412
    .local v0, "ad":Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040345

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    .line 1413
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11079b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    .line 1414
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11075a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mHideSsidDoNotShowAgain:Landroid/widget/CheckBox;

    .line 1415
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    const v3, 0x7f11079a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1416
    .local v1, "wifiApBroadcastNetworkNameMsg":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0de7

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1417
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0de5

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1418
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->customView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1419
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$6;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    const v3, 0x7f0b14b6

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1431
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec$7;-><init>(Lcom/samsung/android/settings/wifi/WifiApDialogSec;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 1436
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 1437
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1410
    return-void
.end method

.method public showSoftInput()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1395
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1398
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1399
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1400
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x15

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1401
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1402
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1394
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_1
    return-void

    .line 1396
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 1403
    .restart local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1404
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method
