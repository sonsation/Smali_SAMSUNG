.class public Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;
.super Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
.source "KeyguardBottomAreaShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;,
        Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mCurrentOrientation:I

.field private mDisplay:Landroid/view/Display;

.field private mEasyMode:Z

.field private mIsDeskMode:Z

.field private mKidsModeEnabled:Z

.field private mLeftShortcutArea:Landroid/widget/LinearLayout;

.field private mPermDisableState:Z

.field private mRightShortcutArea:Landroid/widget/LinearLayout;

.field private mSavingMode:Z

.field private mSecureIconView:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

.field private mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

.field private mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

.field private mShortcutVisibleForMDM:Z

.field private mTraySquicleMode:Z

.field private mTrusted:Z

.field private mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Landroid/view/Display;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Lcom/android/keyguard/util/ShortcutManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->isSecure()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->changeIconSquicleMode()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 0
    .param p1, "v"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "th"    # I
    .param p3, "enable"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIconColorOnWhiteWallpaper()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const/4 v1, 0x0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 187
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 193
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 68
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 79
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$1;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    .line 562
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$2;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 194
    new-instance v1, Lcom/android/keyguard/util/ShortcutManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v6, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$BottomShortcutCallback;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    invoke-direct {v1, v4, v5, v6}, Lcom/android/keyguard/util/ShortcutManager;-><init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/util/ShortcutManager$ShortcutCallback;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    .line 196
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    .line 196
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    .line 198
    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SIM_PERM_DISABLED:Z

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isIccBlockedPermanently()Z

    move-result v1

    .line 198
    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    .line 200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    .line 201
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->istKidsHomeModeEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mKidsModeEnabled:Z

    .line 207
    const/4 v1, 0x7

    new-array v0, v1, [Landroid/net/Uri;

    .line 208
    const-string/jumbo v1, "tap_to_icon"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    .line 209
    const-string/jumbo v1, "ultra_powersaving_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    .line 210
    const-string/jumbo v1, "emergency_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 211
    const-string/jumbo v1, "set_shortcuts_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 212
    const-string/jumbo v1, "current_sec_appicon_theme_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 213
    const-string/jumbo v1, "white_lockscreen_wallpaper"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 214
    const-string/jumbo v1, "easy_mode_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 216
    .local v0, "settingsHelperUri":[Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutCallback:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 217
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    .line 219
    new-instance v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$3;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mDisplay:Landroid/view/Display;

    .line 192
    return-void

    .end local v0    # "settingsHelperUri":[Landroid/net/Uri;
    :cond_0
    move v1, v2

    .line 196
    goto/16 :goto_0

    :cond_1
    move v1, v3

    .line 198
    goto/16 :goto_1
.end method

.method private changeIconSquicleMode()V
    .locals 4

    .prologue
    .line 677
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSettingsHelper:Lcom/android/keyguard/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->isIconSquicleMode()Z

    move-result v0

    .line 678
    .local v0, "trayMode":Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    if-eq v0, v1, :cond_1

    .line 679
    const-string/jumbo v1, "KeyguardBottomAreaShortcutView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeIconSquicleMode() : new traySquicleMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTraySquicleMode:Z

    .line 683
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcutsIcon(I)V

    .line 685
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v1, v2}, Lcom/android/keyguard/util/ShortcutManager;->updateShortcutsIcon(I)V

    .line 676
    :cond_1
    return-void
.end method

.method private isSecure()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 540
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private shouldDisableShortcut()Z
    .locals 1

    .prologue
    .line 243
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mPermDisableState:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutVisibleForMDM:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsDeskMode:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private showShortcutsIfPossible()V
    .locals 3

    .prologue
    .line 608
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    return-void

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    .line 617
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 618
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    .line 607
    :goto_1
    return-void

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_0

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_1
.end method

.method private updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V
    .locals 3
    .param p1, "v"    # Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;
    .param p2, "th"    # I
    .param p3, "enable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 247
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 248
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUserSetupComplete:Z

    .line 249
    .local v0, "visible":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v1, p2}, Lcom/android/keyguard/util/ShortcutManager;->getShortcutContentDescription(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    .end local v0    # "visible":Z
    :goto_0
    return-void

    .line 253
    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateIconColorOnWhiteWallpaper()V
    .locals 6

    .prologue
    const v3, 0x7f02014f

    const/4 v5, 0x2

    .line 691
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v1

    .line 692
    .local v1, "util":Lcom/android/keyguard/util/ViewStyleUtils;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v1, v3, v3, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 693
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockSecureIcon:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    const v3, 0x7f0202e7

    const v4, 0x7f0202e8

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateImageStyle(III)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 694
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimCarrierText:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v5}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    .line 695
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d049c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 696
    .local v0, "padding":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v3}, Lcom/android/keyguard/EmergencyButton;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEmergencyButton:Lcom/android/keyguard/EmergencyButton;

    invoke-virtual {v4}, Lcom/android/keyguard/EmergencyButton;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v2, v0, v3, v0, v4}, Lcom/android/keyguard/EmergencyButton;->setPadding(IIII)V

    .line 690
    return-void
.end method


# virtual methods
.method public hasCameraShortcutForLeft()Z
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasCameraShortcutForRight()Z
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForLeft()Z
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public hasPhoneShortcutForRight()Z
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForPhone()Z

    move-result v0

    return v0
.end method

