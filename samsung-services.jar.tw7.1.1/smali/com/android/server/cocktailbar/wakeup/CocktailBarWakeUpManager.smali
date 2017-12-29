.class public Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;
.super Ljava/lang/Object;
.source "CocktailBarWakeUpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;
    }
.end annotation


# static fields
.field private static final COCKTAILBAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.app.cocktailbarservice"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final FEATURE_ENABLE_EDGE_FEEDS:Z

.field private final SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

.field private busMinFreqBooster:Landroid/os/DVFSHelper;

.field private cpuCoreBooster:Landroid/os/DVFSHelper;

.field private cpuFreq:I

.field private cpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private gpuMinFreqBooster:Landroid/os/DVFSHelper;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mCocktaiBarWakeUpState:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private supportedBUSFreqTable:[I

.field private supportedCPUCoreTable:[I

.field private supportedGPUFreqTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v3, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    .line 46
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    .line 54
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->SECOND_SCREEN_WAKEUP_BOOST_TIMEOUT:I

    .line 63
    iput-object p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    .line 65
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 66
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mTm:Landroid/telephony/TelephonyManager;

    .line 67
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v4, "SEC_FLOATING_FEATURE_COMMON_CONFIG_EDGE"

    invoke-virtual {v1, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "-edgefeeds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    .line 69
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->prepareBooster()V

    .line 70
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setupWakeup()V

    .line 62
    return-void

    :cond_0
    move v1, v2

    .line 68
    goto :goto_0
.end method

.method private applyBooster(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 192
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyBooster cpuFreq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-ltz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 205
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, p1}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 191
    :cond_3
    return-void
.end method

.method private isAllowedWakeUpCocktailBar()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    const-string v1, "user_setup_complete"

    .line 155
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "isAllowedWakeUpCocktailBar : false due to provision"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v2

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-nez v0, :cond_1

    .line 161
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierLockPlusEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "isAllowedWakeUpCocktailBar : CarrierLockPlus"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v2

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_3

    .line 169
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "isAllowedWakeUpCocktailBar : lock task mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return v2

    .line 172
    :cond_3
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_4

    .line 173
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "isAllowedWakeUpCocktailBar: Call State is not idle"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return v2

    .line 176
    :cond_4
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 183
    :cond_5
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 184
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    const-string v1, "edge_information_stream"

    .line 184
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_7

    .line 186
    return v2

    .line 178
    :cond_6
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 179
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "isAllowedWakeUpCocktailBar : false due to emergency mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return v2

    .line 188
    :cond_7
    return v3
.end method

.method private prepareBooster()V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez v0, :cond_0

    .line 75
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "prepareBooster : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void

    .line 78
    :cond_0
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 79
    const/16 v3, 0xc

    .line 78
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 81
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const v1, 0x124f80

    invoke-virtual {v0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    .line 82
    iget v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    if-lez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuFreq:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 86
    :cond_1
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 87
    const/16 v3, 0xe

    .line 86
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    .line 88
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    .line 89
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->cpuCoreBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedCPUCoreTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 93
    :cond_2
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 94
    const/16 v3, 0x10

    .line 93
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    .line 95
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    .line 96
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    if-eqz v0, :cond_3

    .line 97
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->gpuMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedGPUFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 100
    :cond_3
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.app.cocktailbarservice"

    .line 101
    const/16 v3, 0x13

    .line 100
    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    .line 102
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedBUSFrequency()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    .line 103
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    if-eqz v0, :cond_4

    .line 104
    iget-object v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->busMinFreqBooster:Landroid/os/DVFSHelper;

    const-string v1, "BUS"

    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->supportedBUSFreqTable:[I

    aget v2, v2, v6

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 73
    :cond_4
    return-void
.end method

.method private setupWakeup()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 109
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/cocktailbar/CocktailBarFeatures;->isSupportCocktailBar(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    iget-boolean v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-eqz v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "edge_information_stream"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    .line 112
    .local v0, "isInformationStreamOn":Z
    :goto_0
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    invoke-static {v1, v4, v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    .line 108
    .end local v0    # "isInformationStreamOn":Z
    :cond_0
    :goto_1
    return-void

    .line 111
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isInformationStreamOn":Z
    goto :goto_0

    .line 114
    .end local v0    # "isInformationStreamOn":Z
    :cond_2
    iget-object v1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarSystemUtil;->updateWakeupGesture(Landroid/content/Context;IZ)V

    goto :goto_1
.end method


# virtual methods
.method public getWakeUpState()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    return v0
.end method

.method public setWakeUpState(Z)V
    .locals 3
    .param p1, "wakeUpOn"    # Z

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez v0, :cond_0

    .line 143
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v1, "setWakeUpState : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    return-void

    .line 146
    :cond_0
    sget-object v0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWakeUpState : wakeUpOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iput-boolean p1, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mCocktaiBarWakeUpState:Z

    .line 141
    return-void
.end method

.method public wakeupCocktailBar(ZII)V
    .locals 5
    .param p1, "wakeUpOn"    # Z
    .param p2, "keyCode"    # I
    .param p3, "reason"    # I

    .prologue
    .line 120
    iget-boolean v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->FEATURE_ENABLE_EDGE_FEEDS:Z

    if-nez v2, :cond_0

    .line 121
    sget-object v2, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    const-string v3, "wakeupCocktailBar : FEATURE_ENABLE_EDGE_FEEDS is disable"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return-void

    .line 124
    :cond_0
    sget-object v2, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wakeupCocktailBar : wakeUpOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " reason "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 127
    .local v0, "identity":J
    if-eqz p1, :cond_2

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->isAllowedWakeUpCocktailBar()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/16 v2, 0x3e8

    invoke-direct {p0, v2}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->applyBooster(I)V

    .line 130
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return-void

    .line 133
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->setWakeUpState(Z)V

    .line 134
    iget-object v2, p0, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager;->mListener:Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p2, p3}, Lcom/android/server/cocktailbar/wakeup/CocktailBarWakeUpManager$OnCocktailBarWakeUpListener;->onNotifyCocktailBarWakeUp(ZII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v2

    .line 137
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    throw v2
.end method
