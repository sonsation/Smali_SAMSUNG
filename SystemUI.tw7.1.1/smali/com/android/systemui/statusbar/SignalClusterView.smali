.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;
.implements Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/SignalClusterView$1;,
        Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    }
.end annotation


# static fields
.field static final DEBUG:Z


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneContentDescription:Ljava/lang/String;

.field private mAirplaneIconId:I

.field private mBlockAirplane:Z

.field private mBlockEthernet:Z

.field private mBlockMobile:Z

.field private mBlockWifi:Z

.field mBtTether:Landroid/widget/ImageView;

.field private mBtTetherVisible:Z

.field private mDarkIntensity:F

.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mEndPadding:I

.field private final mEndPaddingNothingVisible:I

.field mEthernet:Landroid/widget/ImageView;

.field mEthernetActivity:Landroid/widget/ImageView;

.field private mEthernetActivityId:I

.field mEthernetDark:Landroid/widget/ImageView;

.field private mEthernetDescription:Ljava/lang/String;

.field mEthernetGroup:Landroid/view/ViewGroup;

.field private mEthernetIconId:I

.field private mEthernetVisible:Z

.field private mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

.field private final mIconScaleFactor:F

.field private mIconTint:I

.field private mIsAirplaneMode:Z

.field private mLastAirplaneIconId:I

.field private mLastEthernetActivityId:I

.field private mLastEthernetIconId:I

.field private mLastVpnIconId:I

.field private mLastWifiActivityId:I

.field private mLastWifiStrengthId:I

.field mMPTCPActivity:Landroid/widget/ImageView;

.field private mMPTCPActivityId:I

.field mMPTCPGiga:Landroid/widget/ImageView;

.field private mMPTCPGigaId:I

.field mMPTCPGroup:Landroid/view/ViewGroup;

.field mMPTCPType:Landroid/widget/ImageView;

.field private mMPTCPTypeId:I

.field private mMPTCPVisible:Z

.field private final mMobileDataIconStartPadding:I

.field mMobileSignalGroup:Landroid/widget/LinearLayout;

.field private final mMobileSignalGroupEndPadding:I

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

.field mNWBoosterActivity:Landroid/widget/ImageView;

.field private mNWBoosterActivityId:I

.field mNWBoosterGroup:Landroid/view/ViewGroup;

.field mNWBoosterMobileType:Landroid/widget/ImageView;

.field private mNWBoosterMobileTypeId:I

.field private mNWBoosterRunning:Z

.field private mNWBoosterVisible:Z

.field mNWBoosterWifiStrength:Landroid/widget/ImageView;

.field private mNWBoosterWifiStrengthId:I

.field mNoSimIcons:[Landroid/widget/ImageView;

.field mNoSims:Landroid/widget/ImageView;

.field mNoSimsCombo:Landroid/view/View;

.field mNoSimsDark:Landroid/widget/ImageView;

.field private mNoSimsVisible:Z

.field private mPhoneStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

.field private final mSecondaryTelephonyPadding:I

.field private mSimIcon:Landroid/widget/ImageView;

.field private mSimIconId:I

.field private mSimIconVisible:Z

.field private final mTintArea:Landroid/graphics/Rect;

.field mVpn:Landroid/widget/ImageView;

.field private mVpnIconId:I

.field private mVpnVisible:Z

.field private final mWideTypeIconStartPadding:I

.field mWifi:Landroid/widget/ImageView;

.field mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:I

.field mWifiAirplaneSpacer:Landroid/view/View;

.field mWifiDark:Landroid/widget/ImageView;

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field mWifiSignalSpacer:Landroid/view/View;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/SignalClusterView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/SignalClusterView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/SignalClusterView;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/SignalClusterView;Z)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/SignalClusterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/SignalClusterView;Landroid/widget/ImageView;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "SignalClusterView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrengthId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherVisible:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconVisible:Z

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    iput v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetActivityId:I

    new-instance v2, Lcom/android/systemui/statusbar/SignalClusterView$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/SignalClusterView$1;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0349

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    const v2, 0x7f0d034a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDataIconStartPadding:I

    const v2, 0x7f0d034b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWideTypeIconStartPadding:I

    const v2, 0x7f0d034c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSecondaryTelephonyPadding:I

    const v2, 0x7f0d0353

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    const v2, 0x7f0d021e

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v1}, Landroid/util/TypedValue;->getFloat()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const-string/jumbo v2, "desktopmode"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v2

    if-eqz v2, :cond_0

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    :goto_0
    return-void

    :cond_0
    const v2, 0x7f0d0352

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    goto :goto_0
.end method

