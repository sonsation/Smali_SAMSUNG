.class public Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;
.super Ljava/lang/Object;
.source "WifiConfigControllerBase.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;,
        Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;
    }
.end annotation


# static fields
.field protected static final DBG:Z

.field private static final mApMaskCheckVsie:[I

.field private static final mIgnorableApMASK:[I


# instance fields
.field protected focusListener:Landroid/view/View$OnFocusChangeListener;

.field protected final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field protected mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field protected mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field protected final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field protected mContext:Landroid/content/Context;

.field protected mDns1View:Landroid/widget/EditText;

.field protected mDns2View:Landroid/widget/EditText;

.field protected mEapAnonymousErrorText:Landroid/widget/TextView;

.field protected mEapAnonymousView:Landroid/widget/EditText;

.field protected mEapCaCertSpinner:Landroid/widget/Spinner;

.field protected mEapDomainView:Landroid/widget/TextView;

.field protected mEapIdentityErrorText:Landroid/widget/TextView;

.field protected mEapIdentityView:Landroid/widget/EditText;

.field protected mEapMethodSpinner:Landroid/widget/Spinner;

.field protected mEapUserCertSpinner:Landroid/widget/Spinner;

.field mEditTexts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private mGateway:Ljava/lang/String;

.field protected mGatewayView:Landroid/widget/EditText;

.field protected mInitDnsAddress:Ljava/lang/String;

.field protected mInitDnsAddress2:Ljava/lang/String;

.field protected mInitGwAddress:Ljava/lang/String;

.field protected mInitIpAddress:Ljava/lang/String;

.field protected mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected final mInputManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mIpAddressView:Landroid/widget/EditText;

.field protected mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field protected mIpSettingsSpinner:Landroid/widget/Spinner;

.field protected mIsCheckedCckm:Z

.field protected mIsCheckedFt:Z

.field protected mIsRequestHideKeyboard:Z

.field protected mLinkProperties:Landroid/net/LinkProperties;

.field protected mMode:I

.field protected mNetworkPrefixLengthView:Landroid/widget/TextView;

.field protected mPasswordErrorText:Landroid/widget/TextView;

.field protected mPasswordView:Landroid/widget/EditText;

.field protected mPasswordWatcher:Landroid/text/TextWatcher;

.field protected mPhase1Spinner:Landroid/widget/Spinner;

.field protected mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPhase2Spinner:Landroid/widget/Spinner;

.field protected mProxyAuthId:Landroid/widget/TextView;

.field protected mProxyAuthPassword:Landroid/widget/TextView;

.field protected mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field protected mProxyExclusionListView:Landroid/widget/TextView;

.field protected mProxyHostErrorText:Landroid/widget/TextView;

.field protected mProxyHostView:Landroid/widget/EditText;

.field protected mProxyPacView:Landroid/widget/TextView;

.field protected mProxyPortView:Landroid/widget/TextView;

.field protected mProxySettingsSpinner:Landroid/widget/Spinner;

.field protected mSecuritySpinner:Landroid/widget/Spinner;

.field protected mShowPasswordView:Landroid/widget/CheckBox;

.field private mSpinnerTintColor:I

.field protected mSsidErrorText:Landroid/widget/TextView;

.field protected mSsidView:Landroid/widget/EditText;

.field protected mSsidWatcher:Landroid/text/TextWatcher;

.field private mTempSsid:Ljava/lang/String;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field protected final mView:Landroid/view/View;

.field protected final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    .line 495
    new-array v0, v3, [I

    const v1, 0x2ba8c0

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    .line 496
    new-array v0, v3, [I

    const v1, 0xa14ac

    aput v1, v0, v2

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    .line 97
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;ILandroid/os/Bundle;)V
    .locals 4
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settingslib/wifi/AccessPoint;
    .param p4, "mode"    # I
    .param p5, "args"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 122
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 123
    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    .line 155
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 156
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 157
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    .line 158
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    .line 159
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 160
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 185
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    .line 724
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    .line 909
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    .line 1439
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$1;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 1500
    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTempSsid:Ljava/lang/String;

    .line 1501
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$2;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    .line 1548
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$3;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    .line 190
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 191
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    .line 193
    iput-object p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 194
    if-nez p3, :cond_1

    :goto_0
    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    .line 195
    iput p4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    .line 196
    if-eqz p5, :cond_0

    .line 197
    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string/jumbo v1, "args_linkproperties"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mLinkProperties:Landroid/net/LinkProperties;

    .line 202
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 203
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 204
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0242

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    .line 206
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->getInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 207
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 189
    return-void

    .line 194
    .end local v0    # "res":Landroid/content/res/Resources;
    :cond_1
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    goto :goto_0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f1104f7

    const/4 v10, 0x1

    .line 457
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 458
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->loginUrl:Ljava/lang/String;

    .line 460
    .local v5, "url":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 461
    const-string/jumbo v7, "WifiConfigController"

    const-string/jumbo v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    return-void

    .line 465
    :cond_0
    const-string/jumbo v7, "\""

    const-string/jumbo v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 466
    move-object v2, v5

    .line 468
    .local v2, "linkName":Ljava/lang/String;
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const-string/jumbo v8, "//"

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    .line 469
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_1

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "//"

    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "front":Ljava/lang/String;
    const-string/jumbo v7, "//"

    invoke-virtual {v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 472
    .local v3, "rear":Ljava/lang/String;
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_2

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 474
    const-string/jumbo v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 476
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    .end local v1    # "front":Ljava/lang/String;
    .end local v3    # "rear":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0403be

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 482
    .local v4, "row":Landroid/view/View;
    const v7, 0x7f1102a6

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    .line 483
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 485
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 486
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 487
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 488
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 489
    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 490
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 491
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 492
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 456
    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 1141
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1142
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    .line 1143
    return v3

    .line 1146
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 1147
    const/4 v1, 0x1

    return v1

    .line 1141
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1151
    :cond_2
    return v3
.end method

.method private findEditTextFromLayout(Landroid/view/ViewGroup;)V
    .locals 3
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 773
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    return-void

    .line 776
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 777
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 778
    .local v0, "childView":Landroid/view/View;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 779
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "childView":Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 776
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 780
    .restart local v0    # "childView":Landroid/view/View;
    :cond_2
    instance-of v2, v0, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 781
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v0, Landroid/widget/EditText;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 772
    :cond_3
    return-void
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 9
    .param p1, "inetAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 864
    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "generateBlankFields"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    const/4 v4, -0x1

    .line 867
    .local v4, "networkPrefixLength":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 869
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 870
    const v8, 0x7f0b01dc

    .line 869
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 871
    const/16 v4, 0x18

    .line 883
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 886
    :try_start_0
    invoke-static {p1, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v3

    .line 887
    .local v3, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 888
    .local v0, "addr":[B
    array-length v6, v0

    add-int/lit8 v6, v6, -0x1

    const/4 v7, 0x1

    aput-byte v7, v0, v6

    .line 889
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2

    .line 895
    .end local v0    # "addr":[B
    .end local v3    # "netPart":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 897
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0b01d9

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :cond_2
    return-void

    .line 874
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 875
    if-ltz v4, :cond_4

    const/16 v6, 0x20

    if-le v4, v6, :cond_0

    .line 876
    :cond_4
    const/16 v4, 0x18

    goto :goto_0

    .line 878
    :catch_0
    move-exception v1

    .line 879
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v4, 0x18

    goto :goto_0

    .line 890
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    .local v2, "ee":Ljava/lang/RuntimeException;
    goto :goto_1

    .line 891
    .end local v2    # "ee":Ljava/lang/RuntimeException;
    :catch_2
    move-exception v5

    .local v5, "u":Ljava/net/UnknownHostException;
    goto :goto_1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .param p2, "getType"    # I

    .prologue
    .line 1155
    const/4 v2, 0x0

    .line 1156
    .local v2, "ipv4Address":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1157
    .local v4, "startIdx":I
    const/4 v0, 0x0

    .line 1158
    .local v0, "endIdx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1160
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_3

    .line 1161
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_0

    .line 1162
    add-int/lit8 v4, v1, 0x2

    .line 1163
    move v1, v4

    .line 1166
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x2f

    if-ne v5, v6, :cond_2

    if-eqz v4, :cond_2

    .line 1167
    move v0, v1

    .line 1168
    const/4 v5, 0x1

    if-ne p2, v5, :cond_1

    .line 1169
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1174
    .local v2, "ipv4Address":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 1171
    .local v2, "ipv4Address":Ljava/lang/String;
    :cond_1
    add-int/lit8 v5, v1, 0x1

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .local v2, "ipv4Address":Ljava/lang/String;
    goto :goto_1

    .line 1160
    .local v2, "ipv4Address":Ljava/lang/String;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1178
    :cond_3
    return-object v2
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "resId"    # I

    .prologue
    .line 621
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 622
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    .line 623
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 622
    const v3, 0x7f0403d7

    .line 621
    invoke-direct {v0, v1, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 624
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 625
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 620
    return-void
.end method

.method private setAutoReconnectEnabled(Z)V
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 686
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 687
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_0

    .line 688
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput v3, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    .line 690
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 691
    .local v2, "msg":Landroid/os/Message;
    const/16 v3, 0x47

    iput v3, v2, Landroid/os/Message;->what:I

    .line 692
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 693
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v3, "netId"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 694
    const-string/jumbo v3, "autoReconnect"

    iget v4, v1, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 695
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 698
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;

    invoke-direct {v4, p0, p1, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$6;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;ZLandroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v3, v1, v4}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 685
    .end local v0    # "args":Landroid/os/Bundle;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    .line 688
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public OpenWebPage()V
    .locals 4

    .prologue
    .line 612
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 613
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 610
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 614
    :catch_0
    move-exception v1

    .line 615
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v2, "WifiConfigController"

    const-string/jumbo v3, "Go to Webpage: Activity not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    .line 498
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v8, :cond_0

    return-void

    .line 499
    :cond_0
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 500
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_1

    return-void

    .line 502
    :cond_1
    iget-object v8, v0, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 503
    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: SEC_MOBILE_AP"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void

    .line 507
    :cond_2
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 508
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIgnorableApMASK:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_0
    if-ge v8, v10, :cond_4

    aget v5, v9, v8

    .line 509
    .local v5, "mask":I
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_3

    .line 510
    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "Go to Webpage: Masked Android Hotspot"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void

    .line 508
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 515
    .end local v5    # "mask":I
    :cond_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 516
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mApMaskCheckVsie:[I

    const/4 v8, 0x0

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_7

    aget v5, v9, v8

    .line 517
    .restart local v5    # "mask":I
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v11

    const v12, 0xffffff

    and-int/2addr v11, v12

    if-ne v11, v5, :cond_6

    .line 518
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "WifiConfigController"

    const-string/jumbo v9, "This has a LO Gateway Address"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_5
    return-void

    .line 516
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 524
    .end local v5    # "mask":I
    :cond_7
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 525
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 527
    .local v7, "webpage":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v8}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v8, v9, :cond_9

    .line 528
    iget v8, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v8, :cond_9

    .line 529
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "http://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    .line 530
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    const-string/jumbo v8, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Go to Webpage: gateway addr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    if-eqz v8, :cond_a

    .line 534
    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_8

    sget v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageHTTPResponse:I

    const/16 v9, 0x191

    if-ne v8, v9, :cond_9

    .line 535
    :cond_8
    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v8}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0403be

    const/4 v10, 0x0

    invoke-virtual {v8, v9, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 536
    .local v6, "row":Landroid/view/View;
    const v8, 0x7f1102a6

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, p2}, Landroid/widget/TextView;->setText(I)V

    .line 537
    new-instance v1, Landroid/text/SpannableString;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 538
    .local v1, "content":Landroid/text/SpannableString;
    new-instance v8, Landroid/text/style/UnderlineSpan;

    invoke-direct {v8}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v9

    const/4 v10, 0x0

    const/16 v11, 0x21

    invoke-virtual {v1, v8, v10, v9, v11}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 539
    const v8, 0x7f1104f7

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    const v8, 0x7f1104f7

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;

    invoke-direct {v9, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$4;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 549
    const/4 v8, 0x1

    sput-boolean v8, Lcom/samsung/android/settings/wifi/WifiSettingsBase;->goToWebPageLinkViewed:Z

    .line 497
    .end local v1    # "content":Landroid/text/SpannableString;
    .end local v6    # "row":Landroid/view/View;
    :cond_9
    :goto_2
    return-void

    .line 552
    :cond_a
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;

    invoke-direct {v3, p0, p1, p2, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$5;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/ViewGroup;ILjava/lang/StringBuilder;)V

    .line 604
    .local v3, "gatewayTask":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/Integer;>;"
    sget-object v8, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGateway:Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v3, v8, v9}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2
.end method

.method protected addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 440
    const/4 v1, 0x0

    .line 441
    .local v1, "row":Landroid/view/View;
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 442
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    .line 444
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f11091c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 445
    .local v0, "dialogContainer":Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 446
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 445
    invoke-virtual {v0, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 447
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0403af

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 451
    .end local v0    # "dialogContainer":Landroid/widget/LinearLayout;
    .local v1, "row":Landroid/view/View;
    :goto_0
    const v2, 0x7f1102a6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(I)V

    .line 452
    const v2, 0x7f1104f7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 439
    return-void

    .line 449
    .local v1, "row":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0403b0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .local v1, "row":Landroid/view/View;
    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$9;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$9;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1481
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1491
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1619
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1620
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1621
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 1622
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1624
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1625
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1627
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 1628
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1630
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 1631
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1634
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 1635
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1637
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_6

    .line 1638
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->semDismissPopup()V

    .line 1615
    :cond_6
    return-void
.end method

.method protected enableSubmitIfAppropriate()V
    .locals 3

    .prologue
    .line 1247
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1248
    .local v0, "submit":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1249
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1252
    if-eqz v0, :cond_1

    .line 1253
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1246
    :cond_1
    return-void
.end method

.method protected getDefaultEapFieldsIndex()I
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 1020
    const/4 v0, 0x0

    .line 1022
    .local v0, "index":I
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1023
    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v3, "SIM"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1024
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "SingTel"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1025
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1024
    if-eqz v2, :cond_1

    .line 1025
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_1

    .line 1026
    const/4 v0, 0x4

    .line 1047
    :cond_0
    :goto_0
    return v0

    .line 1027
    :cond_1
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "AIS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1028
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1027
    if-eqz v2, :cond_0

    .line 1028
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_0

    .line 1030
    const-string/jumbo v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1031
    .local v1, "simOperator":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string/jumbo v2, "52003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1032
    const/4 v0, 0x4

    goto :goto_0

    .line 1035
    .end local v1    # "simOperator":Ljava/lang/String;
    :cond_2
    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string/jumbo v3, "AKA"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "LGU"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "SKT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string/jumbo v3, "KTT"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1037
    :cond_3
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 1036
    if-eqz v2, :cond_0

    .line 1037
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_0

    .line 1041
    const/4 v0, 0x5

    goto :goto_0
.end method

.method protected getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 903
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getSignalString()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 629
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v3, :cond_1

    .line 630
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 631
    .local v0, "level":I
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c005a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "levels":[Ljava/lang/String;
    const/4 v3, -0x1

    if-le v0, v3, :cond_0

    array-length v3, v1

    if-ge v0, v3, :cond_0

    aget-object v2, v1, v0

    :cond_0
    return-object v2

    .line 635
    .end local v0    # "level":I
    .end local v1    # "levels":[Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method protected hasSubmitButton()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1219
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1220
    return v2

    .line 1222
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1223
    return v2

    .line 1225
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hideForgetButton()V
    .locals 3

    .prologue
    .line 1229
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1230
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    return-void

    .line 1232
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1228
    return-void
.end method

.method protected hideSoftKeyboard()V
    .locals 2

    .prologue
    .line 1314
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1315
    .local v0, "focusedView":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    .line 1313
    return-void
.end method

.method protected hideSoftKeyboard(Landroid/view/View;)V
    .locals 3
    .param p1, "focusedView"    # Landroid/view/View;

    .prologue
    .line 1305
    if-nez p1, :cond_0

    .line 1306
    return-void

    .line 1308
    :cond_0
    const-string/jumbo v0, "WifiConfigController"

    const-string/jumbo v1, "    **** hideSoftKeyboard *****"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 1310
    const/4 v2, 0x2

    .line 1309
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1304
    return-void
.end method

.method public hideSubmitButton()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 1236
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1237
    .local v0, "submit":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 1238
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1240
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getButtonFromType(I)Landroid/widget/Button;

    move-result-object v0

    .line 1241
    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1235
    :cond_1
    return-void
.end method

.method protected initIpConfigFieldsFromLinkProperties(Landroid/net/LinkProperties;)V
    .locals 15
    .param p1, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    .line 1055
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1056
    .local v7, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    const/4 v9, 0x0

    .line 1057
    .local v9, "mIpv4SetupFlag":Z
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1058
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 1059
    .local v8, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1060
    .local v2, "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_1

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields ip "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    :cond_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 1063
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    .line 1064
    .local v5, "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_2

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 1065
    :cond_2
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1066
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    const/4 v9, 0x1

    .line 1082
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v8    # "linkAddress":Landroid/net/LinkAddress;
    :cond_3
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    iget-object v13, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-interface {v13}, Landroid/text/Editable;->length()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setSelection(I)V

    .line 1084
    const/4 v9, 0x0

    .line 1085
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "route$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/RouteInfo;

    .line 1086
    .local v10, "route":Landroid/net/RouteInfo;
    invoke-virtual {v10}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v12}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1087
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_5

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields gw "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_5
    invoke-virtual {v10}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1090
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 1091
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_6

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 1092
    :cond_6
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1093
    const/4 v9, 0x1

    .line 1104
    .end local v2    # "address":Ljava/lang/String;
    .end local v10    # "route":Landroid/net/RouteInfo;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1105
    .local v4, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/4 v3, 0x0

    .line 1106
    .local v3, "dns":Ljava/net/InetAddress;
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1107
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "dns":Ljava/net/InetAddress;
    check-cast v3, Ljava/net/InetAddress;

    .line 1108
    .local v3, "dns":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 1109
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1123
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1124
    .restart local v3    # "dns":Ljava/net/InetAddress;
    invoke-virtual {v3}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 1125
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    .end local v3    # "dns":Ljava/net/InetAddress;
    :cond_9
    :goto_3
    return-void

    .line 1070
    .end local v4    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v11    # "route$iterator":Ljava/util/Iterator;
    .restart local v2    # "address":Ljava/lang/String;
    .restart local v8    # "linkAddress":Landroid/net/LinkAddress;
    :cond_a
    if-nez v9, :cond_0

    .line 1071
    const/4 v0, 0x1

    .line 1072
    .local v0, "GET_IPV4_ADDR":I
    const/4 v1, 0x2

    .line 1073
    .local v1, "GET_PREFIX_LENGTH":I
    invoke-virtual {v8}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1075
    .local v6, "ipv6Address":Ljava/lang/String;
    invoke-direct {p0, v6, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1076
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-nez v12, :cond_b

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    .line 1077
    :cond_b
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-direct {p0, v6, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1095
    .end local v0    # "GET_IPV4_ADDR":I
    .end local v1    # "GET_PREFIX_LENGTH":I
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v6    # "ipv6Address":Ljava/lang/String;
    .end local v8    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v10    # "route":Landroid/net/RouteInfo;
    .restart local v11    # "route$iterator":Ljava/util/Iterator;
    :cond_c
    if-nez v9, :cond_4

    .line 1096
    const/4 v0, 0x1

    .line 1097
    .restart local v0    # "GET_IPV4_ADDR":I
    invoke-direct {p0, v2, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 1098
    .restart local v5    # "ipv4Address":Ljava/lang/String;
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-nez v12, :cond_d

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    .line 1099
    :cond_d
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v12, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1111
    .end local v0    # "GET_IPV4_ADDR":I
    .end local v2    # "address":Ljava/lang/String;
    .end local v5    # "ipv4Address":Ljava/lang/String;
    .end local v10    # "route":Landroid/net/RouteInfo;
    .restart local v3    # "dns":Ljava/net/InetAddress;
    .restart local v4    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_e
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_f

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns1 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :cond_f
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_11

    .line 1114
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_10

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    .line 1115
    :cond_10
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1117
    :cond_11
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-nez v12, :cond_8

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    goto/16 :goto_2

    .line 1127
    .end local v2    # "address":Ljava/lang/String;
    :cond_12
    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1128
    .restart local v2    # "address":Ljava/lang/String;
    sget-boolean v12, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v12, :cond_13

    const-string/jumbo v12, "WifiConfigController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "showIpConfigFields dns2 "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    :cond_13
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_15

    .line 1130
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_14

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    .line 1131
    :cond_14
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v12, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1133
    :cond_15
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    const-string/jumbo v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-nez v12, :cond_9

    const-string/jumbo v12, ""

    iput-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    goto/16 :goto_3
.end method

.method public isNeedToReconnect()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1262
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v4, :cond_1

    .line 1263
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "new network"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    :cond_0
    return v7

    .line 1265
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1266
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "not active one"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    :cond_2
    return v7

    .line 1269
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v4, v5, :cond_5

    .line 1270
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "change ip assignment method by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    :cond_4
    return v6

    .line 1273
    :cond_5
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1274
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1275
    .local v3, "newIpAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 1276
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed ip address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_6
    return v6

    .line 1280
    .end local v3    # "newIpAddress":Ljava/lang/String;
    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 1281
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1282
    .local v2, "newGwAddress":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitGwAddress:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 1283
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed gateway address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_8
    return v6

    .line 1287
    .end local v2    # "newGwAddress":Ljava/lang/String;
    :cond_9
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 1288
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1289
    .local v0, "newDns1Address":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 1290
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_a

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns1 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_a
    return v6

    .line 1294
    .end local v0    # "newDns1Address":Ljava/lang/String;
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 1295
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1296
    .local v1, "newDns2Address":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInitDnsAddress2:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 1297
    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v4, :cond_c

    const-string/jumbo v4, "WifiConfigController"

    const-string/jumbo v5, "changed dns2 address by user"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    :cond_c
    return v6

    .line 1301
    .end local v1    # "newDns2Address":Ljava/lang/String;
    :cond_d
    return v7
.end method

.method protected isSubmittable()Z
    .locals 1

    .prologue
    .line 1258
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const v9, 0x7f11095e

    const v8, 0x7f11095c

    const/4 v6, 0x0

    .line 640
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v7, 0x7f1108c8

    if-ne v5, v7, :cond_2

    .line 641
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v3

    .line 642
    .local v3, "pos":I
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    .line 643
    if-eqz p2, :cond_1

    const/16 v5, 0x90

    .line 642
    :goto_0
    or-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setInputType(I)V

    .line 645
    if-ltz v3, :cond_0

    .line 646
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 682
    .end local v3    # "pos":I
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    .line 639
    return-void

    .line 644
    .restart local v3    # "pos":I
    :cond_1
    const/16 v5, 0x80

    goto :goto_0

    .line 648
    .end local v3    # "pos":I
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v7, 0x7f11093e

    if-ne v5, v7, :cond_3

    .line 649
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 650
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAutoReconnectEnabled(Z)V

    goto :goto_1

    .line 652
    :cond_3
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v7, 0x7f110940

    if-ne v5, v7, :cond_5

    .line 653
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v7, 0x7f11093f

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 655
    .local v0, "advancedToggle":Landroid/view/View;
    if-eqz p2, :cond_4

    .line 656
    const/4 v4, 0x0

    .line 657
    .local v4, "toggleVisibility":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    .line 658
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v5

    .line 659
    const-string/jumbo v7, "ON"

    .line 658
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    .line 663
    :goto_2
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v6, 0x7f110941

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 661
    .end local v4    # "toggleVisibility":I
    :cond_4
    const/16 v4, 0x8

    .restart local v4    # "toggleVisibility":I
    goto :goto_2

    .line 664
    .end local v0    # "advancedToggle":Landroid/view/View;
    .end local v4    # "toggleVisibility":I
    :cond_5
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    if-ne v5, v8, :cond_6

    .line 665
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 666
    .local v2, "ftCheckbox":Landroid/widget/CheckBox;
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 667
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-eqz v5, :cond_0

    .line 668
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 669
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    .line 671
    .end local v2    # "ftCheckbox":Landroid/widget/CheckBox;
    :cond_6
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    if-ne v5, v9, :cond_7

    .line 672
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v5, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 673
    .local v1, "cckmCheckbox":Landroid/widget/CheckBox;
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 674
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    if-eqz v5, :cond_0

    .line 675
    iput-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 676
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    .line 678
    .end local v1    # "cckmCheckbox":Landroid/widget/CheckBox;
    :cond_7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v5

    const v7, 0x7f110956

    if-ne v5, v7, :cond_0

    .line 679
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v7, 0x7f110957

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz p2, :cond_8

    move v5, v6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 680
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    goto/16 :goto_1

    .line 679
    :cond_8
    const/16 v5, 0x8

    goto :goto_3
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "id"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 854
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 855
    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 857
    const/4 v0, 0x1

    return v0

    .line 860
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    .line 800
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_4

    .line 801
    iput p3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    .line 802
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    .line 805
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showKeyMgmtFields()V

    .line 818
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showWarningMessagesIfAppropriate()V

    .line 819
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->enableSubmitIfAppropriate()V

    .line 820
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->updateImeOptionsForEditText()V

    .line 825
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    .line 827
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    .line 828
    const-string/jumbo v0, "PEAP"

    .line 832
    .local v0, "spinnerValue":Ljava/lang/String;
    :goto_1
    const-string/jumbo v1, "SIM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AKA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "AKA\'"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 833
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    if-nez v1, :cond_9

    .line 834
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    .line 846
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f110941

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 847
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSoftKeyboard()V

    .line 799
    .end local v0    # "spinnerValue":Ljava/lang/String;
    :cond_3
    return-void

    .line 807
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_6

    .line 808
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showSecurityFields()V

    goto :goto_0

    .line 809
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_7

    .line 810
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showProxyFields()V

    .line 811
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_PRX_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 811
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 814
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->showIpConfigFields()V

    .line 815
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/WifiBigDataUtil;

    move-result-object v1

    .line 816
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SP_IP_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 815
    invoke-virtual {v1, v4, v2}, Lcom/samsung/android/settings/wifi/WifiBigDataUtil;->insertLog(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 830
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "spinnerValue":Ljava/lang/String;
    goto/16 :goto_1

    .line 836
    :cond_9
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    .line 837
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_2

    .line 840
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 841
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f110940

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_2

    .line 842
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    goto/16 :goto_2
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 1471
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    if-ne p1, v0, :cond_0

    .line 1472
    const/16 v0, 0x42

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->isSubmittable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1473
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1474
    const/4 v0, 0x1

    return v0

    .line 1477
    :cond_0
    const/4 v0, 0x0

    return v0
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
    .line 1465
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
    .line 1496
    return-void
.end method

.method protected setInvisibleAutoReconnectView()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11093d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 333
    return-void
.end method

.method protected setVisibleAutoReconnectView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 307
    sget-boolean v1, Lcom/android/settings/Utils;->SUPPORT_AUTO_RECONNECT:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/settings/Utils;->ENABLE_WIFI_CONNECTION_TYPE:Z

    if-eqz v1, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_3

    .line 309
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 311
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_3

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 312
    :cond_2
    return-void

    .line 316
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f11093d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 317
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v2, 0x7f11093e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 319
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 321
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    .line 322
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 324
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_4

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->autoReconnect:I

    if-nez v1, :cond_4

    .line 325
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 329
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected setupAdvancedOptionsView()V
    .locals 2

    .prologue
    .line 300
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11093f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 301
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110940

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 299
    return-void
.end method

.method protected setupApInformation()V
    .locals 15

    .prologue
    const v14, 0x7f1105e7

    const v11, 0x7f0b1567

    const v13, 0x7f0b0ef4

    const/4 v12, 0x0

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, "group":Landroid/view/ViewGroup;
    iget v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v9, :cond_5

    .line 352
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "group":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .line 357
    .local v3, "group":Landroid/view/ViewGroup;
    :goto_0
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    .line 359
    .local v5, "info":Landroid/net/wifi/WifiInfo;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 361
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v9

    if-lez v9, :cond_0

    .line 362
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "Mbps"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 363
    .local v6, "linkSpeed":Ljava/lang/String;
    const v9, 0x7f0b1563

    invoke-virtual {p0, v3, v9, v6}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 368
    .end local v6    # "linkSpeed":Ljava/lang/String;
    :cond_0
    move-object v4, v3

    .line 369
    .local v4, "group2":Landroid/view/ViewGroup;
    iget v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    if-nez v9, :cond_1

    .line 370
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v9, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .end local v4    # "group2":Landroid/view/ViewGroup;
    check-cast v4, Landroid/view/ViewGroup;

    .line 372
    .restart local v4    # "group2":Landroid/view/ViewGroup;
    :cond_1
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9, v12}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b1562

    invoke-virtual {p0, v4, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 374
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 376
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 377
    .local v1, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v9

    sget-object v10, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v9, v10, :cond_6

    .line 379
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v8

    .line 380
    .local v8, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v8, :cond_2

    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v9, :cond_2

    .line 382
    iget-object v9, v8, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v9}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v9

    invoke-virtual {v9}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v9

    .line 381
    invoke-virtual {p0, v3, v11, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 415
    .end local v8    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 417
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v10, 0x7f0b1569

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    .line 418
    iget-object v11, v1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v11, v10, v12

    .line 417
    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 416
    const v10, 0x7f0b1568

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 421
    :cond_3
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 423
    .local v7, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v9

    const-string/jumbo v10, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual {v9, v10}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 424
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    check-cast v9, Lcom/android/settings/wifi/WifiDialog;

    iget-boolean v9, v9, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    if-nez v9, :cond_4

    .line 425
    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v9, :cond_4

    iget v9, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 426
    iget-boolean v9, v1, Landroid/net/wifi/WifiConfiguration;->isCaptivePortal:Z

    if-nez v9, :cond_d

    .line 427
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->isVendorAp()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 349
    .end local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v7    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_4
    :goto_2
    return-void

    .line 354
    .end local v4    # "group2":Landroid/view/ViewGroup;
    .end local v5    # "info":Landroid/net/wifi/WifiInfo;
    .local v3, "group":Landroid/view/ViewGroup;
    :cond_5
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v10, 0x7f110941

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3    # "group":Landroid/view/ViewGroup;
    check-cast v3, Landroid/view/ViewGroup;

    .local v3, "group":Landroid/view/ViewGroup;
    goto/16 :goto_0

    .line 385
    .restart local v1    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v4    # "group2":Landroid/view/ViewGroup;
    .restart local v5    # "info":Landroid/net/wifi/WifiInfo;
    :cond_6
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 386
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    .line 387
    .restart local v7    # "state":Landroid/net/NetworkInfo$DetailedState;
    if-eqz v2, :cond_7

    sget-object v9, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v7, v9, :cond_7

    .line 388
    iget v9, v2, Landroid/net/DhcpInfo;->ipAddress:I

    if-eqz v9, :cond_7

    .line 389
    iget v9, v2, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v3, v11, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 392
    :cond_7
    sget-boolean v9, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v9, :cond_2

    iget v9, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    if-nez v9, :cond_2

    .line 393
    iget v9, v2, Landroid/net/DhcpInfo;->netmask:I

    if-eqz v9, :cond_8

    .line 394
    iget v9, v2, Landroid/net/DhcpInfo;->netmask:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b0ec3

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 396
    :cond_8
    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v9, :cond_9

    .line 397
    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b15af

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 399
    :cond_9
    iget v9, v2, Landroid/net/DhcpInfo;->dns1:I

    if-eqz v9, :cond_a

    .line 400
    iget v9, v2, Landroid/net/DhcpInfo;->dns1:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b15ad

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 402
    :cond_a
    iget v9, v2, Landroid/net/DhcpInfo;->dns2:I

    if-eqz v9, :cond_b

    .line 403
    iget v9, v2, Landroid/net/DhcpInfo;->dns2:I

    invoke-static {v9}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b15ae

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 405
    :cond_b
    if-eqz v5, :cond_2

    .line 406
    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    .line 407
    .local v0, "ap_mac":Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    .line 408
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0b0ec4

    invoke-virtual {p0, v3, v10, v9}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 428
    .end local v0    # "ap_mac":Ljava/lang/String;
    .end local v2    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_c
    invoke-virtual {p0, v3, v13}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addGatewayRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_2

    .line 431
    :cond_d
    invoke-direct {p0, v4, v13}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_2
.end method

.method protected setupConnectionWarningView()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 339
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v3, 0x7f11019d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 340
    .local v0, "infoMsg":Landroid/widget/TextView;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_0

    .line 341
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, "ssid":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 343
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v5

    const v4, 0x7f0b0ec1

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    .end local v1    # "ssid":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected setupEapPhase()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110924

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 291
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 292
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0067

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 294
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110926

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 295
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 296
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0069

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 288
    return-void
.end method

.method protected setupIpAndProxySettings()V
    .locals 3

    .prologue
    const v2, 0x7f110956

    .line 269
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110943

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 271
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c006a

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 273
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11094c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 277
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 278
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 279
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c006b

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110955

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 284
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 285
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 267
    return-void
.end method

.method protected setupPasswordView()V
    .locals 6

    .prologue
    const v5, 0x7f1108c8

    const/4 v4, 0x0

    .line 244
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110874

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    .line 245
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f110938

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b0f6f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 247
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 248
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 249
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 250
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 251
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 253
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 254
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 256
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    .line 257
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 258
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 259
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    const v2, 0x7f0b1a46

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d024e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPasswordView:Landroid/widget/EditText;

    const v1, 0x7f0b1578

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 243
    :cond_1
    return-void
.end method

.method protected setupSecuritySpinner()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1108c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 224
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSpinnerTintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 225
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 226
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 228
    sget-boolean v0, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0045

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 222
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSecuritySpinner:Landroid/widget/Spinner;

    const v1, 0x7f0c0043

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    goto :goto_0
.end method

.method protected setupSsidView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 211
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f1108c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    .line 212
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11091d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidErrorText:Landroid/widget/TextView;

    .line 213
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x7f0b1561

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 214
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 215
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 216
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    const v1, 0x8000

    invoke-virtual {v0, v1, v4}, Landroid/widget/EditText;->semSetActionModeMenuItemEnabled(IZ)V

    .line 218
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 219
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    new-array v1, v5, [Landroid/text/InputFilter;

    new-instance v2, Lcom/android/settings/Utils$EmojiInputFilter;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/Utils$EmojiInputFilter;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 210
    return-void
.end method

.method protected showEapFieldsByMethod(I)V
    .locals 0
    .param p1, "eapMethod"    # I

    .prologue
    .line 1051
    return-void
.end method

.method protected showIpConfigFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1182
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1183
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1184
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    .end local v0    # "args":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1187
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1188
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 1189
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1190
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1191
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1192
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1193
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f11095e

    const v6, 0x7f11095d

    const v5, 0x7f11095c

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1371
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 1372
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1373
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1374
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1379
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1380
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1381
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1386
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 1387
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1389
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1370
    :cond_1
    :goto_1
    return-void

    .line 1376
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1391
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1394
    :cond_4
    const-string/jumbo v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1396
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1395
    if-nez v0, :cond_5

    .line 1397
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1395
    if-eqz v0, :cond_8

    .line 1398
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1404
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1405
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1408
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    .line 1409
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1410
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1411
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1412
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 1419
    :cond_7
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 1420
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getKeyMgmts()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1422
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1424
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 1425
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    .line 1426
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1427
    iget v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1428
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 1429
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 1400
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    const v1, 0x7f11095a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1434
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method protected showProxyFields()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1200
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1201
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1202
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1203
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1199
    .end local v0    # "args":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1205
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1206
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyHostView:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1207
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1208
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1209
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1210
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected showSecurityFields()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 995
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    if-eqz v1, :cond_0

    .line 996
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->focusListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 997
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToShowPasswordHiddenView(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 998
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 999
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1004
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1005
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 1006
    .local v0, "args":[Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToUseEnterpriseSsid(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->isAllowedToChangeUserPolicy(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 994
    .end local v0    # "args":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 1001
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mShowPasswordView:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_0

    .line 1008
    .restart local v0    # "args":[Ljava/lang/String;
    :cond_3
    const-string/jumbo v1, "WifiPolicy"

    const-string/jumbo v2, "Enterprise Wifi settings not editable"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1010
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1011
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1012
    :cond_6
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1013
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected showSoftKeyboard()V
    .locals 4

    .prologue
    .line 1319
    sget-boolean v1, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showSoftKeyboard requestHideKeyboard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIsRequestHideKeyboard:Z

    if-eqz v1, :cond_1

    .line 1321
    return-void

    .line 1324
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1325
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1326
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v1

    if-eqz v1, :cond_3

    .line 1327
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard : ignored (Accessory Keyboard Mode) *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1318
    :cond_2
    :goto_0
    return-void

    .line 1329
    :cond_3
    const-string/jumbo v1, "WifiConfigController"

    const-string/jumbo v2, "    **** showSoftKeyboard *****"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method

.method public showSoftKeyboardOnResume()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v4, 0x0

    .line 1336
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1337
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    .line 1338
    .local v2, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 1339
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1340
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 1341
    .local v1, "focusedView":Landroid/view/View;
    if-nez v1, :cond_1

    .line 1342
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 1343
    .local v0, "editText":Landroid/widget/EditText;
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;

    invoke-direct {v3, p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$7;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/widget/EditText;)V

    invoke-virtual {v0, v3, v6, v7}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1335
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "focusedView":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1355
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_1
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;

    invoke-direct {v3, p0, v1}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase$8;-><init>(Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;Landroid/view/View;)V

    invoke-virtual {v1, v3, v6, v7}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected showWarningMessagesIfAppropriate()V
    .locals 0

    .prologue
    .line 1215
    return-void
.end method

.method protected updateImeOptionsForEditText()V
    .locals 9

    .prologue
    .line 726
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 727
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 729
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    .line 730
    .local v5, "viewGroup":Landroid/view/ViewGroup;
    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->findEditTextFromLayout(Landroid/view/ViewGroup;)V

    .line 732
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - prev:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " new:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    .line 735
    .local v2, "focusedView":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 736
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 737
    .local v0, "editText":Landroid/widget/EditText;
    const/4 v6, 0x5

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 738
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v3, v6, :cond_1

    .line 739
    const/4 v6, 0x6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 742
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v0}, Landroid/widget/EditText;->getId()I

    move-result v7

    if-ne v6, v7, :cond_3

    .line 743
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateImeOptions - keyboard shown:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->semIsInputMethodShown()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 735
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 749
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_4
    if-eqz v2, :cond_8

    instance-of v6, v2, Landroid/widget/EditText;

    if-eqz v6, :cond_8

    .line 750
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mEditTexts:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/EditText;

    .end local v2    # "focusedView":Landroid/view/View;
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 751
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_5

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is invisible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard()V

    .line 768
    :cond_6
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 769
    const/4 v4, 0x0

    .line 725
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    return-void

    .line 754
    .local v4, "prevEditTexts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/widget/EditText;>;"
    :cond_7
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is visible"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 757
    .restart local v2    # "focusedView":Landroid/view/View;
    :cond_8
    sget-boolean v6, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "WifiConfigController"

    const-string/jumbo v7, "updateImeOptions - focused view is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 759
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "editText$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 760
    .restart local v0    # "editText":Landroid/widget/EditText;
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mInputManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6, v0}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 761
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->hideSoftKeyboard(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 14
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 911
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    if-nez v11, :cond_0

    const/4 v11, 0x0

    return v11

    .line 913
    :cond_0
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    .line 914
    .local v8, "ipAddr":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 915
    const v11, 0x7f0b15a9

    return v11

    .line 918
    :cond_1
    invoke-virtual {p0, v8}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v7

    .line 919
    .local v7, "inetAddr":Ljava/net/Inet4Address;
    if-nez v7, :cond_2

    .line 920
    const v11, 0x7f0b15a9

    return v11

    .line 924
    :cond_2
    :try_start_0
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_3

    .line 925
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    .line 926
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :cond_3
    const/4 v10, -0x1

    .line 932
    .local v10, "networkPrefixLength":I
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    .line 933
    .local v9, "networkPrefix":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 934
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mAutoGenFirstTime:Z

    if-eqz v11, :cond_6

    .line 935
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v12}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 936
    const v13, 0x7f0b01dc

    .line 935
    invoke-virtual {v12, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 943
    :cond_4
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 944
    if-ltz v10, :cond_5

    const/16 v11, 0x20

    if-le v10, v11, :cond_7

    .line 945
    :cond_5
    const v11, 0x7f0b15ac

    return v11

    .line 928
    .end local v9    # "networkPrefix":Ljava/lang/String;
    .end local v10    # "networkPrefixLength":I
    :catch_0
    move-exception v3

    .line 929
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b15a9

    return v11

    .line 938
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v9    # "networkPrefix":Ljava/lang/String;
    .restart local v10    # "networkPrefixLength":I
    :cond_6
    const v11, 0x7f0b15ac

    return v11

    .line 947
    :cond_7
    new-instance v11, Landroid/net/LinkAddress;

    invoke-direct {v11, v7, v10}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 952
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v5

    .line 953
    .local v5, "gateway":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_8

    const v11, 0x7f0b15aa

    return v11

    .line 948
    .end local v5    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 949
    .local v4, "e":Ljava/lang/NumberFormatException;
    const v11, 0x7f0b15ac

    return v11

    .line 955
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    .restart local v5    # "gateway":Ljava/lang/String;
    :cond_8
    const/4 v6, 0x0

    .line 957
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 961
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    iput-object v6, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 963
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 964
    .local v0, "dns1":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiConfigControllerBase;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-interface {v11}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 966
    .local v1, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 967
    const v11, 0x7f0b15ab

    return v11

    .line 958
    .end local v0    # "dns1":Ljava/lang/String;
    .end local v1    # "dns2":Ljava/lang/String;
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :catch_2
    move-exception v3

    .line 959
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b15aa

    return v11

    .line 970
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "dns1":Ljava/lang/String;
    .restart local v1    # "dns2":Ljava/lang/String;
    .local v6, "gatewayAddr":Ljava/net/InetAddress;
    :cond_9
    const/4 v2, 0x0

    .line 971
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 973
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 977
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 982
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_a

    .line 984
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 988
    .restart local v2    # "dnsAddr":Ljava/net/InetAddress;
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 991
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :cond_a
    const/4 v11, 0x0

    return v11

    .line 974
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    :catch_3
    move-exception v3

    .line 975
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b15ab

    return v11

    .line 979
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v11, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 985
    .end local v2    # "dnsAddr":Ljava/net/InetAddress;
    :catch_4
    move-exception v3

    .line 986
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v11, 0x7f0b15ab

    return v11
.end method
