.class public Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;
.super Lcom/android/keyguard/wallpaper/WallpaperViewController;
.source "KeyguardWallpaperController.java"


# static fields
.field private static sController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;


# instance fields
.field private mBottom:I

.field private mCurrentUserId:I

.field private mDisabled:Z

.field private mFadingAway:Z

.field private mNaturalBarHeight:I

.field private mOccluded:Z

.field private mShowing:Z

.field private mWallpaperList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mBottom:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mBottom:I

    return p1
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    .line 54
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 55
    iput-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    .line 58
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    .line 64
    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 67
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperList:Ljava/util/ArrayList;

    .line 71
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v1, :cond_0

    .line 73
    :try_start_0
    const-string/jumbo v1, "KeyguardWallpaperController"

    const-string/jumbo v2, "setLockWallpaperCallback(this)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v1, p0}, Landroid/app/IWallpaperManager;->setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "System dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    .line 85
    :cond_0
    sget-object v0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->sController:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    return-object v0
.end method


# virtual methods
.method protected apply()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 152
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    if-eqz v2, :cond_4

    .line 153
    :cond_0
    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v2, v3, :cond_4

    const/4 v0, 0x0

    .line 155
    .local v0, "visibility":I
    :goto_0
    const-string/jumbo v2, "KeyguardWallpaperController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mShowing="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mOccluded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mFadingAway="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    const-string/jumbo v4, ", match_parent="

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 156
    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mBottom:I

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    if-eq v4, v5, :cond_1

    const/4 v1, 0x1

    .line 155
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 159
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 162
    :cond_2
    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mVisibility:I

    if-eq v1, v0, :cond_3

    .line 163
    if-nez v0, :cond_5

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mScreenOn:Z

    if-eqz v1, :cond_5

    .line 164
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->onResume()V

    .line 169
    :cond_3
    :goto_1
    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mVisibility:I

    .line 150
    return-void

    .line 153
    .end local v0    # "visibility":I
    :cond_4
    const/4 v0, 0x4

    .restart local v0    # "visibility":I
    goto :goto_0

    .line 165
    :cond_5
    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->onPause()V

    goto :goto_1
.end method

.method public getWallpaperRootView()Landroid/view/View;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected handleCleanUp()V
    .locals 1

    .prologue
    .line 174
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->handleCleanUp()V

    .line 175
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    .line 173
    :cond_0
    return-void
.end method

.method protected handleWallpaperImageChanged()V
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_0

    .line 252
    return-void

    .line 254
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->handleWallpaperImageChanged()V

    .line 255
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->update()V

    .line 250
    :cond_1
    return-void
.end method

.method protected handleWallpaperTypeChanged()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 182
    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v3, :cond_0

    .line 183
    return-void

    .line 185
    :cond_0
    invoke-super {p0}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->handleWallpaperTypeChanged()V

    .line 187
    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mIsDesktopMode:Z

    if-eqz v3, :cond_1

    .line 188
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 189
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->setBackground()V

    .line 190
    return-void

    .line 191
    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v3

    if-nez v3, :cond_2

    .line 192
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v3

    .line 191
    if-eqz v3, :cond_3

    .line 193
    :cond_2
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardPowerSavingModeWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 194
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->setBackground()V

    .line 195
    return-void

    .line 196
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 197
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 198
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->setBackground()V

    .line 199
    return-void

    .line 200
    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isLiveWallpaperEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 201
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v3

    .line 200
    if-eqz v3, :cond_6

    .line 202
    :cond_5
    iput-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 203
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->setBackground()V

    .line 204
    return-void

    .line 207
    :cond_6
    const/4 v2, -0x1

    .line 208
    .local v2, "wallpaperType":I
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    if-eqz v3, :cond_7

    .line 210
    :try_start_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getLockWallpaperType()I

    move-result v2

    .line 211
    const-string/jumbo v3, "KeyguardWallpaperController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleWallpaperTypeChanged wallpaperType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :cond_7
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 239
    :pswitch_0
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v3, :cond_8

    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_OPERATOR_WALLPAPER:Z

    if-eqz v3, :cond_a

    .line 242
    :cond_8
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    .line 246
    :cond_9
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->setBackground()V

    .line 181
    return-void

    .line 212
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardWallpaperController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_1

    .line 223
    :pswitch_2
    sget-boolean v3, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MOTION_WALLPAPER:Z

    if-eqz v3, :cond_9

    .line 224
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_1

    .line 229
    :pswitch_3
    const/4 v1, 0x0

    .line 231
    .local v1, "strPkgName":Ljava/lang/String;
    :try_start_1
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-interface {v3}, Landroid/app/IWallpaperManager;->getAnimatedPkgName()Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 235
    .end local v1    # "strPkgName":Ljava/lang/String;
    :goto_2
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v1}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_1

    .line 232
    .restart local v1    # "strPkgName":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 233
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "KeyguardWallpaperController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "System dead?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 240
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "strPkgName":Ljava/lang/String;
    :cond_a
    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;

    iget-object v4, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    goto :goto_1

    .line 217
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isEnabledDCMLauncher()Z
    .locals 2

    .prologue
    .line 279
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public migrateOldKeyguardWallpaper()V
    .locals 4

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 285
    const-string/jumbo v2, "lockscreen_wallpaper_path"

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 284
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 287
    .local v0, "wallpaperPath":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 288
    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "migrateOldKeyguardWallpaper path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;Ljava/lang/String;)V

    .line 332
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 289
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 283
    :cond_0
    return-void
.end method

.method public onUnlock()V
    .locals 2

    .prologue
    .line 142
    const-string/jumbo v0, "KeyguardWallpaperController"

    const-string/jumbo v1, "onUnlock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    invoke-interface {v0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;->onUnlock()V

    .line 141
    :cond_0
    return-void
.end method

.method protected onUserSwitching(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 262
    invoke-super {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->onUserSwitching(I)V

    .line 263
    const-string/jumbo v0, "KeyguardWallpaperController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserSwitching userId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mCurrentUserId:I

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    .line 261
    return-void
.end method

.method public setKeyguardFadingAway(Z)V
    .locals 0
    .param p1, "fadingAway"    # Z

    .prologue
    .line 137
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mFadingAway:Z

    .line 138
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->apply()V

    .line 136
    return-void
.end method

.method public setKeyguardOccluded(Z)V
    .locals 0
    .param p1, "occluded"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mOccluded:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->apply()V

    .line 131
    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 2
    .param p1, "showing"    # Z

    .prologue
    const/16 v1, 0x259

    .line 111
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    .line 112
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->apply()V

    .line 114
    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->canSetDcmLauncher()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-eqz v0, :cond_2

    .line 115
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mWallpaperView:Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->isEnabledDCMLauncher()Z

    move-result v0

    .line 115
    if-eqz v0, :cond_2

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    :cond_2
    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mShowing:Z

    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 110
    :cond_3
    return-void
.end method

.method public setRootView(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/keyguard/wallpaper/WallpaperViewController;->setRootView(Landroid/view/ViewGroup;)V

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mDisabled:Z

    .line 93
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    const v1, 0x1050017

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mNaturalBarHeight:I

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mRootView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->handleWallpaperTypeChanged()V

    .line 89
    return-void
.end method
