.class public Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiSecSetupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;,
        Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;
    }
.end annotation


# static fields
.field private static DBG:Z

.field private static final WIFI_OFF:Z

.field private static final isGalaxyView:Z

.field private static mContext:Landroid/content/Context;

.field private static mIsWifiConnected:Z

.field public static final mProductName:Ljava/lang/String;

.field private static mWifiManager:Landroid/net/wifi/WifiManager;

.field public static useSprintNewSetupWizard:Z


# instance fields
.field FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

.field FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

.field private button_transY:F

.field private handler:Landroid/os/Handler;

.field private isCurrentAPchecked:Z

.field private isFirstEnterWifiSetupWizard:I

.field private isHelpMenuShow:Z

.field private mAnimationHeaderLayout:Landroid/widget/RelativeLayout;

.field private mBottomButtonArea:Landroid/widget/RelativeLayout;

.field private mCountryIso:Ljava/lang/String;

.field private mEffectImageContainer:Landroid/view/ViewGroup;

.field private mEffectImageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/content/IntentFilter;

.field private mHasNavBar:Z

.field private mIsEnableFRP:Z

.field private mIsReactiveLockEnabled:Z

.field private mIsSupportFRP:Z

.field private mIsTablet:Z

.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field private mPreviousBtnArea:Landroid/widget/LinearLayout;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSetupWizardCheck:I

.field private mSmallHeaderLayout:Landroid/widget/LinearLayout;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchBarView:Landroid/view/View;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWifiAdvanced:Landroid/widget/LinearLayout;

.field private mWifiDevice:Landroid/widget/ImageView;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field private mWifiSettingsView:Landroid/view/View;

.field private nextButtonImage:Landroid/widget/ImageView;

.field private nextButtonText:Landroid/widget/TextView;

.field private previousButtonImage:Landroid/widget/ImageView;

.field private previousButtonText:Landroid/widget/TextView;

.field private transX:F


# direct methods
.method static synthetic -get0()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4()Landroid/net/wifi/WifiManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0

    sput-boolean p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)I
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCaptivePortal()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;ZZI)V
    .locals 0
    .param p1, "isNextButtonEnabled"    # Z
    .param p2, "isDialogPopped"    # Z
    .param p3, "dialogMsg"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->allowToGoNext(ZZI)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;IJ)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;JZ)V
    .locals 1
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->revealWifiEffectInfinite(JZ)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 131
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    .line 136
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    .line 137
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvlte"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    const-string/jumbo v1, "gvwifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isGalaxyView:Z

    .line 140
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    .line 141
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    .line 152
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 216
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 129
    return-void

    .line 137
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 170
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 171
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 183
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    .line 184
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 186
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 187
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 188
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 192
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->transX:F

    .line 193
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    .line 217
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 218
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 129
    return-void
.end method