.method private apply()V
    .locals 15

    const/high16 v14, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/16 v10, 0x8

    const/4 v9, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v8, :cond_0

    return-void

    :cond_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v8, :cond_b

    move v8, v9

    :goto_0
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v8, :cond_c

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    if-eq v8, v11, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastVpnIconId:I

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    sget-boolean v8, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v11, "SignalClusterView"

    const-string/jumbo v12, "vpn: %s"

    new-array v13, v1, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-eqz v8, :cond_d

    const-string/jumbo v8, "VISIBLE"

    :goto_2
    aput-object v8, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v8, :cond_f

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    if-ne v8, v11, :cond_3

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetActivityId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    if-eq v8, v11, :cond_4

    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :goto_3
    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetActivityId:I

    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherVisible:Z

    if-eqz v8, :cond_10

    move v8, v9

    :goto_5
    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    sget-boolean v8, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string/jumbo v11, "SignalClusterView"

    const-string/jumbo v12, "ethernet: %s"

    new-array v13, v1, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v8, :cond_11

    const-string/jumbo v8, "VISIBLE"

    :goto_6
    aput-object v8, v13, v9

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v8, :cond_14

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    if-eq v8, v11, :cond_7

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    if-eq v8, v11, :cond_8

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :goto_7
    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    :cond_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f07cb

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_9
    sget-boolean v8, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v8, :cond_9

    const-string/jumbo v11, "SignalClusterView"

    const-string/jumbo v12, "wifi: %s sig=%d"

    const/4 v8, 0x2

    new-array v13, v8, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v8, :cond_15

    const-string/jumbo v8, "VISIBLE"

    :goto_a
    aput-object v8, v13, v9

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v13, v1

    invoke-static {v12, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_a
    :goto_b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->apply(Z)Z

    move-result v8

    if-eqz v8, :cond_a

    if-nez v0, :cond_a

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    const/4 v0, 0x1

    goto :goto_b

    :cond_b
    move v8, v10

    goto/16 :goto_0

    :cond_c
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v8, "GONE"

    goto/16 :goto_2

    :cond_e
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :cond_f
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_4

    :cond_10
    move v8, v10

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v8, "GONE"

    goto/16 :goto_6

    :cond_12
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    :cond_13
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_8

    :cond_14
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    :cond_15
    const-string/jumbo v8, "GONE"

    goto :goto_a

    :cond_16
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v8, :cond_19

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    if-eq v8, v11, :cond_17

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    :cond_17
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    if-eqz v8, :cond_1b

    const/4 v7, 0x0

    :goto_c
    sget v8, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v7, v8, :cond_1b

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v8

    if-nez v8, :cond_18

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    aget-object v8, v8, v7

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_18
    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    :cond_19
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    if-eqz v8, :cond_1b

    const/4 v7, 0x0

    :goto_d
    sget v8, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v7, v8, :cond_1b

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v8

    if-nez v8, :cond_1a

    invoke-static {v7}, Lcom/android/systemui/statusbar/DeviceState;->isNoSIMOfSlot(I)Z

    move-result v8

    if-eqz v8, :cond_1a

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    aget-object v8, v8, v7

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1a
    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_1b
    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-eqz v8, :cond_21

    move v8, v9

    :goto_e
    invoke-virtual {v11, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    if-eqz v8, :cond_1c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconVisible:Z

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    :goto_f
    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1d

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-eqz v8, :cond_23

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :cond_1d
    :goto_10
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    if-eqz v8, :cond_1f

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-eqz v8, :cond_1e

    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v8, :cond_24

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-eqz v8, :cond_24

    :cond_1e
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1f
    :goto_11
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    if-nez v8, :cond_20

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v8, :cond_20

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v8, :cond_20

    if-nez v0, :cond_20

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnVisible:Z

    if-nez v8, :cond_20

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    :cond_20
    if-eqz v1, :cond_2a

    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPadding:I

    :goto_12
    invoke-virtual {p0, v9, v9, v8, v9}, Lcom/android/systemui/statusbar/SignalClusterView;->setPaddingRelative(IIII)V

    return-void

    :cond_21
    move v8, v10

    goto :goto_e

    :cond_22
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f

    :cond_23
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_10

    :cond_24
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f0d043f

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0f07ca

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    invoke-direct {p0, v8, v11}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eqz v8, :cond_28

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_13
    sget-boolean v8, Lcom/android/systemui/SystemUIRune;->DISPLAY_NETWORK_BOOSTER_ICON_AS_SIMPLE_TYPE:Z

    if-nez v8, :cond_1f

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrength:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrengthId:I

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v10, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-nez v8, :cond_25

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrength:Landroid/widget/ImageView;

    const v10, 0x7f0206a0

    invoke-direct {p0, v8, v10}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :cond_25
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_26
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v8

    if-eqz v8, :cond_26

    const/4 v2, 0x1

    :cond_27
    if-eqz v2, :cond_29

    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v8, v14}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_11

    :cond_28
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_13

    :cond_29
    iget-object v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_11

    :cond_2a
    iget v8, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEndPaddingNothingVisible:I

    goto/16 :goto_12
.end method

.method private applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p3, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private applyIconTint()V
    .locals 6

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    invoke-static {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;F)F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->applyDarkIntensity(FLandroid/view/View;Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getTint(Landroid/graphics/Rect;Landroid/view/View;I)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrength:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->setTint(Landroid/widget/ImageView;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->setIconTint(IFLandroid/graphics/Rect;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private currentVpnIconId(Z)I
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f020624

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f020778

    goto :goto_0
.end method

.method private getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 5

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v0

    :cond_1
    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unexpected subscription "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private hasCorrectSubs(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v0, v2, :cond_0

    return v4

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)I

    move-result v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-eq v3, v2, :cond_1

    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    return v2
.end method

.method private inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;
    .locals 3

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;ILandroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private maybeScaleVpnAndNoSimsIcons()V
    .locals 4

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setIconForView(Landroid/widget/ImageView;I)V
    .locals 3

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    const v2, 0x3fb70a3d    # 1.43f

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;

    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconScaleFactor:F

    invoke-direct {v1, v0, v2}, Lcom/android/systemui/statusbar/ScalingDrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;F)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private setTint(Landroid/widget/ImageView;I)V
    .locals 1

    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->populateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    return v2
.end method

.method public getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mHoverPopupPreShowListener:Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroupEndPadding:I

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v0, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "icon_blacklist"

    aput-object v5, v4, v6

    invoke-virtual {v3, p0, v4}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    const v3, 0x7f13017a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterGroup:Landroid/view/ViewGroup;

    const v3, 0x7f13017b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrength:Landroid/widget/ImageView;

    const v3, 0x7f13017c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileType:Landroid/widget/ImageView;

    const v3, 0x7f13017d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivity:Landroid/widget/ImageView;

    const v3, 0x7f130186

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    const v4, 0x7f020773

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->setIconForView(Landroid/widget/ImageView;I)V

    :cond_1
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v3, :cond_2

    const v3, 0x7f13017e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    const v3, 0x7f13017f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    const v3, 0x7f130180

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    const v3, 0x7f130181

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    :cond_2
    const v3, 0x7f13018c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v3, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    return-void

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->removeCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTether:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_MPTCP:Z

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGroup:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPType:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGiga:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivity:Landroid/widget/ImageView;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIcon:Landroid/widget/ImageView;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const v4, 0x7f0207c5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f130179

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpn:Landroid/widget/ImageView;

    const v0, 0x7f130182

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetGroup:Landroid/view/ViewGroup;

    const v0, 0x7f130183

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    const v0, 0x7f130184

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    const v0, 0x7f130187

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    const v0, 0x7f130188

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    const v0, 0x7f130189

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    const v0, 0x7f130194

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    const v0, 0x7f130191

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSims:Landroid/widget/ImageView;

    const v0, 0x7f130192

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsDark:Landroid/widget/ImageView;

    const v0, 0x7f130190

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsCombo:Landroid/view/View;

    const v0, 0x7f130193

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiAirplaneSpacer:Landroid/view/View;

    const v0, 0x7f13018b

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiSignalSpacer:Landroid/view/View;

    const v0, 0x7f13018e

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    const v0, 0x7f13018d

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    const v0, 0x7f13018f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v3

    :cond_0
    const v0, 0x7f13018a

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    const v0, 0x7f130185

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivity:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/statusbar/SignalClusterView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SignalClusterView$2;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/statusbar/SignalClusterView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/SignalClusterView$3;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->maybeScaleVpnAndNoSimsIcons()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernet:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastEthernetIconId:I

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDark:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiStrengthId:I

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastWifiActivityId:I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    :cond_4
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set3(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    :cond_5
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set4(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    :cond_6
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set1(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    :cond_7
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    :cond_8
    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v0}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mLastAirplaneIconId:I

    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    :cond_b
    return-void
.end method

.method public onStateChanged()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/SignalClusterView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/SignalClusterView$4;-><init>(Lcom/android/systemui/statusbar/SignalClusterView;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string/jumbo v5, "icon_blacklist"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v2

    const-string/jumbo v5, "airplane"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v5, "mobile"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v5, "wifi"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "ethernet"

    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-ne v0, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eq v3, v5, :cond_3

    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->removeSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->addSignalCallback(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;)V

    :cond_2
    return-void

    :cond_3
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-ne v1, v5, :cond_1

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eq v4, v5, :cond_2

    goto :goto_0
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setBtTetherVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBtTetherVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_0
    return-void
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockEthernet:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetVisible:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetIconId:I

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetActivityId:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mEthernetDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 2

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIconTint:I

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mDarkIntensity:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockAirplane:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    iget v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneContentDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setMPTCPIndicators(ZIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    if-eq v0, p2, :cond_2

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPVisible:Z

    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPTypeId:I

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPGigaId:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMPTCPActivityId:I

    if-eq v0, p4, :cond_1

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMobileDataIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;IIZZIILjava/lang/String;Ljava/lang/String;ZI)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p12}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    :goto_0
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set11(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    iget v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set8(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-static {v0, p3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set10(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-static {v0, p7}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set5(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set6(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p9}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set9(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p3, :cond_3

    :goto_1
    invoke-static {v0, p11}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    invoke-static {v0, p8}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set7(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move p11, v2

    goto :goto_1
.end method

.method public setNWBoosterIndicators(ZZIII)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    if-ne v0, p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    if-eq v0, p2, :cond_2

    :cond_0
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterVisible:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterRunning:Z

    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrengthId:I

    iput p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterWifiStrengthId:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterActivityId:I

    if-ne v0, p5, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNWBoosterMobileTypeId:I

    if-eq v0, p3, :cond_1

    goto :goto_0
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "NetworkController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    return-void
.end method

.method public setNoSims(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockMobile:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimsVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    sget v1, Lcom/android/systemui/statusbar/DeviceState;->mPhoneCount:I

    if-ge v0, v1, :cond_3

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/android/systemui/statusbar/DeviceState;->isNoSIMOfSlot(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNoSimIcons:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setRssiTypeIcon(II)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set12(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    return-void
.end method

.method public setSecurityController(Lcom/android/systemui/statusbar/policy/SecurityController;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/SignalClusterView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SecurityController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/SecurityController;->addCallback(Lcom/android/systemui/statusbar/policy/SecurityController$SecurityControllerCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSC:Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/SecurityController;->isVpnBranded()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->currentVpnIconId(Z)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mVpnIconId:I

    return-void
.end method

.method public setSimIcon(ZI)V
    .locals 3

    const-string/jumbo v0, "SignalClusterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSimIcon : simIconId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconId:I

    if-ne v0, p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconVisible:Z

    if-eq v0, p1, :cond_1

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconId:I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIconVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    :cond_1
    return-void
.end method

.method public setSlotFocusVisible(ZII)V
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v2, "SignalClusterView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSlotFocusVisible : subId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/SignalClusterView;->getState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set14(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Z)Z

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-set13(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;I)I

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/SignalClusterView;->hasCorrectSubs(Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V

    :cond_2
    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v3}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-get2(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;->-wrap0(Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;Landroid/widget/ImageView;)V

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStates:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileSignalGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v5}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/systemui/statusbar/DeviceState;->isSimCardInserted(I)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v1, 0x0

    :goto_1
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_USE_NO_SIM_ICON_AT_SIGNAL_CLUSTER:Z

    if-eqz v6, :cond_7

    :goto_2
    if-nez v1, :cond_8

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/SignalClusterView;->inflatePhoneState(I)Lcom/android/systemui/statusbar/SignalClusterView$PhoneState;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    :cond_7
    move v1, v5

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->isAttachedToWindow()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->applyIconTint()V

    :cond_9
    return-void
.end method

.method public setTooltip()V
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->semSetHoverPopupType(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->semSetHoverPopupType(I)V

    goto :goto_0
.end method

.method public setWifiIndicators(ZLcom/android/systemui/statusbar/policy/NetworkController$IconState;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;ZZILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mBlockWifi:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    iget v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->icon:I

    iput v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput p6, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    iget-object v0, p2, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->contentDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    return-void

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
