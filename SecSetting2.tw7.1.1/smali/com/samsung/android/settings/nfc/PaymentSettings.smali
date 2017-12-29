.class public Lcom/samsung/android/settings/nfc/PaymentSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "PaymentSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/PaymentSettings$1;,
        Lcom/samsung/android/settings/nfc/PaymentSettings$2;,
        Lcom/samsung/android/settings/nfc/PaymentSettings$3;,
        Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;,
        Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field public static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field public static PaymentAppName_backup:Landroid/content/ComponentName;

.field private static final SALES_CODE:Ljava/lang/String;

.field private static TAP_AND_PAY_DEFAULT_CUSTOM_PAYMENT_SERVICE:I

.field private static final isSupportFelica:Z


# instance fields
.field private isDisabled:Z

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/preference/PreferenceScreen;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/PaymentSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 81
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    .line 93
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 94
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 95
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isSupportFelica:Z

    .line 76
    return-void

    .line 95
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 84
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    .line 113
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 351
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 444
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    .line 76
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f00bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 260
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PaymentSettings"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_4

    .line 262
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 264
    .local v0, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-boolean v1, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-nez v1, :cond_4

    .line 266
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 267
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    .line 270
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->isSupportFelica:Z

    if-eqz v1, :cond_1

    .line 271
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/settings/nfc/PaymentSettings$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$4;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    .line 277
    const-wide/16 v4, 0x12c

    .line 271
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 281
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    .line 283
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "PaymentSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick() backup component : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 285
    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 259
    .end local v0    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_4
    return-void

    .line 286
    .restart local v0    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->TAP_AND_PAY_DEFAULT_CUSTOM_PAYMENT_SERVICE:I

    .line 287
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f00bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->TAP_AND_PAY_DEFAULT_CUSTOM_PAYMENT_SERVICE:I

    invoke-static {v1, v2, v3}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;II)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 229
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 228
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 133
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 134
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    .line 139
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    .line 129
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 340
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 342
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 343
    const-string/jumbo v3, "payment_service_search_uri"

    .line 342
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "searchUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    const v2, 0x7f0b0b8c

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 346
    .local v0, "menuItem":Landroid/view/MenuItem;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 347
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 339
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 221
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PaymentSettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0401c2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 224
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    sget-boolean v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PaymentSettings"

    const-string/jumbo v5, "onLongClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v4, :cond_1

    .line 238
    const-string/jumbo v0, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    .line 239
    .local v0, "HCE_SUB_SETTING":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 240
    .local v1, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v4, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 241
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    .line 242
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 245
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 246
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .end local v1    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 250
    .restart local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .restart local v1    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .restart local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 251
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v4, "PaymentSettings"

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

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 327
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isSupportFelica:Z

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 333
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 335
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "NfcTapAndPaySettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    .line 326
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 421
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 423
    const/4 v0, 0x1

    return v0

    .line 425
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 297
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "PaymentSettings"

    const-string/jumbo v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 300
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->isSupportFelica:Z

    if-eqz v3, :cond_1

    .line 301
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 302
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "com.android.nfc.cardemulation.UiccAccess.ACTION_RETRY"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 306
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 307
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_2

    const-string/jumbo v3, "PaymentSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onResume() backup component : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_2
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->isSupportFelica:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "SBM"

    sget-object v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 311
    new-instance v2, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    .line 312
    .local v2, "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 313
    .local v0, "clfLock":I
    if-eqz v0, :cond_4

    .line 314
    sget-boolean v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "PaymentSettings"

    const-string/jumbo v4, "NFC Locked. nfc_tapandpay_not_available"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->finishFragment()V

    .line 316
    return-void

    .line 320
    .end local v0    # "clfLock":I
    .end local v2    # "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 322
    iget-object v3, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v6, "NfcTapAndPaySettings"

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    .line 296
    return-void
.end method

.method public refresh()V
    .locals 18

    .prologue
    .line 143
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "refresh"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v8

    .line 149
    .local v8, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 151
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 152
    .local v9, "description":Landroid/preference/Preference;
    const v2, 0x7f0401e8

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 153
    const v2, 0x7f0b0b85

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 156
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "appInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 158
    .local v4, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 159
    .local v1, "preference":Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v2, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v2, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 164
    :cond_1
    const-string/jumbo v2, "PaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t load banner drawable of service "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v1    # "preference":Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    .end local v4    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v7    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "description":Landroid/preference/Preference;
    :cond_2
    const/4 v10, 0x0

    .line 170
    .local v10, "emptyImage":Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 172
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 174
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105ba

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyImage":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 175
    .local v10, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v11, Landroid/widget/LinearLayout;

    .line 177
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 178
    .local v13, "emptyLayoutVert":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    .end local v13    # "emptyLayoutVert":Landroid/widget/LinearLayout;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 191
    .local v16, "hasSoftkey":Z
    if-eqz v16, :cond_4

    .line 192
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 196
    :goto_2
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/AnimationDrawable;

    .line 197
    .local v15, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 207
    .end local v15    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v16    # "hasSoftkey":Z
    :goto_3
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.settings.action.NFC_PAYMENT_REFRESH"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v17, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.widgetapp.tapandpay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 210
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 215
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 142
    return-void

    .line 182
    .end local v17    # "newIntent":Landroid/content/Intent;
    .local v10, "emptyImage":Landroid/widget/ImageView;
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyImage":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 183
    .local v10, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105b7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v11, Landroid/widget/LinearLayout;

    .line 185
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1105b9

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 186
    .local v12, "emptyLayoutLand":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 194
    .end local v12    # "emptyLayoutLand":Landroid/widget/LinearLayout;
    .restart local v16    # "hasSoftkey":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 201
    .end local v16    # "hasSoftkey":Z
    :cond_5
    new-instance v14, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 201
    invoke-direct {v14, v2, v3}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    .line 203
    .local v14, "foreground":Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 204
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 205
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3

    .line 213
    .end local v14    # "foreground":Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
    .restart local v17    # "newIntent":Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    goto :goto_5
.end method

.method public restoreDefaultAppStatus(Z)Z
    .locals 4
    .param p1, "isBufferFull"    # Z

    .prologue
    const/4 v3, 0x1

    .line 430
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultAppStatus() - isBufferFull : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    if-eqz p1, :cond_1

    .line 433
    const-string/jumbo v0, "PaymentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "LMRT is full, so restore default app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 435
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 439
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->isDisabled:Z

    .line 440
    return v3
.end method
