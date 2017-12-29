.class public Lcom/android/server/policy/TspStateManager;
.super Ljava/lang/Object;
.source "TspStateManager.java"

# interfaces
.implements Lcom/android/server/policy/TspStateManagerPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/TspStateManager$SettingObserver;,
        Lcom/android/server/policy/TspStateManager$TspDebug;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEFAULT_3RDPARTY_DEAD_ZONE:I = 0xa

.field private static final DEFAULT_3RDPARTY_EDGE_ZONE:I = 0x28

.field private static final SETTING_TSP_DEBUG:Ljava/lang/String; = "setting_tsp_debug"

.field private static final SETTING_TSP_LAST_GRIP_CMD:Ljava/lang/String; = "setting_last_grip_cmd"

.field private static final SETTING_TSP_THRESHOLD:Ljava/lang/String; = "setting_tsp_threshold"

.field private static final SET_TUNNING_DATA:Ljava/lang/String; = "set_grip_data,"

.field private static final TAG:Ljava/lang/String; = "TspStateManagerInternal"

.field private static final TSP_COMMAND_TYPE_HOLE:I = 0x3

.field private static final TSP_COMMAND_TYPE_LAND:I = 0x2

.field private static final TSP_COMMAND_TYPE_PORT:I = 0x1

.field private static final TSP_COMMAND_TYPE_SAME:I = 0x4


# instance fields
.field private final m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mContext:Landroid/content/Context;

.field private final mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private final mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

.field private mHeight:I

.field private mHoleMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mInitHeight:I

.field private mInitWidth:I

.field private mIsEnabledCustomSetting:Z

.field private mLastDeadZoneHole:Ljava/lang/String;

.field private mLastLandCmd:Ljava/lang/String;

.field private mLastPortCmd:Ljava/lang/String;

.field private mModePolicy:Lcom/android/server/policy/TspModePolicy;

.field private mPortrait:Z

.field private mReserveLandCmd:Ljava/lang/String;

.field private mReservePortCmd:Ljava/lang/String;

.field private mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

.field private mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/server/policy/TspStateManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/policy/TspStateManager;)Lcom/android/server/policy/TspStateManager$TspDebug;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/policy/TspStateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x5a0

    const/16 v5, 0x28

    const/4 v3, 0x0

    const/16 v1, 0xa

    const/4 v7, -0x1

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    .line 62
    iput-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 64
    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v0}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 65
    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    move v2, v1

    move v4, v1

    move v6, v5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 66
    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    move v1, v7

    move v2, v7

    move v3, v7

    move v4, v7

    move v5, v7

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;-><init>(IIIIII)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    .line 67
    new-instance v0, Lcom/android/server/policy/TspGripCommand;

    invoke-direct {v0}, Lcom/android/server/policy/TspGripCommand;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    .line 80
    iput v8, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    .line 81
    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    .line 82
    iput v8, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    .line 83
    const/16 v0, 0xa00

    iput v0, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    .line 107
    return-void
.end method

.method private createDebugObjectIfNeeded()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "setting_tsp_debug"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;-><init>(II)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    iput-object v3, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    goto :goto_0
.end method

.method private initDefaultValue()V
    .locals 12

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040b0e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 153
    .local v5, "customSetting":Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    .line 155
    invoke-direct {p0, v5}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 156
    .local v11, "commandFor3rdParty":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    goto :goto_0
.end method

.method private makeLandCommand(II)Ljava/lang/String;
    .locals 2
    .param p1, "edgeZone"    # I
    .param p2, "landX1"    # I

    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .local v0, "landCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "2,1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makePortCommand(IIII)Ljava/lang/String;
    .locals 3
    .param p1, "edgeZone"    # I
    .param p2, "portX1"    # I
    .param p3, "portX2"    # I
    .param p4, "portY1"    # I

    .prologue
    const/16 v2, 0x2c

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "portCmdStrBuilder":Ljava/lang/StringBuilder;
    const-string v1, "1,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "fullCommand"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    return-object v3

    .line 185
    :cond_0
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "parsedString":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 187
    return-object v3

    .line 189
    :cond_1
    const/4 v1, 0x1

    aget-object v1, v0, v1

    return-object v1
