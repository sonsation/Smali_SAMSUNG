.class public Lcom/samsung/android/settings/nfc/TapAndPaySettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "TapAndPaySettings.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;
    }
.end annotation


# static fields
.field private static final CSC_SALES_CODE:Ljava/lang/String;

.field static final DBG:Z

.field private static final OMC_SALES_CODE:Ljava/lang/String;

.field private static OTHER_TAB_TAG:Ljava/lang/String;

.field private static PAYMENT_TAB_TAG:Ljava/lang/String;

.field private static final SALES_CODE:Ljava/lang/String;

.field private static SETTING_DUMMY_TAB:I

.field private static SETTING_OTHER_TAB:I

.field private static SETTING_PAYMENT_TAB:I

.field private static final isSupportFelica:Z


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

.field private mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStartCategory:Ljava/lang/String;

.field private mTabHost:Landroid/widget/TabHost;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    return v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/OtherSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)Landroid/widget/TabHost;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/OtherSettings;)Lcom/samsung/android/settings/nfc/OtherSettings;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    return-object p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/nfc/TapAndPaySettings;Lcom/samsung/android/settings/nfc/PaymentSettings;)Lcom/samsung/android/settings/nfc/PaymentSettings;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    .line 73
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_DUMMY_TAB:I

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    .line 75
    const/4 v0, 0x2

    sput v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    .line 77
    const-string/jumbo v0, "payment"

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    .line 78
    const-string/jumbo v0, "others"

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    .line 81
    const-string/jumbo v0, "persist.omc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OMC_SALES_CODE:Ljava/lang/String;

    .line 82
    const-string/jumbo v0, "ro.csc.sales_code"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->CSC_SALES_CODE:Ljava/lang/String;

    .line 83
    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OMC_SALES_CODE:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OMC_SALES_CODE:Ljava/lang/String;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->CSC_SALES_CODE:Ljava/lang/String;

    :goto_0
    sput-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SALES_CODE:Ljava/lang/String;

    .line 84
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_NFC_EnableFelica"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->isSupportFelica:Z

    .line 51
    return-void

    .line 83
    :cond_1
    sget-object v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OMC_SALES_CODE:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mStartCategory:Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings$1;-><init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    .prologue
    .line 93
    const/16 v0, 0x46

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 154
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 155
    sget-boolean v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TapAndPaySettings"

    const-string/jumbo v2, "onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_0
    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 159
    invoke-static {}, Lcom/android/settings/Utils;->isSupportGraceUX()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    sget-boolean v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "TapAndPaySettings"

    const-string/jumbo v2, "change action bar background for Grace UX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "current_sec_active_themepackage"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x1020011

    const/4 v9, 0x0

    .line 173
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 175
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f0401c8

    invoke-virtual {v5, v6, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 177
    .local v4, "v":Landroid/view/View;
    const v5, 0x1020012

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TabHost;

    iput-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    .line 178
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->setup()V

    .line 179
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 182
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 183
    const-string/jumbo v7, ""

    .line 182
    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 185
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v5

    .line 186
    const/16 v6, 0x8

    .line 185
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v7, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 190
    const v7, 0x7f0b0b86

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 189
    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 193
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v7, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    .line 194
    const v7, 0x7f0b0b87

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 193
    invoke-virtual {v6, v7}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 197
    const-string/jumbo v5, "others"

    iget-object v6, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mStartCategory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 198
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v6, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_OTHER_TAB:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 202
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v0

    .line 203
    .local v0, "countTab":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 204
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v3

    .line 205
    .local v3, "tab":Landroid/view/View;
    const v5, 0x1020016

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 206
    .local v2, "label":Landroid/widget/TextView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const v7, 0x7f0b0b8d

    invoke-virtual {p0, v7, v6}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 200
    .end local v0    # "countTab":I
    .end local v1    # "i":I
    .end local v2    # "label":Landroid/widget/TextView;
    .end local v3    # "tab":Landroid/view/View;
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mTabHost:Landroid/widget/TabHost;

    sget v6, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SETTING_PAYMENT_TAB:I

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->setCurrentTab(I)V

    goto :goto_0

    .line 209
    .restart local v0    # "countTab":I
    .restart local v1    # "i":I
    :cond_1
    return-object v4
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 239
    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TapAndPaySettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    .line 238
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 231
    sget-boolean v0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "TapAndPaySettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 230
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 214
    sget-boolean v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "TapAndPaySettings"

    const-string/jumbo v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string/jumbo v1, "org.mobilenfcassociation.CardEmulation.action.AID_TABLE_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string/jumbo v1, "com.samsung.nfc.action.LMRT_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    sget-boolean v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->isSupportFelica:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "SBM"

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->SALES_CODE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 223
    const-string/jumbo v1, "ACTION_FELICA_LOCKED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "tabId"    # Ljava/lang/String;

    .prologue
    const v3, 0x7f1105ce

    .line 245
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 247
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    iput-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    if-eqz v1, :cond_0

    .line 251
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->detach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 258
    :cond_1
    sget-object v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 259
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    if-nez v1, :cond_3

    .line 260
    new-instance v1, Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/nfc/PaymentSettings;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->PAYMENT_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 271
    :cond_2
    :goto_0
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 244
    return-void

    .line 262
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mPaymentFragment:Lcom/samsung/android/settings/nfc/PaymentSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 264
    :cond_4
    sget-object v1, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 265
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    if-nez v1, :cond_5

    .line 266
    new-instance v1, Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-direct {v1}, Lcom/samsung/android/settings/nfc/OtherSettings;-><init>()V

    sget-object v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->OTHER_TAB_TAG:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    goto :goto_0

    .line 268
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->mOtherFragment:Lcom/samsung/android/settings/nfc/OtherSettings;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->attach(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_0
.end method

.method showLmrtFullDialog()V
    .locals 4

    .prologue
    .line 275
    const-string/jumbo v1, "TapAndPaySettings"

    const-string/jumbo v2, "showLmrtFullDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {v1, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 277
    const v2, 0x7f0b0b90

    .line 276
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 278
    const v2, 0x7f0b0b91

    .line 276
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 279
    new-instance v2, Lcom/samsung/android/settings/nfc/TapAndPaySettings$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/nfc/TapAndPaySettings$2;-><init>(Lcom/samsung/android/settings/nfc/TapAndPaySettings;)V

    const v3, 0x7f0b0b92

    .line 276
    invoke-virtual {v1, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 285
    .local v0, "alert":Landroid/app/AlertDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 274
    return-void
.end method