.method private allowToGoNext(ZZI)V
    .locals 7
    .param p1, "isNextButtonEnabled"    # Z
    .param p2, "isDialogPopped"    # Z
    .param p3, "dialogMsg"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const v5, 0x3ecccccd    # 0.4f

    .line 1125
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1126
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1128
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1129
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1130
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1132
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1133
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1134
    .local v2, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 1135
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1137
    .end local v2    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 1139
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1124
    :cond_2
    :goto_2
    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    move v3, v5

    .line 1126
    goto :goto_0

    :cond_4
    move v4, v5

    .line 1128
    goto :goto_1

    .line 1140
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1141
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception on allowToGoNext: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 1143
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private animateWifiEffect(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    .line 368
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 369
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$4;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 376
    return-void

    .line 378
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 379
    .local v0, "v":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$5;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 367
    return-void
.end method

.method private checkWifiAgain()Z
    .locals 4

    .prologue
    .line 1149
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 1151
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1152
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1157
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1159
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1165
    :cond_1
    :goto_1
    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkWifiAgain -  CountryISO:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 1168
    :cond_2
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    const/4 v1, 0x1

    return v1

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Exception occured at checkWifiAgain(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1160
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1161
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiSecSetupActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception on CountryISO: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1167
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1166
    if-nez v1, :cond_2

    .line 1171
    const/4 v1, 0x0

    return v1
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 947
    const/4 v1, 0x0

    .line 948
    .local v1, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 949
    .local v2, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 950
    .local v0, "accountArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 951
    aget-object v3, v0, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 953
    .end local v1    # "accountEmail":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 511
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 531
    .local v0, "action":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v6, :cond_3

    .line 532
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 533
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 534
    .local v5, "mNetworkInfo":Landroid/net/NetworkInfo;
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 535
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 536
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v10, [Landroid/net/NetworkInfo;

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 510
    .end local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 539
    :cond_1
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 540
    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 541
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 542
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 543
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 545
    :cond_2
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v11, [Landroid/net/NetworkInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 547
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v6, :cond_4

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v6, :cond_0

    .line 548
    :cond_4
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 550
    const-string/jumbo v6, "networkInfo"

    .line 549
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 552
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 553
    .local v4, "isConn":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 554
    :cond_5
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v4, 0x1

    .line 558
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    .line 559
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    move v6, v7

    :goto_1
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 561
    :cond_7
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_9

    :goto_2
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 563
    if-eqz v4, :cond_a

    .line 564
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 565
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    :cond_8
    move v6, v8

    .line 559
    goto :goto_1

    :cond_9
    move v7, v8

    .line 561
    goto :goto_2

    .line 567
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 568
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    .line 570
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConn":Z
    :cond_b
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 571
    const/4 v4, 0x0

    .line 572
    .restart local v4    # "isConn":Z
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 573
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 v4, 0x1

    .line 576
    :cond_c
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    .line 577
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_e

    move v6, v7

    :goto_3
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 579
    :cond_d
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_f

    :goto_4
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 581
    if-eqz v4, :cond_10

    .line 582
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 583
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0

    :cond_e
    move v6, v8

    .line 577
    goto :goto_3

    :cond_f
    move v7, v8

    .line 579
    goto :goto_4

    .line 585
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 586
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_0
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 500
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 501
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f110839

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 502
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 503
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V

    .line 504
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 505
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 506
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 498
    return-void
.end method

.method private isCaptivePortal()I
    .locals 13

    .prologue
    const/16 v12, 0x257

    const/16 v11, 0xc8

    .line 1175
    const/16 v3, 0x257

    .line 1177
    .local v3, "httpResponseCode":I
    const/4 v7, 0x0

    .line 1178
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1181
    :try_start_0
    new-instance v6, Ljava/net/URL;

    const-string/jumbo v8, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v6, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1182
    .local v6, "url":Ljava/net/URL;
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v7, v0

    .line 1183
    .local v7, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1184
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1185
    const/16 v8, 0x1388

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1186
    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1188
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1189
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1190
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_0

    .line 1191
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "isCaptivePortal: ret="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " headers="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_0
    if-ne v3, v11, :cond_2

    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    if-nez v8, :cond_2

    .line 1193
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_1

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Empty 200 response interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    :cond_1
    const/16 v3, 0xcc

    .line 1196
    :cond_2
    const/16 v8, 0x197

    if-ne v3, v8, :cond_4

    .line 1197
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_3

    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    :cond_3
    const/16 v3, 0xcc

    .line 1207
    :cond_4
    if-eqz v7, :cond_5

    .line 1208
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1209
    .end local v6    # "url":Ljava/net/URL;
    .end local v7    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v7, 0x0

    .line 1213
    :cond_5
    if-ne v3, v12, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->checkWifiAgain()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1214
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1216
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    :try_start_1
    new-instance v4, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v8, "http://www.amazon.com"

    invoke-direct {v4, v8}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 1217
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v5

    .line 1218
    .local v5, "response":Lorg/apache/http/HttpResponse;
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "HttpClient statusCode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    invoke-interface {v5}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    if-ne v8, v11, :cond_b

    .line 1220
    const/16 v3, 0xcc

    .line 1225
    :cond_6
    :goto_1
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1232
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    :goto_2
    return v3

    .line 1200
    :catch_0
    move-exception v2

    .line 1201
    .local v2, "e":Ljava/io/IOException;
    :try_start_2
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_8

    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Probably not a portal: exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1203
    :cond_8
    if-ne v3, v12, :cond_9

    .line 1207
    :cond_9
    if-eqz v7, :cond_5

    .line 1208
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_0

    .line 1206
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 1207
    if-eqz v7, :cond_a

    .line 1208
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1209
    const/4 v7, 0x0

    .line 1206
    :cond_a
    throw v8

    .line 1222
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v5    # "response":Lorg/apache/http/HttpResponse;
    :cond_b
    :try_start_3
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_6

    .line 1223
    const-string/jumbo v8, "WifiSecSetupActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Fail: Code : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1226
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v5    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 1227
    .restart local v2    # "e":Ljava/io/IOException;
    sget-boolean v8, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v8, :cond_7

    .line 1228
    const-string/jumbo v8, "WifiSecSetupActivity"

    const-string/jumbo v9, "Fail: IOException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static isNetworkConnected()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 983
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 984
    const-string/jumbo v4, "WifiSecSetupActivity"

    const-string/jumbo v5, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    return v7

    .line 988
    :cond_0
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 990
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 991
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 993
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 995
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 997
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 998
    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 999
    return v6

    .line 1000
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1001
    return v6

    .line 1002
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1003
    return v6

    .line 1007
    .end local v0    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "mobileNetwork":Landroid/net/NetworkInfo;
    .end local v3    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_3
    return v7
.end method

.method public static isSupportGoogleFRP(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 881
    const/4 v2, 0x0

    .line 883
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 885
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 888
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :goto_0
    return v2

    .line 890
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 891
    .local v0, "result":I
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP getServiceSupport : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    packed-switch v0, :pswitch_data_0

    .line 911
    :goto_1
    :pswitch_0
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSupportGoogleFRP : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 903
    :pswitch_1
    const/4 v2, 0x1

    .line 907
    goto :goto_1

    .line 892
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 918
    const/4 v2, 0x0

    .line 920
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 922
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 925
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const/4 v3, 0x0

    return v3

    .line 929
    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 930
    .local v0, "flagResult":I
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag getFlag result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    .line 933
    :cond_1
    const/4 v2, 0x1

    .line 939
    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readGoogleFRPFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    return v2
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 958
    const/4 v2, 0x0

    .line 959
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 960
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 962
    .local v0, "flagResult":I
    if-ltz v0, :cond_2

    .line 963
    if-gt v0, v3, :cond_2

    .line 965
    if-ne v0, v3, :cond_0

    .line 966
    const-string/jumbo v3, "com.google"

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 967
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag : Activated - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/4 v2, 0x1

    .line 973
    :cond_0
    :goto_0
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_1
    return v2

    .line 971
    :cond_2
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readReactiveLockFlag - exception occured:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetAnimation()V
    .locals 2

    .prologue
    .line 334
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 335
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 333
    return-void
.end method

.method private revealWifiEffectInfinite(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 388
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 389
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 391
    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "delay":J
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    .line 387
    :cond_1
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 5

    .prologue
    .line 319
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v2

    if-nez v2, :cond_0

    .line 320
    const/16 v0, 0x400

    .line 321
    .local v0, "visibility":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 322
    .local v1, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 329
    .end local v1    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 317
    return-void

    .line 324
    .end local v0    # "visibility":I
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 326
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d01d9

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 327
    const/16 v0, 0x3400

    .restart local v0    # "visibility":I
    goto :goto_0
.end method

.method private startAnimation()V
    .locals 8

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x294

    const-wide/16 v4, 0x14a

    const/4 v2, 0x0

    .line 347
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 348
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 349
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 351
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 352
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 351
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animTitleFromRight(Landroid/view/View;JJ)V

    .line 356
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animCommonFromRight(Landroid/view/View;JJ)V

    .line 358
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 359
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;

    invoke-direct {v2}, Lcom/samsung/android/settings/wifi/VI/SineInOut33Wifi;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$3;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 346
    return-void
.end method

.method private updateLayoutComponent(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 640
    const v9, 0x7f04037d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 643
    const v9, 0x7f110827

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    .line 645
    const v9, 0x7f110829

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSmallHeaderLayout:Landroid/widget/LinearLayout;

    .line 646
    const v9, 0x7f11082d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mAnimationHeaderLayout:Landroid/widget/RelativeLayout;

    .line 647
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v9

    if-nez v9, :cond_b

    .line 648
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSmallHeaderLayout:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 649
    const v9, 0x7f11082e

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 650
    const v9, 0x7f1106c7

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 651
    const v9, 0x7f11080f

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    .line 662
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 663
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 664
    const v10, 0x7f0a04c5

    .line 663
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 665
    .local v2, "marginLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 666
    const v10, 0x7f0a04c2

    .line 665
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 673
    .local v3, "marginRight":I
    :goto_1
    const v9, 0x7f110837

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 674
    .local v6, "switchbarDivider":Landroid/view/View;
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    :goto_2
    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 675
    const v9, 0x7f110625

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/widget/SwitchBar;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 676
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v9, :cond_0

    .line 677
    new-instance v9, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v9, p0, v10}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 678
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 679
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v9, v2, v3}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 682
    :cond_0
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    new-instance v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;

    invoke-direct {v10, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 695
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v9

    if-nez v9, :cond_1

    .line 696
    const v9, 0x7f11082f

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    .line 698
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    .line 699
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f110830

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 700
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f110831

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f110832

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v9, 0x7f110833

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_1
    const v9, 0x7f110115

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    .line 707
    const v9, 0x7f11083a

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    .line 708
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_2

    .line 709
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 711
    :cond_2
    const v9, 0x7f11083b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 712
    const v9, 0x7f11083c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 713
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0cfe

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 715
    const v9, 0x7f11083d

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    .line 716
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    const v9, 0x7f11083e

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 718
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0443

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 719
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b022e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 718
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 720
    .local v4, "nextButtonTts":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_3

    .line 721
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0443

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 725
    :cond_3
    const v9, 0x7f11065a

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 726
    new-instance v0, Landroid/graphics/LightingColorFilter;

    .line 727
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 728
    const v10, 0x7f0d0226

    const/4 v11, 0x0

    .line 727
    invoke-virtual {v9, v10, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v9

    .line 726
    const/high16 v10, -0x1000000

    invoke-direct {v0, v10, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 729
    .local v0, "colorfilter":Landroid/graphics/ColorFilter;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    .line 730
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 734
    :cond_4
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setSelected(Z)V

    .line 736
    const v9, 0x7f110625

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    .line 737
    const v9, 0x7f110838

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    .line 739
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b0cfe

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 740
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b022e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 739
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, "previousButtonTts":Ljava/lang/String;
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_button_background"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_5

    .line 765
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205dc

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 786
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0205da

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 797
    :cond_5
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v9

    if-nez v9, :cond_6

    sget-object v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 798
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    if-eqz v9, :cond_6

    .line 799
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    const/high16 v10, -0x40800000    # -1.0f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 803
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 804
    const-string/jumbo v9, ""

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v9, 0x0

    :goto_3
    iput-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 811
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_f

    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_f

    .line 812
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 813
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 814
    .local v1, "decorView":Landroid/view/View;
    const/16 v8, 0x3702

    .line 820
    .local v8, "uiOptions":I
    invoke-virtual {v1, v8}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 821
    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : True !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    .end local v1    # "decorView":Landroid/view/View;
    .end local v8    # "uiOptions":I
    :goto_4
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_11

    .line 830
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_7

    .line 831
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 832
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 833
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 834
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 836
    :cond_7
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_8

    .line 837
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 839
    :cond_8
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_9

    .line 840
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 842
    :cond_9
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 843
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 876
    :cond_a
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 631
    return-void

    .line 653
    .end local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .end local v2    # "marginLeft":I
    .end local v3    # "marginRight":I
    .end local v4    # "nextButtonTts":Ljava/lang/String;
    .end local v5    # "previousButtonTts":Ljava/lang/String;
    .end local v6    # "switchbarDivider":Landroid/view/View;
    :cond_b
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mAnimationHeaderLayout:Landroid/widget/RelativeLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 654
    const v9, 0x7f110835

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 655
    .local v7, "toolbar":Landroid/widget/LinearLayout;
    const/16 v9, 0x8

    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 656
    const v9, 0x7f11082a

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 657
    const v9, 0x7f11082b

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 658
    const v9, 0x7f11082c

    invoke-virtual {p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 668
    .end local v7    # "toolbar":Landroid/widget/LinearLayout;
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 669
    const v10, 0x7f0a0718

    .line 668
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 670
    .restart local v2    # "marginLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 671
    const v10, 0x7f0a0719

    .line 670
    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .restart local v3    # "marginRight":I
    goto/16 :goto_1

    .line 674
    .restart local v6    # "switchbarDivider":Landroid/view/View;
    :cond_d
    const/16 v9, 0x8

    goto/16 :goto_2

    .line 804
    .restart local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .restart local v4    # "nextButtonTts":Ljava/lang/String;
    .restart local v5    # "previousButtonTts":Ljava/lang/String;
    :cond_e
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 823
    :cond_f
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_10

    .line 824
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 826
    :cond_10
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 827
    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "mHasNavBar : False !!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 844
    :cond_11
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v9, :cond_16

    .line 845
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v9, :cond_12

    .line 846
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 847
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 848
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 850
    :cond_12
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-nez v9, :cond_15

    .line 851
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v9, :cond_13

    .line 852
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 854
    :cond_13
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v9, :cond_14

    .line 855
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v10, 0x3ecccccd    # 0.4f

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setAlpha(F)V

    .line 857
    :cond_14
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 858
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_5

    .line 860
    :cond_15
    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    .line 863
    :cond_16
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 864
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v9, :cond_17

    .line 865
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 866
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 872
    :goto_6
    iget-boolean v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v9, :cond_a

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 873
    new-instance v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v10, 0x0

    new-array v10, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v9, v10}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_5

    .line 868
    :cond_17
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 869
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_6
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 312
    return v2

    .line 314
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onAdvancedMenuPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 491
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 492
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v8, ""

    .line 494
    .local v8, "screenTitle":Ljava/lang/String;
    const-class v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 495
    const-string/jumbo v6, ""

    const/4 v3, 0x0

    const v5, 0x7f0b11d2

    move-object v0, p0

    move v7, v4

    .line 494
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 490
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 397
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 396
    :goto_0
    :pswitch_0
    return-void

    .line 405
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    .line 407
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "previous_button !!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 414
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 415
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 418
    .end local v0    # "i":I
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_3

    .line 419
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 420
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 422
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 424
    :cond_1
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v2, :cond_2

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 425
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    const v1, 0x7f0b1223

    .line 427
    .local v1, "message":I
    const v2, 0x7f0b1223

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    .end local v1    # "message":I
    :cond_2
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 431
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 435
    :cond_3
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 436
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x7f11083a
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 613
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 614
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 615
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v0, :cond_0

    .line 616
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    .line 617
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->onResume()V

    .line 611
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 224
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 225
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 227
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 234
    :cond_0
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 235
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 236
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 237
    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mIsEnableFRP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useSprintNewSetupWizard = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_6

    .line 239
    const-string/jumbo v2, "is_network_required"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 240
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iput-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 247
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActionBar;->hide()V

    .line 250
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    .line 252
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    .line 254
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    sput-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 256
    const-string/jumbo v2, "WifiSecSetupActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " mSetupWizardCheck : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v2, v5, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v2, :cond_3

    .line 258
    sget-boolean v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v2, :cond_7

    .line 259
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 263
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "first_enter_wifisetupwizard"

    invoke-static {v2, v3, v6, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 266
    :cond_3
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 267
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 268
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    new-instance v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 279
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v2

    if-nez v2, :cond_4

    .line 280
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V

    .line 283
    :cond_4
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 223
    :cond_5
    :goto_2
    return-void

    .line 244
    :cond_6
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "onCreate : not support FRP !!! "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 261
    :cond_7
    sget-object v2, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_1

    .line 284
    :cond_8
    const v1, 0x7f0b0ceb

    .line 285
    .local v1, "message":I
    const v2, 0x7f0b0ceb

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 291
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 445
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 487
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 447
    :pswitch_1
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 452
    :pswitch_2
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 457
    :pswitch_3
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 467
    :pswitch_4
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 472
    :pswitch_5
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 477
    :pswitch_6
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 445
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 595
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 598
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 593
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 603
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 607
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 602
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .prologue
    .line 296
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 297
    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 300
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x3702

    .line 299
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 295
    .end local v0    # "decorView":Landroid/view/View;
    :cond_0
    return-void
.end method
