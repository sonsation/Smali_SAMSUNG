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

.field private mIsConnectingState:Z

.field private mIsEnableFRP:Z

.field private mIsReactiveLockEnabled:Z

.field private mIsSupportFRP:Z

.field private mIsTablet:Z

.field private mNextBtnArea:Landroid/widget/LinearLayout;

.field private mNormalToBixby:Landroid/widget/TextView;

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
    .line 136
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    .line 143
    const-string/jumbo v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mProductName:Ljava/lang/String;

    .line 144
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

    .line 147
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_SkipWifiActvDuringSetupWizard"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    .line 148
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Common_SetupWizard_Spr"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    .line 159
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 225
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 134
    return-void

    .line 144
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 174
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isCurrentAPchecked:Z

    .line 178
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 179
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 191
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isHelpMenuShow:Z

    .line 192
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 194
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 195
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 196
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 197
    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    .line 201
    const/high16 v0, 0x42f00000    # 120.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->transX:F

    .line 202
    const/high16 v0, 0x43600000    # 224.0f

    iput v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->button_transY:F

    .line 222
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->handler:Landroid/os/Handler;

    .line 226
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 227
    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 134
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

    .line 1238
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    .line 1239
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 1241
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1242
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "allowToGoNext isNextButtonEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1244
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 1246
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 1247
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/4 v2, 0x0

    .line 1248
    .local v2, "wifiNetwork":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    .line 1249
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1251
    .end local v2    # "wifiNetwork":Landroid/net/NetworkInfo;
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p2, :cond_2

    .line 1253
    :try_start_0
    invoke-static {p3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1237
    :cond_2
    :goto_2
    return-void

    .end local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_3
    move v3, v5

    .line 1239
    goto :goto_0

    :cond_4
    move v4, v5

    .line 1241
    goto :goto_1

    .line 1254
    .restart local v0    # "connectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 1255
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

    .line 1256
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 1257
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private animateWifiEffect(IJ)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "delay"    # J

    .prologue
    .line 441
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 442
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

    .line 449
    return-void

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 452
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

    .line 440
    return-void
.end method

.method private applyShowButtonShapes()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 972
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 973
    const-string/jumbo v1, "show_button_background"

    .line 972
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 975
    const v2, 0x7f020681

    .line 974
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 976
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 978
    const v2, 0x7f020683

    .line 977
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 983
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 984
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 985
    const v2, 0x7f0204bc

    .line 984
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 971
    :cond_0
    return-void

    .line 980
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 981
    const v2, 0x7f02067f

    .line 980
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private checkWifiAgain()Z
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 1263
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_0

    .line 1265
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 1266
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1271
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 1273
    :try_start_1
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string/jumbo v2, "CountryISO"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1279
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_3

    .line 1280
    :cond_2
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "need to get countryiso again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    const-string/jumbo v1, "ro.csc.countryiso_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 1282
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1283
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    .line 1285
    :cond_3
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

    .line 1286
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v4, :cond_5

    .line 1288
    :cond_4
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Need to check WiFi again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/4 v1, 0x1

    return v1

    .line 1267
    :catch_0
    move-exception v0

    .line 1268
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "WifiSecSetupActivity"

    const-string/jumbo v2, "Exception occured at checkWifiAgain(), while retrieving Context.TELEPHONY_SERVICE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1274
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 1275
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

    .line 1276
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 1287
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v1, "cn"

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1286
    if-nez v1, :cond_4

    .line 1291
    const/4 v1, 0x0

    return v1
.end method

.method private static getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account_type"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 1058
    const/4 v1, 0x0

    .line 1059
    .local v1, "accountEmail":Ljava/lang/String;
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 1060
    .local v2, "manager":Landroid/accounts/AccountManager;
    invoke-virtual {v2, p1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1061
    .local v0, "accountArray":[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_0

    .line 1062
    aget-object v3, v0, v4

    iget-object v1, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 1064
    .end local v1    # "accountEmail":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const v8, 0x3ecccccd    # 0.4f

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 594
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "action":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v6, :cond_7

    .line 615
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 616
    const-string/jumbo v6, "networkInfo"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkInfo;

    .line 617
    .local v5, "mNetworkInfo":Landroid/net/NetworkInfo;
    const-string/jumbo v6, "WifiSecSetupActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "NETWORK_STATE_CHANGED_ACTION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 619
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 623
    :cond_0
    :goto_0
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 624
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 623
    if-nez v6, :cond_1

    .line 625
    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 623
    if-eqz v6, :cond_4

    .line 626
    :cond_1
    iput-boolean v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    .line 593
    .end local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_2
    :goto_1
    return-void

    .line 620
    .restart local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 621
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_0

    .line 628
    :cond_4
    iput-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    goto :goto_1

    .line 630
    .end local v5    # "mNetworkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 631
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v7, "CONNECTIVITY_ACTION"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    sput-boolean v10, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 633
    sget-object v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 634
    .local v2, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 635
    .local v1, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v6

    if-ne v6, v11, :cond_6

    .line 636
    sput-boolean v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 638
    :cond_6
    new-instance v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    invoke-direct {v6, p0, v9}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    new-array v7, v10, [Landroid/net/NetworkInfo;

    invoke-virtual {v6, v7}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 640
    .end local v1    # "activeNetwork":Landroid/net/NetworkInfo;
    .end local v2    # "connectivityManager":Landroid/net/ConnectivityManager;
    :cond_7
    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v6, :cond_8

    iget-boolean v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v6, :cond_2

    .line 641
    :cond_8
    const-string/jumbo v6, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 643
    const-string/jumbo v6, "networkInfo"

    .line 642
    invoke-virtual {p2, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 645
    .local v3, "info":Landroid/net/NetworkInfo;
    const/4 v4, 0x0

    .line 646
    .local v4, "isConn":Z
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 647
    :cond_9
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : wifi state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/4 v4, 0x1

    .line 651
    :cond_a
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_b

    .line 652
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_c

    move v6, v7

    :goto_2
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 654
    :cond_b
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_d

    :goto_3
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 656
    if-eqz v4, :cond_e

    .line 657
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 658
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_1

    :cond_c
    move v6, v8

    .line 652
    goto :goto_2

    :cond_d
    move v7, v8

    .line 654
    goto :goto_3

    .line 660
    :cond_e
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 661
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_1

    .line 663
    .end local v3    # "info":Landroid/net/NetworkInfo;
    .end local v4    # "isConn":Z
    :cond_f
    const-string/jumbo v6, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 664
    const/4 v4, 0x0

    .line 665
    .restart local v4    # "isConn":Z
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v6

    if-eqz v6, :cond_10

    .line 666
    const-string/jumbo v6, "WifiSecSetupActivity"

    const-string/jumbo v9, "handleEvent() : connectivity state changed, isConn set true !!!"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    const/4 v4, 0x1

    .line 669
    :cond_10
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v6, :cond_11

    .line 670
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_12

    move v6, v7

    :goto_4
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 672
    :cond_11
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v4, :cond_13

    :goto_5
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 674
    if-eqz v4, :cond_14

    .line 675
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 676
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v11}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_1

    :cond_12
    move v6, v8

    .line 670
    goto :goto_4

    :cond_13
    move v7, v8

    .line 672
    goto :goto_5

    .line 678
    :cond_14
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 679
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_1
.end method

.method private hideNaviButtons()V
    .locals 8

    .prologue
    .line 382
    const-string/jumbo v5, "WifiSecSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "hideNaviButtons mHasNavBar : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 384
    .local v4, "paramWindow":Landroid/view/Window;
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 385
    const/16 v3, 0x400

    .line 386
    .local v3, "paramInt":I
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v5, :cond_0

    .line 387
    const/16 v3, 0x1702

    .line 392
    :cond_0
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 393
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/2addr v5, v3

    iput v5, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 394
    invoke-virtual {v4, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 395
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 396
    invoke-virtual {v4}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    .line 397
    .local v1, "localView":Landroid/view/View;
    if-eqz v1, :cond_2

    .line 398
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v5

    or-int v2, v3, v5

    .line 399
    .local v2, "localViewVisibility":I
    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v5, :cond_1

    .line 400
    or-int/lit16 v2, v2, 0x2000

    .line 402
    :cond_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 381
    .end local v2    # "localViewVisibility":I
    :cond_2
    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 583
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 584
    .local v0, "frame":Landroid/widget/FrameLayout;
    const v2, 0x7f110991

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 585
    new-instance v2, Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {v2}, Lcom/android/settings/wifi/WifiSettings;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 586
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/WifiSettings;->setSwitchBarInSetupWizard(Lcom/android/settings/widget/SwitchBar;)V

    .line 587
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 588
    .local v1, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getId()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 589
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 581
    return-void
.end method

.method private isCaptivePortal()I
    .locals 14

    .prologue
    const/16 v13, 0x257

    const/16 v12, 0xc8

    .line 1303
    const/16 v3, 0x257

    .line 1305
    .local v3, "httpResponseCode":I
    const/4 v8, 0x0

    .line 1306
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "Checking http://connectivitycheck.android.com/generate_204"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    :try_start_0
    new-instance v7, Ljava/net/URL;

    const-string/jumbo v9, "http://connectivitycheck.android.com/generate_204"

    invoke-direct {v7, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1310
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 1311
    .local v8, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 1312
    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1313
    const/16 v9, 0x1388

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1314
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 1316
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    .line 1317
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 1318
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_0

    .line 1319
    const-string/jumbo v9, "WifiSecSetupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "isCaptivePortal: ret="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " headers="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_0
    if-ne v3, v12, :cond_2

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v9

    if-nez v9, :cond_2

    .line 1321
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "Empty 200 response interpreted as 204 response."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1322
    :cond_1
    const/16 v3, 0xcc

    .line 1324
    :cond_2
    const/16 v9, 0x197

    if-ne v3, v9, :cond_4

    .line 1325
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_3

    const-string/jumbo v9, "WifiSecSetupActivity"

    const-string/jumbo v10, "407 Proxy Authentication Required interpreted as 204 response."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1326
    :cond_3
    const/16 v3, 0xcc

    .line 1335
    :cond_4
    if-eqz v8, :cond_5

    .line 1336
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1337
    .end local v7    # "url":Ljava/net/URL;
    .end local v8    # "urlConnection":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v8, 0x0

    .line 1341
    :cond_5
    if-ne v3, v13, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->checkWifiAgain()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1342
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 1344
    .local v1, "client":Lorg/apache/http/client/HttpClient;
    const/4 v4, 0x0

    .line 1345
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    iget-object v9, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    if-eqz v9, :cond_b

    const-string/jumbo v9, "cn"

    iget-object v10, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 1346
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v9, "http://m.hao123.com"

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1347
    .local v5, "request":Lorg/apache/http/client/methods/HttpGet;
    :try_start_2
    const-string/jumbo v9, "WifiSecSetupActivity"

    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    const-string/jumbo v10, "Change connection for cn model"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v4, v5

    .line 1351
    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    :goto_1
    :try_start_3
    invoke-interface {v1, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 1352
    .local v6, "response":Lorg/apache/http/HttpResponse;
    const-string/jumbo v9, "WifiSecSetupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "HttpClient statusCode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    if-ne v9, v12, :cond_c

    .line 1354
    const/16 v3, 0xcc

    .line 1359
    :cond_6
    :goto_2
    invoke-virtual {v4}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1366
    .end local v1    # "client":Lorg/apache/http/client/HttpClient;
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_7
    :goto_3
    return v3

    .line 1328
    :catch_0
    move-exception v2

    .line 1329
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_8

    const-string/jumbo v9, "WifiSecSetupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Probably not a portal: exception "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1331
    :cond_8
    if-ne v3, v13, :cond_9

    .line 1335
    :cond_9
    if-eqz v8, :cond_5

    .line 1336
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    goto/16 :goto_0

    .line 1334
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 1335
    if-eqz v8, :cond_a

    .line 1336
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1337
    const/4 v8, 0x0

    .line 1334
    :cond_a
    throw v9

    .line 1349
    .restart local v1    # "client":Lorg/apache/http/client/HttpClient;
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    :cond_b
    :try_start_5
    new-instance v5, Lorg/apache/http/client/methods/HttpGet;

    const-string/jumbo v9, "http://www.amazon.com"

    invoke-direct {v5, v9}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    move-object v4, v5

    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .local v4, "request":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_1

    .line 1356
    .restart local v6    # "response":Lorg/apache/http/HttpResponse;
    :cond_c
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_6

    .line 1357
    const-string/jumbo v9, "WifiSecSetupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fail: Code : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 1360
    .end local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    .end local v6    # "response":Lorg/apache/http/HttpResponse;
    :catch_1
    move-exception v2

    .line 1361
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    sget-boolean v9, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->DBG:Z

    if-eqz v9, :cond_7

    .line 1362
    const-string/jumbo v9, "WifiSecSetupActivity"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Fail: IOException"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1360
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    :catch_2
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v4, v5

    .end local v5    # "request":Lorg/apache/http/client/methods/HttpGet;
    .restart local v4    # "request":Lorg/apache/http/client/methods/HttpGet;
    goto :goto_4
.end method

.method public static isNetworkConnected()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1094
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 1095
    const-string/jumbo v4, "WifiSecSetupActivity"

    const-string/jumbo v5, "isNetworkConnected() : mContext is null !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return v7

    .line 1099
    :cond_0
    sget-object v4, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1101
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_3

    .line 1102
    invoke-virtual {v1, v6}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 1104
    .local v3, "wifiNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1106
    .local v2, "mobileNetwork":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 1108
    .local v0, "activeNetwork":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1109
    sput-boolean v6, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsWifiConnected:Z

    .line 1110
    return v6

    .line 1111
    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1112
    return v6

    .line 1113
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1114
    return v6

    .line 1118
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
    .line 992
    const/4 v2, 0x0

    .line 994
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 996
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 999
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "isSupportGoogleFRP : service is not Connected!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :goto_0
    return v2

    .line 1001
    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getServiceSupport()I

    move-result v0

    .line 1002
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

    .line 1003
    packed-switch v0, :pswitch_data_0

    .line 1022
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

    .line 1014
    :pswitch_1
    const/4 v2, 0x1

    .line 1018
    goto :goto_1

    .line 1003
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isSupportSetupWizardGreatUX()Z
    .locals 1

    .prologue
    .line 1295
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v0, :cond_1

    .line 1296
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1298
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isTMOWfcEnabled()Z
    .locals 8

    .prologue
    .line 329
    const/4 v4, 0x0

    .line 330
    .local v4, "retVal":Z
    const-string/jumbo v0, "com.samsung.tmowfc.wfcpref"

    .line 331
    .local v0, "PACKAGE_NAME":Ljava/lang/String;
    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 332
    .local v3, "pm":Landroid/content/pm/PackageManager;
    if-eqz v3, :cond_0

    .line 334
    :try_start_0
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 335
    .local v1, "appState":I
    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    .line 336
    const/4 v4, 0x1

    .line 342
    .end local v1    # "appState":I
    :cond_0
    :goto_0
    const-string/jumbo v5, "WifiSecSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isTMOWfcWrefEnabled - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return v4

    .line 338
    :catch_0
    move-exception v2

    .line 339
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v5, "WifiSecSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isTMOWfcWrefEnabled, IllegalArgumentException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeSpannableTextForChangeMode()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    .line 946
    const v0, 0x7f110765

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    .line 947
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 949
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportBixbyForSetupWizard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 950
    sget-object v0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getBixbyModeAgreement(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 955
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b08f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 956
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 957
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 958
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 959
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 960
    const v2, 0x7f0204ba

    .line 959
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 961
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$7;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    return-void

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNormalToBixby:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public static readGoogleFRPFlag(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x2

    .line 1029
    const/4 v2, 0x0

    .line 1031
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 1033
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1036
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "readGoogleFRPFlag : service is not Connected"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/4 v3, 0x0

    return v3

    .line 1040
    :cond_0
    invoke-virtual {v1, v6}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getFlag(I)I

    move-result v0

    .line 1041
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

    .line 1043
    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    if-ne v0, v6, :cond_2

    .line 1044
    :cond_1
    const/4 v2, 0x1

    .line 1050
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

    .line 1051
    return v2
.end method

.method private static readReactiveLockFlag(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 1069
    const/4 v2, 0x0

    .line 1070
    .local v2, "value":Z
    new-instance v1, Lcom/samsung/android/service/reactive/ReactiveServiceManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;-><init>(Landroid/content/Context;)V

    .line 1071
    .local v1, "rsm":Lcom/samsung/android/service/reactive/ReactiveServiceManager;
    invoke-virtual {v1}, Lcom/samsung/android/service/reactive/ReactiveServiceManager;->getStatus()I

    move-result v0

    .line 1073
    .local v0, "flagResult":I
    if-ltz v0, :cond_2

    .line 1074
    if-gt v0, v3, :cond_2

    .line 1076
    if-ne v0, v3, :cond_0

    .line 1077
    const-string/jumbo v3, "com.google"

    invoke-static {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getAccountEmail(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    .line 1078
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

    .line 1079
    const/4 v2, 0x1

    .line 1084
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

    .line 1085
    :cond_1
    return v2

    .line 1082
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
    .line 407
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 408
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$2;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 406
    return-void
.end method

.method private revealWifiEffectInfinite(JZ)V
    .locals 3
    .param p1, "delay"    # J
    .param p3, "begin"    # Z

    .prologue
    const/4 v2, 0x0

    .line 461
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 462
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 464
    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .end local p1    # "delay":J
    :cond_0
    invoke-direct {p0, v2, p1, p2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->animateWifiEffect(IJ)V

    .line 460
    :cond_1
    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    .prologue
    .line 370
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v1

    if-nez v1, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 372
    .local v0, "wmLp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7ffff400

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 378
    .end local v0    # "wmLp":Landroid/view/WindowManager$LayoutParams;
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->hideNaviButtons()V

    .line 368
    return-void

    .line 374
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 375
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 376
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d01f4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d01f5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    goto :goto_1
.end method

.method private showWifiEnabledPop()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 310
    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wfcConnectedPref"

    invoke-virtual {v5, v6, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 311
    .local v4, "wifiConnectedPref":Landroid/content/SharedPreferences;
    const-string/jumbo v5, "firstWifiEnabled"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 312
    .local v1, "firstWifiEnabled":Z
    const-string/jumbo v5, "WifiSecSetupActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "FirstWifiEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    if-eqz v1, :cond_0

    .line 314
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 315
    .local v3, "wifiConnEditor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v5, "firstWifiEnabled"

    invoke-interface {v3, v5, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 317
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    .line 318
    const-string/jumbo v6, "CscFeature_Setting_ConfigOpMenuStructure"

    .line 317
    invoke-virtual {v5, v6}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "settings":Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v5

    .line 320
    const-string/jumbo v6, "CscFeature_Common_ConfigOpBrandingForWFC"

    const-string/jumbo v7, ""

    .line 319
    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "brandingForWfc":Ljava/lang/String;
    const-string/jumbo v5, "Global"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "Tracfone"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    .end local v0    # "brandingForWfc":Ljava/lang/String;
    .end local v2    # "settings":Ljava/lang/String;
    .end local v3    # "wifiConnEditor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 322
    .restart local v0    # "brandingForWfc":Ljava/lang/String;
    .restart local v2    # "settings":Ljava/lang/String;
    .restart local v3    # "wifiConnEditor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const-string/jumbo v5, "WifiSecSetupActivity"

    const-string/jumbo v6, "Show First Wifi Enabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    sget-object v5, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;->WIFI_ON:Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;

    invoke-static {v5, v6}, Lcom/samsung/tmowfc/wfcutils/StandardDialogs;->showDialog(Landroid/content/Context;Lcom/samsung/tmowfc/wfcutils/StandardDialogs$Type;)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 8

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0x294

    const-wide/16 v4, 0x14a

    const/4 v2, 0x0

    .line 420
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 421
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 422
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 424
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animTitleFromRight(Landroid/view/View;JJ)V

    .line 429
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/settings/wifi/VI/AnimationHelperWifi;->animCommonFromRight(Landroid/view/View;JJ)V

    .line 431
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 432
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

    .line 419
    return-void
.end method

.method private updateLayoutComponent(Landroid/content/res/Configuration;)V
    .locals 15
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 734
    const v11, 0x7f0403d0

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setContentView(I)V

    .line 737
    const v11, 0x7f11097f

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    .line 739
    const v11, 0x7f110981

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSmallHeaderLayout:Landroid/widget/LinearLayout;

    .line 740
    const v11, 0x7f110985

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mAnimationHeaderLayout:Landroid/widget/RelativeLayout;

    .line 741
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v11

    if-nez v11, :cond_c

    .line 742
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSmallHeaderLayout:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 743
    const v11, 0x7f110986

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 744
    const v11, 0x7f11080e

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 745
    const v11, 0x7f110962

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    .line 756
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v11

    if-eqz v11, :cond_d

    .line 757
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 758
    const v12, 0x7f0a055a

    .line 757
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 759
    .local v4, "marginLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 760
    const v12, 0x7f0a0557

    .line 759
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 761
    .local v5, "marginRight":I
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-nez v11, :cond_0

    .line 762
    const v11, 0x7f110980

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    .line 763
    .local v10, "wholeHeader":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, -0x1

    const/4 v12, -0x2

    invoke-direct {v2, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 764
    .local v2, "headerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v2, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 765
    invoke-virtual {v10, v2}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 767
    const v11, 0x7f11098c

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 768
    .local v3, "mainContainer":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v12, -0x1

    const/4 v13, -0x2

    invoke-direct {v1, v12, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 769
    .local v1, "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 770
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 778
    .end local v1    # "containerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "headerParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v3    # "mainContainer":Landroid/widget/LinearLayout;
    .end local v10    # "wholeHeader":Landroid/widget/FrameLayout;
    :cond_0
    :goto_1
    const v11, 0x7f11098f

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 779
    .local v8, "switchbarDivider":Landroid/view/View;
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v11

    if-eqz v11, :cond_e

    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 780
    const v11, 0x7f110730

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/settings/widget/SwitchBar;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 781
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v11, :cond_1

    .line 782
    new-instance v11, Lcom/android/settings/wifi/WifiEnabler;

    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-direct {v11, p0, v12}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 783
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/settings/widget/SwitchBar;->setProgressBarVisible(Z)V

    .line 784
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v11, v4, v5}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarMargin(II)V

    .line 787
    :cond_1
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    new-instance v12, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;

    invoke-direct {v12, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$6;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v11

    if-nez v11, :cond_2

    .line 801
    const v11, 0x7f110987

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    .line 803
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    .line 804
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v11, 0x7f110988

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 805
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v11, 0x7f110989

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v11, 0x7f11098a

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 807
    iget-object v12, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageList:Ljava/util/ArrayList;

    const v11, 0x7f11098b

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->makeSpannableTextForChangeMode()V

    .line 813
    const v11, 0x7f110118

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mBottomButtonArea:Landroid/widget/RelativeLayout;

    .line 815
    const v11, 0x7f110992

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    .line 816
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_3

    .line 817
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    :cond_3
    const v11, 0x7f110993

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    .line 820
    const v11, 0x7f110994

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    .line 821
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0f18

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 823
    const v11, 0x7f110995

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    .line 824
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    const v11, 0x7f110996

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    .line 826
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b051d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 827
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b02c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 826
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 828
    .local v6, "nextButtonTts":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v11, :cond_4

    .line 829
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b051d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 833
    :cond_4
    const v11, 0x7f1103f6

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    .line 834
    new-instance v0, Landroid/graphics/LightingColorFilter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d024a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    const/high16 v12, -0x1000000

    invoke-direct {v0, v12, v11}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 835
    .local v0, "colorfilter":Landroid/graphics/ColorFilter;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v11, :cond_5

    .line 836
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 839
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b0f18

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 840
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0b02c8

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 839
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 842
    .local v7, "previousButtonTts":Ljava/lang/String;
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    if-eqz v11, :cond_6

    .line 843
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 844
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    invoke-virtual {v11, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 848
    :cond_6
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setSelected(Z)V

    .line 850
    const v11, 0x7f110730

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSwitchBarView:Landroid/view/View;

    .line 851
    const v11, 0x7f110990

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettingsView:Landroid/view/View;

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->applyShowButtonShapes()V

    .line 864
    invoke-static {}, Lcom/android/settings/Utils;->isSupportSetupWizardSmallHeader()Z

    move-result v11

    if-nez v11, :cond_7

    sget-object v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 865
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    if-eqz v11, :cond_7

    .line 866
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    const/high16 v12, -0x40800000    # -1.0f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 870
    :cond_7
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    if-eqz v11, :cond_8

    .line 871
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f020529

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 874
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->initialize()V

    .line 875
    const-string/jumbo v11, "SupportLightNavigationBar|SupportForceTouch|SupportCustomBgColor|SupportNaviBarRemoteView"

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    :goto_3
    iput-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    .line 882
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_10

    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v11, :cond_10

    .line 883
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 884
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->hideNaviButtons()V

    .line 885
    const-string/jumbo v11, "WifiSecSetupActivity"

    const-string/jumbo v12, "mHasNavBar : True !!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :goto_4
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    if-eqz v11, :cond_13

    .line 894
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v11, :cond_12

    .line 895
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 898
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 902
    :goto_5
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v11, :cond_9

    .line 903
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v12, 0x3ecccccd    # 0.4f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 905
    :cond_9
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 906
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v12, 0x3ecccccd    # 0.4f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 908
    :cond_a
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 909
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 942
    :cond_b
    :goto_6
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 725
    return-void

    .line 747
    .end local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .end local v4    # "marginLeft":I
    .end local v5    # "marginRight":I
    .end local v6    # "nextButtonTts":Ljava/lang/String;
    .end local v7    # "previousButtonTts":Ljava/lang/String;
    .end local v8    # "switchbarDivider":Landroid/view/View;
    :cond_c
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mAnimationHeaderLayout:Landroid/widget/RelativeLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 748
    const v11, 0x7f11098d

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 749
    .local v9, "toolbar":Landroid/widget/LinearLayout;
    const/16 v11, 0x8

    invoke-virtual {v9, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 750
    const v11, 0x7f110982

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiDevice:Landroid/widget/ImageView;

    .line 751
    const v11, 0x7f110983

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mTitleView:Landroid/widget/TextView;

    .line 752
    const v11, 0x7f110984

    invoke-virtual {p0, v11}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    iput-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiAdvanced:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 773
    .end local v9    # "toolbar":Landroid/widget/LinearLayout;
    :cond_d
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 774
    const v12, 0x7f0a07ed

    .line 773
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 775
    .restart local v4    # "marginLeft":I
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 776
    const v12, 0x7f0a07ee

    .line 775
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .restart local v5    # "marginRight":I
    goto/16 :goto_1

    .line 779
    .restart local v8    # "switchbarDivider":Landroid/view/View;
    :cond_e
    const/16 v11, 0x8

    goto/16 :goto_2

    .line 875
    .restart local v0    # "colorfilter":Landroid/graphics/ColorFilter;
    .restart local v6    # "nextButtonTts":Ljava/lang/String;
    .restart local v7    # "previousButtonTts":Ljava/lang/String;
    :cond_f
    const/4 v11, 0x1

    goto/16 :goto_3

    .line 887
    :cond_10
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_11

    .line 888
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 890
    :cond_11
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonImage:Landroid/widget/ImageView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 891
    const-string/jumbo v11, "WifiSecSetupActivity"

    const-string/jumbo v12, "mHasNavBar : False !!"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 900
    :cond_12
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 910
    :cond_13
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v11, :cond_18

    .line 911
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-nez v11, :cond_14

    .line 912
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 914
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 916
    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v11

    if-nez v11, :cond_17

    .line 917
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    if-eqz v11, :cond_15

    .line 918
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonImage:Landroid/widget/ImageView;

    const v12, 0x3ecccccd    # 0.4f

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 920
    :cond_15
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    if-eqz v11, :cond_16

    .line 921
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->nextButtonText:Landroid/widget/TextView;

    const v12, 0x3ecccccd    # 0.4f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setAlpha(F)V

    .line 923
    :cond_16
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 924
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mNextBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto/16 :goto_6

    .line 926
    :cond_17
    new-instance v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/net/NetworkInfo;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 929
    :cond_18
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->previousButtonText:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 930
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v11, :cond_19

    .line 931
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 932
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 938
    :goto_7
    iget-boolean v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    if-eqz v11, :cond_b

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 939
    new-instance v11, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;

    const/4 v12, 0x0

    invoke-direct {v11, p0, v12}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;)V

    const/4 v12, 0x0

    new-array v12, v12, [Landroid/net/NetworkInfo;

    invoke-virtual {v11, v12}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$CheckInternet;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_6

    .line 934
    :cond_19
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 935
    iget-object v11, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mPreviousBtnArea:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    goto :goto_7
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 362
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 363
    return v2

    .line 365
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onAdvancedMenuPressed()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 572
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 573
    .local v2, "args":Landroid/os/Bundle;
    const-string/jumbo v8, ""

    .line 575
    .local v8, "screenTitle":Ljava/lang/String;
    const-string/jumbo v0, "messageExtra"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    const-class v0, Lcom/samsung/android/settings/wifi/WifiAdvancedSecSetupActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 578
    const-string/jumbo v6, ""

    const/4 v3, 0x0

    const v5, 0x7f0b1545

    move-object v0, p0

    move v7, v4

    .line 577
    invoke-static/range {v0 .. v7}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;Z)V

    .line 571
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, -0x1

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 469
    :goto_0
    :pswitch_0
    return-void

    .line 478
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 479
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    .line 480
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "previous_button !!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 486
    :pswitch_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 487
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mEffectImageContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 488
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

    .line 491
    .end local v0    # "i":I
    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v2, :cond_5

    .line 492
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 493
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button : isNetworkConnected() is true, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 495
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    if-eqz v2, :cond_1

    .line 496
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "forget current network"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 499
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto :goto_0

    .line 501
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 502
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  isNetworkConnected() is false, show WifiSkipDialog"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    const v1, 0x7f0b159d

    .line 504
    .local v1, "message":I
    const v2, 0x7f0b159d

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string/jumbo v4, "dialog"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 506
    .end local v1    # "message":I
    :cond_3
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "next_button :  mIsEnableFRP is true, but not connected!, finish()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 508
    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    if-eqz v2, :cond_4

    .line 509
    const-string/jumbo v2, "WifiSecSetupActivity"

    const-string/jumbo v3, "forget current network2"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$WifiConnectionDialog;->forget()V

    .line 512
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 516
    :cond_5
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setResult(I)V

    .line 517
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->finish()V

    goto/16 :goto_0

    .line 470
    :pswitch_data_0
    .packed-switch 0x7f110992
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 707
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 708
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->setIndicatorTransparency()V

    .line 705
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, -0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 233
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 234
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    .line 236
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "user_setup_complete"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    .line 237
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    .line 239
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 240
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "extra_samsungaccount_for_wifisetupwizard"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_SAMSUNGACCOUNT_FOR_WIFISETUPWIZARD:Z

    .line 243
    :cond_0
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportGoogleFRP(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    .line 244
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readGoogleFRPFlag(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    .line 245
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->readReactiveLockFlag(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsReactiveLockEnabled:Z

    .line 246
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onCreate : mIsSupportFRP =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mIsEnableFRP = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsEnableFRP:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", useSprintNewSetupWizard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->useSprintNewSetupWizard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsSupportFRP:Z

    if-eqz v3, :cond_7

    .line 248
    const-string/jumbo v3, "is_network_required"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 249
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "onCreate : FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD set true !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    .line 256
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->hide()V

    .line 259
    :cond_2
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsTablet:Z

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->updateLayoutComponent(Landroid/content/res/Configuration;)V

    .line 263
    const-string/jumbo v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    sput-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 265
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isFirstEnterWifiSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " mSetupWizardCheck : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isFirstEnterWifiSetupWizard:I

    if-ne v3, v7, :cond_3

    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v3, :cond_3

    .line 267
    sget-boolean v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->WIFI_OFF:Z

    if-nez v3, :cond_8

    .line 268
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v7}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 272
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "first_enter_wifisetupwizard"

    invoke-static {v3, v4, v6, v8}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 275
    :cond_3
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    .line 276
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    new-instance v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$1;-><init>(Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;)V

    iput-object v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isSupportSetupWizardGreatUX()Z

    move-result v3

    if-nez v3, :cond_4

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->resetAnimation()V

    .line 292
    :cond_4
    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->FLAG_GOOGLE_FRP_FOR_WIFISETUPWIZARD:Z

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isNetworkConnected()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 298
    :cond_5
    :goto_2
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Common_SupportSecWFC"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 299
    iget v3, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mSetupWizardCheck:I

    if-nez v3, :cond_a

    const/4 v1, 0x1

    .line 300
    .local v1, "isSetupWizard":Z
    :goto_3
    const-string/jumbo v3, "WifiSecSetupActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSetupWizard : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    if-eqz v1, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->isTMOWfcEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->showWifiEnabledPop()V

    .line 232
    .end local v1    # "isSetupWizard":Z
    :cond_6
    return-void

    .line 253
    :cond_7
    const-string/jumbo v3, "WifiSecSetupActivity"

    const-string/jumbo v4, "onCreate : not support FRP !!! "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :cond_8
    sget-object v3, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_1

    .line 293
    :cond_9
    const v2, 0x7f0b0f04

    .line 294
    .local v2, "message":I
    const v3, 0x7f0b0f04

    invoke-static {v3}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->newInstance(I)Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string/jumbo v5, "dialog"

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity$FrpWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_2

    .line 299
    .end local v2    # "message":I
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "isSetupWizard":Z
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 526
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 568
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 528
    :pswitch_1
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onAddNetworkPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    goto :goto_0

    .line 533
    :pswitch_2
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPushBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 538
    :pswitch_3
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onWpsPinBtnPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 548
    :pswitch_4
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onHelpMenuPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 553
    :pswitch_5
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSmartNetworkSwitchPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 558
    :pswitch_6
    const-string/jumbo v0, "WifiSecSetupActivity"

    const-string/jumbo v1, "onSleepPolicyPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 526
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
    .line 687
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 691
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 686
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 696
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 700
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mIsConnectingState:Z

    .line 701
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 695
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 354
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 355
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->mHasNavBar:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/WifiSecSetupActivity;->hideNaviButtons()V

    .line 353
    :cond_0
    return-void
.end method
