.class public Lcom/samsung/android/settings/nfc/OtherSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "OtherSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/OtherSettings$1;,
        Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;,
        Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field private static final SALES_CODE:Ljava/lang/String;

.field private static TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

.field private static final isSupportFelica:Z


# instance fields
.field private isDisabled:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/OtherSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    .line 64
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->SALES_CODE:Ljava/lang/String;

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    .line 53
    return-void

    .line 66
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/OtherSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;Lcom/samsung/android/settings/nfc/OtherSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    .line 274
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/OtherSettings$1;-><init>(Lcom/samsung/android/settings/nfc/OtherSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mHandler:Landroid/os/Handler;

    .line 53
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 212
    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OtherPaymentSettings"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v1, :cond_2

    .line 214
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 216
    .local v0, "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 217
    iput-boolean v5, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    .line 219
    iget-object v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 220
    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v1, :cond_4

    .line 221
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->checkDefaultOtherApp(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 222
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    .line 234
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00c0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    .line 235
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget v3, Lcom/samsung/android/settings/nfc/OtherSettings;->TAP_AND_PAY_CUSTOM_PAYMENT_SERVICES:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 238
    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v1, :cond_2

    .line 239
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 240
    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    .line 211
    .end local v0    # "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    :cond_2
    return-void

    .line 224
    .restart local v0    # "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 227
    :cond_4
    iget-boolean v1, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v1, :cond_5

    .line 228
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 172
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 171
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/OtherBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    .line 86
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 89
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    .line 81
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 165
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 166
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401bf

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 167
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    if-eqz v4, :cond_0

    .line 179
    const-string/jumbo v0, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    .line 180
    .local v0, "HCE_SUB_SETTING":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 181
    .local v1, "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    .line 182
    sget-boolean v4, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v4, :cond_2

    .line 183
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->checkDefaultOtherApp(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 184
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 197
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 198
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/OtherSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .end local v1    # "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_0
    :goto_1
    const/4 v4, 0x1

    return v4

    .line 186
    .restart local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .restart local v1    # "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 189
    :cond_2
    iget-boolean v4, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->isSelected:Z

    if-eqz v4, :cond_3

    .line 190
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 192
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 202
    .restart local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 203
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "OtherPaymentSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "HCE Setting Activity is not found. : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 268
    sget-boolean v0, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OtherPaymentSettings"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 271
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 267
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 248
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OtherPaymentSettings"

    const-string/jumbo v3, "onResume()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 251
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 253
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SBM"

    sget-object v3, Lcom/samsung/android/settings/nfc/OtherSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    .line 255
    .local v1, "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 256
    .local v0, "clfLock":I
    if-eqz v0, :cond_2

    .line 257
    sget-boolean v2, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OtherPaymentSettings"

    const-string/jumbo v3, "NFC Locked. nfc_tapandpay_not_available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->finishFragment()V

    .line 259
    return-void

    .line 263
    .end local v0    # "clfLock":I
    .end local v1    # "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 247
    return-void
.end method

.method public refresh()V
    .locals 15

    .prologue
    .line 93
    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OtherPaymentSettings"

    const-string/jumbo v2, "refresh()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 97
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/OtherBackend;->getOtherAppInfos()Ljava/util/List;

    move-result-object v7

    .line 98
    .local v7, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;>;"
    if-eqz v7, :cond_3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 100
    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v1, :cond_1

    .line 101
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v8, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 102
    .local v8, "description":Landroid/preference/Preference;
    const v1, 0x7f0401e8

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 103
    const v1, 0x7f0b1246

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 105
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v8}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 108
    .end local v8    # "description":Landroid/preference/Preference;
    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "appInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;

    .line 110
    .local v3, "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    new-instance v0, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 111
    .local v0, "preference":Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
    iget-object v1, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->caption:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v1, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/samsung/android/settings/nfc/OtherSettings;->isSupportFelica:Z

    if-eqz v1, :cond_2

    .line 114
    const-string/jumbo v1, "OtherPaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t load banner drawable of service "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v3, Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 121
    .end local v0    # "preference":Lcom/samsung/android/settings/nfc/OtherSettings$OtherAppPreference;
    .end local v3    # "appInfo":Lcom/samsung/android/settings/nfc/OtherBackend$OtherAppInfo;
    .end local v6    # "appInfo$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v9, 0x0

    .line 122
    .local v9, "emptyImage":Landroid/widget/ImageView;
    const/4 v10, 0x0

    .line 124
    .local v10, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105ba

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "emptyImage":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 126
    .local v9, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 128
    .local v10, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 129
    .local v12, "emptyLayoutVert":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    .end local v12    # "emptyLayoutVert":Landroid/widget/LinearLayout;
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_6

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v14

    .line 140
    .local v14, "hasSoftkey":Z
    if-eqz v14, :cond_5

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05003e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    :goto_2
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/AnimationDrawable;

    .line 146
    .local v13, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v13}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 149
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 154
    .end local v13    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v14    # "hasSoftkey":Z
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 155
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 159
    :goto_4
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/OtherSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 92
    return-void

    .line 131
    .local v9, "emptyImage":Landroid/widget/ImageView;
    .local v10, "emptyLayout":Landroid/widget/LinearLayout;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .end local v9    # "emptyImage":Landroid/widget/ImageView;
    check-cast v9, Landroid/widget/ImageView;

    .line 132
    .local v9, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105b7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v10, Landroid/widget/LinearLayout;

    .line 134
    .local v10, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1105b9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 135
    .local v11, "emptyLayoutLand":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 143
    .end local v11    # "emptyLayoutLand":Landroid/widget/LinearLayout;
    .restart local v14    # "hasSoftkey":Z
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05003d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 151
    .end local v14    # "hasSoftkey":Z
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_3

    .line 157
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    iget-boolean v1, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_4

    :cond_8
    const/4 v1, 0x1

    goto :goto_5
.end method

.method public restoreOtherAppStatus(Landroid/content/ComponentName;ZZ)Z
    .locals 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "checked"    # Z
    .param p3, "isBufferFull"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 364
    sget-boolean v3, Lcom/samsung/android/settings/nfc/OtherSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OtherPaymentSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "restoreOtherAppStatus - isBufferFull : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_0
    if-eqz p3, :cond_4

    .line 367
    const-string/jumbo v6, "OtherPaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "LMRT is full, so restore app : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v7, ", expected restore state : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p2, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-static {v3}, Landroid/nfc/cardemulation/CardEmulation;->getInstance(Landroid/nfc/NfcAdapter;)Landroid/nfc/cardemulation/CardEmulation;

    move-result-object v3

    const-string/jumbo v6, "other"

    invoke-virtual {v3, v6}, Landroid/nfc/cardemulation/CardEmulation;->getServices(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 370
    .local v2, "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    .line 371
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "service$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 372
    .local v0, "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 373
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz p2, :cond_6

    .line 375
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isSelectedOtherService()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz p2, :cond_7

    .line 376
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->disableDefaultOtherApp(Landroid/content/ComponentName;)V

    .line 384
    .end local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local v1    # "service$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/OtherSettings;->refresh()V

    .line 387
    .end local v2    # "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_4
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 388
    iput-boolean v4, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->isDisabled:Z

    .line 390
    return v5

    :cond_5
    move v3, v5

    .line 367
    goto :goto_0

    .line 374
    .restart local v0    # "service":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local v1    # "service$iterator":Ljava/util/Iterator;
    .restart local v2    # "serviceInfos":Ljava/util/List;, "Ljava/util/List<Landroid/nfc/cardemulation/ApduServiceInfo;>;"
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/OtherSettings;->mOtherBackend:Lcom/samsung/android/settings/nfc/OtherBackend;

    invoke-virtual {v3, p1}, Lcom/samsung/android/settings/nfc/OtherBackend;->enableDefaultOtherApp(Landroid/content/ComponentName;)V

    goto :goto_1

    .line 378
    :cond_7
    const-string/jumbo v3, "OtherPaymentSettings"

    const-string/jumbo v6, "It doesn\'t need to restore."

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
