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


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private screen:Landroid/preference/PreferenceScreen;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/nfc/PaymentSettings;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentBackend;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    .line 98
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 100
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

    .line 82
    return-void

    .line 100
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 88
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;Lcom/samsung/android/settings/nfc/PaymentSettings$SettingsPackageMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 119
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$1;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 378
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$2;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mHandler:Landroid/os/Handler;

    .line 82
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1000a5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 277
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PaymentSettings"

    const-string/jumbo v2, "onClick"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v1, :cond_3

    .line 279
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 280
    .local v0, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v1, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 281
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    .line 282
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_1

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

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 284
    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 289
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 276
    .end local v0    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_3
    return-void

    .line 285
    .restart local v0    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1000a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->TAP_AND_PAY_DEFAULT_CUSTOM_PAYMENT_SERVICE:I

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->TAP_AND_PAY_DEFAULT_CUSTOM_PAYMENT_SERVICE:I

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->insertEventLog(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 247
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 245
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 150
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    const-string/jumbo v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    new-instance v0, Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 154
    const-string/jumbo v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    .line 149
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 358
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "onCreateOptionsMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 361
    const-string/jumbo v3, "payment_service_search_uri"

    .line 360
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 362
    .local v1, "searchUri":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 363
    const v2, 0x7f0b09bc

    invoke-interface {p1, v2}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 364
    .local v0, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsActionFlags(I)Landroid/view/MenuItem;

    .line 365
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 369
    .end local v0    # "menuItem":Landroid/view/MenuItem;
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 370
    const-string/jumbo v2, "DCM"

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 357
    :cond_2
    :goto_0
    return-void

    .line 371
    :cond_3
    const v2, 0x7f0b1b14

    invoke-interface {p1, v5, v5, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    .line 372
    const/4 v3, 0x5

    .line 371
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 238
    sget-boolean v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "PaymentSettings"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 240
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f04019f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 241
    .local v0, "v":Landroid/view/View;
    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 253
    sget-boolean v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "PaymentSettings"

    const-string/jumbo v5, "onLongClick"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    if-eqz v4, :cond_1

    .line 255
    const-string/jumbo v0, "com.gsma.services.nfc.SELECT_DEFAULT_SERVICE"

    .line 256
    .local v0, "HCE_SUB_SETTING":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 257
    .local v1, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    iget-object v4, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    .line 258
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v4}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v4

    sput-object v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    .line 259
    iget-object v4, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    iget-object v5, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 260
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 262
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 263
    .local v3, "i":Landroid/content/Intent;
    iget-object v4, v1, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .end local v1    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 267
    .restart local v0    # "HCE_SUB_SETTING":Ljava/lang/String;
    .restart local v1    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .restart local v3    # "i":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 268
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

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v4, 0x0

    .line 460
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    const-string/jumbo v0, "DCM"

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 460
    if-eqz v0, :cond_0

    .line 462
    return v4

    .line 465
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    .line 466
    .local v6, "menuId":I
    if-nez v6, :cond_1

    .line 467
    const-class v0, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    .line 468
    const v3, 0x7f0b17f4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p0

    .line 467
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/settings/nfc/PaymentSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    .line 469
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->finishFragment()V

    .line 470
    const/4 v0, 0x1

    return v0

    .line 472
    :cond_1
    return v4
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 344
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->alert:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 353
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 343
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 448
    instance-of v0, p1, Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setForegroundMode(Z)V

    .line 450
    const/4 v0, 0x1

    return v0

    .line 452
    .restart local p2    # "newValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 295
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 314
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 315
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    .line 316
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "PaymentSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onResume() backup component : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string/jumbo v3, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 319
    const-string/jumbo v2, "SBM"

    sget-object v3, Lcom/samsung/android/settings/nfc/PaymentSettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 318
    if-eqz v2, :cond_3

    .line 320
    new-instance v1, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;-><init>(Landroid/content/Context;)V

    .line 321
    .local v1, "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    invoke-virtual {v1}, Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;->getCLFLockStatus()I

    move-result v0

    .line 322
    .local v0, "clfLock":I
    if-eqz v0, :cond_3

    .line 323
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "NFC Locked. nfc_tapandpay_not_available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 325
    const v3, 0x7f0b1b12

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 324
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 328
    new-instance v3, Lcom/samsung/android/settings/nfc/PaymentSettings$3;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/nfc/PaymentSettings$3;-><init>(Lcom/samsung/android/settings/nfc/PaymentSettings;)V

    .line 327
    const v4, 0x104000a

    .line 324
    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->alert:Landroid/app/AlertDialog;

    .line 334
    iget-object v2, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 335
    return-void

    .line 339
    .end local v0    # "clfLock":I
    .end local v1    # "nfcOsaifuSettingsData":Lcom/samsung/android/settings/nfc/NfcOsaifukeitaiSettingsData;
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->refresh()V

    .line 294
    return-void
.end method

.method public refresh()V
    .locals 18

    .prologue
    .line 165
    sget-boolean v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "PaymentSettings"

    const-string/jumbo v3, "refresh"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 170
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    invoke-virtual {v2}, Lcom/samsung/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object v8

    .line 171
    .local v8, "appInfos":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;>;"
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 173
    new-instance v9, Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v9, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 174
    .local v9, "description":Landroid/preference/Preference;
    const v2, 0x7f0401bd

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 175
    const v2, 0x7f0b09b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v9}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 178
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

    .line 180
    .local v4, "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v5, p0

    move-object/from16 v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V

    .line 181
    .local v1, "preference":Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    iget-object v2, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, v4, Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;->banner:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 186
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

    .line 191
    .end local v1    # "preference":Lcom/samsung/android/settings/nfc/PaymentSettings$PaymentAppPreference;
    .end local v4    # "appInfo":Lcom/samsung/android/settings/nfc/PaymentBackend$PaymentAppInfo;
    .end local v7    # "appInfo$iterator":Ljava/util/Iterator;
    .end local v9    # "description":Landroid/preference/Preference;
    :cond_2
    const/4 v10, 0x0

    .line 192
    .local v10, "emptyImage":Landroid/widget/ImageView;
    const/4 v11, 0x0

    .line 194
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104d0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyImage":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 197
    .local v10, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v11, Landroid/widget/LinearLayout;

    .line 199
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 200
    .local v13, "emptyLayoutVert":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    .end local v13    # "emptyLayoutVert":Landroid/widget/LinearLayout;
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-nez v2, :cond_5

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x112006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v16

    .line 213
    .local v16, "hasSoftkey":Z
    if-eqz v16, :cond_4

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 218
    :goto_2
    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/AnimationDrawable;

    .line 219
    .local v15, "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v15}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 220
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 229
    .end local v15    # "frameAnim":Landroid/graphics/drawable/AnimationDrawable;
    .end local v16    # "hasSoftkey":Z
    :goto_3
    new-instance v17, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.settings.action.NFC_PAYMENT_REFRESH"

    move-object/from16 v0, v17

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 230
    .local v17, "newIntent":Landroid/content/Intent;
    const-string/jumbo v2, "com.sec.android.widgetapp.tapandpay"

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/nfc/PaymentSettings;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 164
    return-void

    .line 204
    .end local v17    # "newIntent":Landroid/content/Intent;
    .local v10, "emptyImage":Landroid/widget/ImageView;
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104ce

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .end local v10    # "emptyImage":Landroid/widget/ImageView;
    check-cast v10, Landroid/widget/ImageView;

    .line 205
    .local v10, "emptyImage":Landroid/widget/ImageView;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .end local v11    # "emptyLayout":Landroid/widget/LinearLayout;
    check-cast v11, Landroid/widget/LinearLayout;

    .line 207
    .local v11, "emptyLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1104cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 208
    .local v12, "emptyLayoutLand":Landroid/widget/LinearLayout;
    const/16 v2, 0x8

    invoke-virtual {v12, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    .line 216
    .end local v12    # "emptyLayoutLand":Landroid/widget/LinearLayout;
    .restart local v16    # "hasSoftkey":Z
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f05003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 223
    .end local v16    # "hasSoftkey":Z
    :cond_5
    new-instance v14, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    .line 223
    invoke-direct {v14, v2, v3}, Lcom/samsung/android/settings/nfc/NfcForegroundPreference;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/nfc/PaymentBackend;)V

    .line 225
    .local v14, "foreground":Lcom/samsung/android/settings/nfc/NfcForegroundPreference;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->screen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v14}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 226
    const/16 v2, 0x8

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/nfc/PaymentSettings;->getListView()Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public restoreDefaultApp()Z
    .locals 3

    .prologue
    .line 478
    sget-boolean v0, Lcom/samsung/android/settings/nfc/PaymentSettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "PaymentSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreDefaultApp() backup : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/nfc/PaymentSettings;->mPaymentBackend:Lcom/samsung/android/settings/nfc/PaymentBackend;

    sget-object v1, Lcom/samsung/android/settings/nfc/PaymentSettings;->PaymentAppName_backup:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 482
    const/4 v0, 0x1

    return v0
.end method