.end method

.method private registerSettingObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 138
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    if-eqz v0, :cond_0

    .line 139
    return-void

    .line 141
    :cond_0
    new-instance v0, Lcom/android/server/policy/TspStateManager$SettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/TspStateManager$SettingObserver;-><init>(Lcom/android/server/policy/TspStateManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    .line 142
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 143
    const-string v1, "setting_tsp_threshold"

    .line 142
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 143
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    .line 142
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    const-string v1, "setting_tsp_debug"

    .line 145
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mSettingObserver:Lcom/android/server/policy/TspStateManager$SettingObserver;

    .line 145
    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    return-void
.end method

.method private updateCustomValue()V
    .locals 11

    .prologue
    const/16 v5, 0x28

    const/16 v1, 0xa

    const/4 v3, 0x0

    .line 161
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "setting_tsp_threshold"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 162
    .local v9, "customSetting":Ljava/lang/String;
    const-string v0, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDefaultValue customSetting="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iput-boolean v3, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 166
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    move v2, v1

    move v4, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/policy/TspGripCommand;->set(IIIIII)V

    .line 168
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    :cond_0
    return-void

    .line 172
    :cond_1
    iget-object v4, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v6, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v7, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    move v10, v3

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    .line 173
    invoke-direct {p0, v9}, Lcom/android/server/policy/TspStateManager;->parse3rdPartyCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "commandFor3rdParty":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    .line 160
    return-void
.end method

.method private updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V
    .locals 6
    .param p1, "command"    # Lcom/android/server/policy/TspGripCommand;

    .prologue
    .line 254
    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mIsEnabledCustomSetting:Z

    if-eqz v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCustomTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {p1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 259
    :cond_0
    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mPortEdgeZone:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mPortX1:I

    iget v4, p1, Lcom/android/server/policy/TspGripCommand;->mPortX2:I

    iget v5, p1, Lcom/android/server/policy/TspGripCommand;->mPortY1:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/android/server/policy/TspStateManager;->makePortCommand(IIII)Ljava/lang/String;

    move-result-object v1

    .line 261
    .local v1, "portCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 262
    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v2, :cond_1

    .line 263
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 264
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    .line 267
    :cond_1
    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    .line 270
    iget v2, p1, Lcom/android/server/policy/TspGripCommand;->mLandEdgeZone:I

    iget v3, p1, Lcom/android/server/policy/TspGripCommand;->mLandX1:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/policy/TspStateManager;->makeLandCommand(II)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "landCmd":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 272
    iget-boolean v2, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-nez v2, :cond_2

    .line 273
    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 274
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    .line 277
    :cond_2
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    .line 252
    return-void
.end method

.method private updateTspState(Ljava/lang/String;I)V
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 502
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v1, :cond_0

    .line 503
    return-void

    .line 506
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/policy/TspStateManager$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/TspStateManager$1;-><init>(Lcom/android/server/policy/TspStateManager;Ljava/lang/String;I)V

    .line 545
    const-string v2, "tspStateManager"

    .line 506
    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 546
    .local v0, "T":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 501
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-eqz v1, :cond_1

    .line 123
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string v2, "SEC_FLOATING_FEATURE_FRAMEWORK_SUPPORT_TSP_STATE_MANAGER"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, "feature":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "deadzone"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 127
    :cond_0
    iput-object p1, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    .line 128
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->registerSettingObserver()V

    .line 129
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    .line 130
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    .line 132
    :goto_0
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->createDebugObjectIfNeeded()V

    .line 121
    .end local v0    # "feature":Ljava/lang/String;
    :cond_1
    return-void

    .line 125
    .restart local v0    # "feature":Ljava/lang/String;
    :cond_2
    new-instance v1, Lcom/android/server/policy/TspModePolicy;

    invoke-direct {v1, p1}, Lcom/android/server/policy/TspModePolicy;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    goto :goto_0
.end method

.method public screenTurnedOn()V
    .locals 2

    .prologue
    .line 402
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    if-eqz v0, :cond_1

    .line 406
    return-void

    .line 408
    :cond_1
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 409
    const-string v0, "TspStateManagerInternal"

    const-string v1, "screenTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 412
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 413
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    .line 401
    :cond_3
    :goto_0
    return-void

    .line 414
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 415
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 416
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public setDeadzoneHole(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "deadzoneHole"    # Landroid/os/Bundle;

    .prologue
    const/16 v13, 0x2c

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 427
    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v9, :cond_0

    .line 428
    return-void

    .line 430
    :cond_0
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    if-eqz v9, :cond_1

    .line 431
    const-string v9, "TspStateManagerInternal"

    const-string v10, "setDeadzoneHole: This is not supported. "

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    return-void

    .line 434
    :cond_1
    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 435
    const-string v9, "TspStateManagerInternal"

    const-string v10, "setPortraitDeadzoneHole "

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :cond_2
    if-nez p1, :cond_3

    .line 438
    const-string v9, "TspStateManagerInternal"

    const-string v10, "setPortraitDeadzoneHole: hole is null"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_3
    const-string v9, "dead_zone_process_name"

    invoke-virtual {p1, v9, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "processName":Ljava/lang/String;
    if-nez v6, :cond_4

    .line 444
    const-string v9, "TspStateManagerInternal"

    const-string v10, "setPortraitDeadzoneHole: invalid name key"

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    return-void

    .line 448
    :cond_4
    const-string v9, "dead_zone_direction"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 450
    .local v3, "direction":I
    const-string v9, "dead_zone_port_y1"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 451
    .local v8, "startY":I
    const-string v9, "dead_zone_port_y2"

    invoke-virtual {p1, v9, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 452
    .local v4, "endY":I
    if-ltz v8, :cond_5

    if-gez v4, :cond_8

    .line 453
    :cond_5
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 454
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    :cond_6
    :goto_0
    const v8, 0x7fffffff

    .line 462
    const/4 v4, 0x0

    .line 463
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 464
    .local v2, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v2, :cond_a

    .line 465
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    iget-object v10, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v10, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    .line 466
    .local v7, "rect":Landroid/graphics/Rect;
    if-eqz v7, :cond_7

    .line 467
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 468
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 464
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 452
    .end local v2    # "count":I
    .end local v5    # "i":I
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_8
    if-eq v8, v4, :cond_5

    .line 457
    if-ge v8, v4, :cond_9

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v8, v11, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 458
    .restart local v7    # "rect":Landroid/graphics/Rect;
    :goto_2
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mHoleMap:Landroid/util/ArrayMap;

    invoke-virtual {v9, v6, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 457
    .end local v7    # "rect":Landroid/graphics/Rect;
    :cond_9
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v11, v4, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 471
    .restart local v2    # "count":I
    .restart local v5    # "i":I
    :cond_a
    if-nez v4, :cond_b

    .line 472
    const/4 v3, 0x0

    .line 474
    :cond_b
    const v9, 0x7fffffff

    if-ne v8, v9, :cond_c

    .line 475
    move v8, v4

    .line 478
    :cond_c
    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v9, v10, v11, v12, v8}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v8

    .line 479
    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v12, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-static {v9, v10, v11, v12, v4}, Lcom/android/server/policy/TspGripCommand;->getTspHeightPixel(IIIII)I

    move-result v4

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 482
    .local v1, "cmdBuilder":Ljava/lang/StringBuilder;
    const-string v9, "0,"

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 485
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 486
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 487
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 489
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, "cmd":Ljava/lang/String;
    sget-boolean v9, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v9, :cond_d

    .line 491
    const-string v9, "TspStateManagerInternal"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setDeadzoneHole: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " --> "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_d
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 495
    return-void

    .line 497
    :cond_e
    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    .line 498
    iget-object v9, p0, Lcom/android/server/policy/TspStateManager;->mLastDeadZoneHole:Ljava/lang/String;

    const/4 v10, 0x3

    invoke-direct {p0, v9, v10}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 426
    return-void
.end method

.method public setInitialDisplaySize(IIII)V
    .locals 3
    .param p1, "initWidth"    # I
    .param p2, "initHeight"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 310
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 311
    const-string v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitialDisplaySize initWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",initHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    :cond_0
    iput p1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    .line 314
    iput p2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    .line 315
    iput p3, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    .line 316
    iput p4, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    .line 317
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->initDefaultValue()V

    .line 318
    invoke-direct {p0}, Lcom/android/server/policy/TspStateManager;->updateCustomValue()V

    .line 319
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mTspDebug:Lcom/android/server/policy/TspStateManager$TspDebug;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/policy/TspStateManager$TspDebug;->setInitDisplaySize(II)V

    .line 309
    :cond_1
    return-void
.end method

.method public setPortrait(Z)V
    .locals 2
    .param p1, "isPortrait"    # Z

    .prologue
    .line 366
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    .line 367
    return-void

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    if-eqz v0, :cond_1

    .line 370
    return-void

    .line 372
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eq v0, p1, :cond_3

    .line 373
    iput-boolean p1, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    .line 375
    iget-boolean v0, p0, Lcom/android/server/policy/TspStateManager;->mPortrait:Z

    if-eqz v0, :cond_5

    .line 376
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 377
    const-string v0, "TspStateManagerInternal"

    const-string v1, "setPortrait: mReservePortCmd is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 380
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 382
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReservePortCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastPortCmd:Ljava/lang/String;

    .line 365
    :cond_3
    :goto_0
    return-void

    .line 384
    :cond_4
    const-string v0, "2,0"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    goto :goto_0

    .line 387
    :cond_5
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 388
    const-string v0, "TspStateManagerInternal"

    const-string v1, "setPortrait: mReserveLandCmd is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    return-void

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspState(Ljava/lang/String;I)V

    .line 392
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mReserveLandCmd:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/policy/TspStateManager;->mLastLandCmd:Ljava/lang/String;

    goto :goto_0
.end method

.method public updateInputMethodPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V
    .locals 7
    .param p1, "inputMethodWindow"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    .line 330
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v0, :cond_0

    .line 331
    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    invoke-virtual {v0}, Lcom/android/server/policy/TspModePolicy;->updateInputMethodPolicy()V

    .line 336
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0}, Lcom/android/server/policy/TspGripCommand;->reset()V

    .line 341
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, "defaultInputMethod":Ljava/lang/String;
    if-eqz v6, :cond_4

    const-string v0, "SamsungKeypad"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 347
    :goto_0
    if-eqz p1, :cond_2

    .line 348
    invoke-interface {p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v5

    .line 349
    .local v5, "deadzone":Landroid/os/Bundle;
    if-eqz v5, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v1, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    .line 354
    .end local v5    # "deadzone":Landroid/os/Bundle;
    :cond_2
    sget-boolean v0, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 355
    const-string v0, "TspStateManagerInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateInputMethodPolicy command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v0}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    .line 329
    return-void

    .line 343
    :cond_4
    iget-object v0, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    goto :goto_0
.end method

.method public updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;Ljava/lang/String;)V
    .locals 15
    .param p1, "focusedWindow"    # Landroid/view/WindowManagerPolicy$WindowState;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 198
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->FEATURE_ENABLED:Z

    if-nez v1, :cond_0

    .line 199
    return-void

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mModePolicy:Lcom/android/server/policy/TspModePolicy;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/android/server/policy/TspModePolicy;->updateWindowPolicy(Landroid/view/WindowManagerPolicy$WindowState;)V

    .line 204
    return-void

    .line 207
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->mDeviceDefaultTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 209
    const/4 v13, 0x0

    .line 211
    .local v13, "applyDefaultDeadzone":Z
    if-eqz p1, :cond_4

    .line 212
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_7

    .line 213
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0xbb7

    if-gt v1, v2, :cond_6

    const/4 v13, 0x1

    .line 215
    .local v13, "applyDefaultDeadzone":Z
    :goto_0
    if-nez v13, :cond_2

    .line 216
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/view/IWindowStateBridge;->isHomeTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 217
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v14, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 218
    .local v14, "windowPkgName":Ljava/lang/String;
    const-string v1, "com.sec.android.app.launcher"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 219
    const-string v1, "com.sec.android.app.easylauncher"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 232
    .end local v13    # "applyDefaultDeadzone":Z
    .end local v14    # "windowPkgName":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v13, :cond_3

    .line 233
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget-object v2, p0, Lcom/android/server/policy/TspStateManager;->m3rdPartyTspCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/TspGripCommand;->set(Lcom/android/server/policy/TspGripCommand;)V

    .line 236
    :cond_3
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getEdgeTspDeadzone()Ljava/lang/String;

    move-result-object v6

    .line 238
    .local v6, "tspActivityDeadzone":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v2, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v3, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v4, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v5, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILjava/lang/String;)Z

    .line 241
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getTspDeadzone()Landroid/os/Bundle;

    move-result-object v12

    .line 242
    .local v12, "deadzone":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    iget v8, p0, Lcom/android/server/policy/TspStateManager;->mWidth:I

    iget v9, p0, Lcom/android/server/policy/TspStateManager;->mHeight:I

    iget v10, p0, Lcom/android/server/policy/TspStateManager;->mInitWidth:I

    iget v11, p0, Lcom/android/server/policy/TspStateManager;->mInitHeight:I

    invoke-virtual/range {v7 .. v12}, Lcom/android/server/policy/TspGripCommand;->parse(IIIILandroid/os/Bundle;)Z

    .line 244
    .end local v6    # "tspActivityDeadzone":Ljava/lang/String;
    .end local v12    # "deadzone":Landroid/os/Bundle;
    :cond_4
    sget-boolean v1, Lcom/android/server/policy/TspStateManager;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 245
    const-string v1, "TspStateManagerInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateWindowPolicy focusedWindow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isDeviceDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string v3, ",packageName="

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    const-string v3, ",command="

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    .line 245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/TspStateManager;->mCurrentCommand:Lcom/android/server/policy/TspGripCommand;

    invoke-direct {p0, v1}, Lcom/android/server/policy/TspStateManager;->updateTspCommand(Lcom/android/server/policy/TspGripCommand;)V

    .line 197
    return-void

    .line 213
    .local v13, "applyDefaultDeadzone":Z
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 212
    :cond_7
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 218
    .local v13, "applyDefaultDeadzone":Z
    .restart local v14    # "windowPkgName":Ljava/lang/String;
    :cond_8
    const/4 v13, 0x1

    .local v13, "applyDefaultDeadzone":Z
    goto :goto_1

    .line 221
    .end local v14    # "windowPkgName":Ljava/lang/String;
    .local v13, "applyDefaultDeadzone":Z
    :cond_9
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->isDeviceDefaultTheme()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 222
    const/4 v13, 0x1

    .local v13, "applyDefaultDeadzone":Z
    goto/16 :goto_1

    .line 224
    .local v13, "applyDefaultDeadzone":Z
    :cond_a
    invoke-interface/range {p1 .. p1}, Landroid/view/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget-object v14, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 225
    .restart local v14    # "windowPkgName":Ljava/lang/String;
    if-eqz v14, :cond_b

    const-string v1, "com.sec.android."

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 226
    :cond_b
    const-string v1, "com.samsung."

    invoke-virtual {v14, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    goto/16 :goto_1

    .line 225
    :cond_c
    const/4 v13, 0x1

    .local v13, "applyDefaultDeadzone":Z
    goto/16 :goto_1
.end method