.method public launchLeftAffordance()V
    .locals 6

    .prologue
    .line 395
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 396
    .local v1, "isDeviceInteractive":Z
    if-nez v1, :cond_1

    .line 397
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 398
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftPreview:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 400
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 405
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 406
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 409
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v2, :cond_3

    .line 410
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchLeftAffordance()V

    .line 394
    :goto_0
    return-void

    .line 411
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForLeft()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 412
    const-string/jumbo v2, "lockscreen_affordance"

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchCamera(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 416
    :cond_5
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    if-eqz v2, :cond_6

    .line 417
    const-string/jumbo v2, "KeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchLeftAffordance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public launchRightAffordance()V
    .locals 6

    .prologue
    .line 436
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v1

    .line 437
    .local v1, "isDeviceInteractive":Z
    if-nez v1, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightPreview:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 441
    :cond_0
    return-void

    .line 445
    :cond_1
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 446
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 447
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->forceHideSoftInput()Z

    .line 450
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasCameraShortcutForRight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 451
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchRightAffordance()V

    .line 435
    :goto_0
    return-void

    .line 452
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 453
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchPhone()V

    goto :goto_0

    .line 455
    :cond_4
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->DEBUG:Z

    if-eqz v2, :cond_5

    .line 456
    const-string/jumbo v2, "KeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "launchRightAffordance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-virtual {v3, v4}, Lcom/android/keyguard/util/ShortcutManager;->getIntent(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 644
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 647
    iget v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    .line 649
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 650
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 643
    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 1

    .prologue
    .line 701
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onDensityOrFontScaleChanged(Z)V

    .line 700
    return-void
.end method

.method public onDensityOrFontScaleChanged(Z)V
    .locals 4
    .param p1, "isSavingModeChanged"    # Z

    .prologue
    .line 706
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLayout()V

    .line 707
    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSavingMode:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mEasyMode:Z

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordance()V

    .line 709
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCameraVisibility()V

    .line 710
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 705
    :goto_0
    return-void

    .line 712
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDensityOrFontScaleChanged()V

    .line 713
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->onDensityOrFontScaleChanged()V

    .line 715
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$6;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 721
    const-wide/16 v2, 0x7d0

    .line 715
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->unregisterReceiver()V

    .line 390
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onDetachedFromWindow()V

    .line 387
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 374
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onFinishInflate()V

    .line 375
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUpdateMonitorCallbackForShortcuts:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mCurrentOrientation:I

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    .line 378
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->init()V

    .line 379
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 380
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateIconColorOnWhiteWallpaper()V

    .line 382
    const v0, 0x7f130161

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    .line 383
    const v0, 0x7f130163

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    .line 373
    return-void
.end method

.method public onUnlockMethodStateChanged()V
    .locals 5

    .prologue
    .line 658
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 659
    .local v1, "oldTrust":Z
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    .line 660
    .local v0, "oldSecure":Z
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onUnlockMethodStateChanged()V

    .line 661
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUnlockMethodCache:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->isTrusted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    .line 663
    const-string/jumbo v2, "KeyguardBottomAreaShortcutView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onUnlockMethodStateChanged old="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", new="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mTrusted:Z

    if-ne v1, v2, :cond_0

    .line 666
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIsSecure:Z

    if-eq v0, v2, :cond_2

    .line 667
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_1

    .line 668
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftPreview()V

    .line 670
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v2

    if-nez v2, :cond_2

    .line 671
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateRightPreview()V

    .line 656
    :cond_2
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 636
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 637
    if-ne p1, p0, :cond_0

    if-nez p2, :cond_0

    .line 638
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    .line 635
    :cond_0
    return-void
.end method

.method public setBottomShortcutVisibility(Z)V
    .locals 3
    .param p1, "vis"    # Z

    .prologue
    const/4 v2, 0x0

    .line 626
    if-eqz p1, :cond_0

    .line 627
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->showShortcutsIfPossible()V

    .line 625
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 630
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    goto :goto_0
.end method

.method protected updateCameraVisibility()V
    .locals 3

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 425
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isRightShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 422
    :cond_1
    :goto_1
    return-void

    .line 426
    :cond_2
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    goto :goto_0

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;)V

    goto :goto_1
.end method

.method protected updateLayout()V
    .locals 6

    .prologue
    .line 129
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    .local v1, "fLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 131
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 133
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mIndicationArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 136
    .restart local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    .restart local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03b3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03b2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 143
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftShortcutArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    .line 146
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .end local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 147
    .restart local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 148
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mUsimTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 152
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 154
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_RIGHT:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v5}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForRight()Z

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v3, :cond_1

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/LockIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 161
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/LockIcon;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLockIcon:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/LockIcon;->update(Z)V

    .line 165
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSecureIconView:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    if-eqz v3, :cond_2

    .line 166
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSecureIconView:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d03a3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 169
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mSecureIconView:Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardLockSecureIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02e2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 175
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateLeftAffordanceIcon()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .end local v1    # "fLp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    return-void

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected updateLeftAffordanceIcon()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->canLaunchVoiceAssist()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftIsVoiceAssist:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateLeftAffordanceIcon()V

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->SHORTCUT_LEFT:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v2}, Lcom/android/keyguard/util/ShortcutManager;->hasShortcutForLeft()Z

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateCustomShortcutIcon(Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;IZ)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mShortcutManager:Lcom/android/keyguard/util/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/keyguard/util/ShortcutManager;->isLeftShortcutForCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->shouldDisableShortcut()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->updateCameraVisibility()V

    goto :goto_0
.end method

.method protected updateLeftPreview()V
    .locals 3

    .prologue
    .line 277
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "updateLeftPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mLeftAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForLeft()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    .line 280
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 326
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 280
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 276
    return-void
.end method

.method public updateRightPreview()V
    .locals 3

    .prologue
    .line 463
    const-string/jumbo v0, "KeyguardBottomAreaShortcutView"

    const-string/jumbo v1, "updateRightPreview"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->mRightAffordanceView:Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->hasPhoneShortcutForRight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardCircleAffordanceView;->setShortcutForPhone(Z)V

    .line 466
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;)V

    .line 511
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 466
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 462
    return-void
.end method
