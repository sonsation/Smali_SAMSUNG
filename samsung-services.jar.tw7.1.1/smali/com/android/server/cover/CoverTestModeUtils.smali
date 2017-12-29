.class public Lcom/android/server/cover/CoverTestModeUtils;
.super Ljava/lang/Object;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/cover/CoverTestModeUtils$1;,
        Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    }
.end annotation


# static fields
.field private static final SHIPPED:Z

.field private static final TAG:Ljava/lang/String;

.field public static final TEST_MODE_NONE:I = -0x1

.field private static sCurrentTestMode:I


# instance fields
.field private final COVER_TEST_MODE:Ljava/lang/String;

.field private mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

.field private mContext:Landroid/content/Context;

.field private mObserver:Landroid/database/ContentObserver;

.field private mTestModeChangeHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/android/server/cover/CoverTestModeUtils;)Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;
    .locals 1

    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/cover/CoverTestModeUtils;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/cover/CoverTestModeUtils;I)V
    .locals 0
    .param p1, "currentTestMode"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/cover/CoverTestModeUtils;->updateCoverTestMode(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/server/cover/CoverTestModeUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    .line 25
    const/4 v0, -0x1

    sput v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 18
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v1, "cover_test_mode"

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->COVER_TEST_MODE:Ljava/lang/String;

    .line 31
    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$1;

    invoke-direct {v1, p0}, Lcom/android/server/cover/CoverTestModeUtils$1;-><init>(Lcom/android/server/cover/CoverTestModeUtils;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    .line 44
    sget-boolean v1, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v1, :cond_0

    .line 45
    sget-object v1, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v2, "This version has been shipped!! Then cover test mode is not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void

    .line 49
    :cond_0
    iput-object p1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    .line 52
    new-instance v1, Lcom/android/server/cover/CoverTestModeUtils$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/cover/CoverTestModeUtils$2;-><init>(Lcom/android/server/cover/CoverTestModeUtils;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    .line 59
    const-string v1, "cover_test_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "testModeUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/cover/CoverTestModeUtils;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    invoke-direct {p0}, Lcom/android/server/cover/CoverTestModeUtils;->getTestModeFromSetting()I

    move-result v1

    sput v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 43
    return-void
.end method

.method static getSmartCoverStateForTestMode(ZZ)Lcom/samsung/android/cover/CoverState;
    .locals 12
    .param p0, "switchState"    # Z
    .param p1, "attach"    # Z

    .prologue
    const/16 v2, 0xff

    const/4 v3, 0x0

    .line 103
    invoke-static {}, Lcom/android/server/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 104
    const-string v10, "1com.samsung.android.sdk.cover.hellocover"

    .line 105
    .local v10, "appUri":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v7, v0, [B

    .local v7, "appData":[B
    fill-array-data v7, :array_0

    .line 106
    const-string v11, "##########"

    .line 107
    .local v11, "serialNumber":Ljava/lang/String;
    sget-object v0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    const-string v1, "getSmartCoverStateForTestMode : make smartCoverState for test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    new-instance v0, Lcom/samsung/android/cover/CoverState;

    const-string v6, "1com.samsung.android.sdk.cover.hellocover"

    const-string v8, "##########"

    move v1, p0

    move v4, p1

    move v5, v3

    move v9, v3

    invoke-direct/range {v0 .. v9}, Lcom/samsung/android/cover/CoverState;-><init>(ZIIZILjava/lang/String;[BLjava/lang/String;Z)V

    return-object v0

    .line 110
    .end local v7    # "appData":[B
    .end local v10    # "appUri":Ljava/lang/String;
    .end local v11    # "serialNumber":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 105
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method static getTestCoverType()I
    .locals 1

    .prologue
    .line 95
    sget-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, -0x1

    return v0

    .line 98
    :cond_0
    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    return v0
.end method

.method private getTestModeFromSetting()I
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "cover_test_mode"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method static isTestMode()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 91
    sget-boolean v1, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    if-nez v1, :cond_0

    sget v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private updateCoverTestMode(I)V
    .locals 5
    .param p1, "currentTestMode"    # I

    .prologue
    const/4 v4, 0x0

    .line 70
    sget-object v0, Lcom/android/server/cover/CoverTestModeUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateCoverTestMode() sCurrentTestMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 71
    const-string v2, ", currentTestMode = "

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    if-ne v0, p1, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    if-nez v0, :cond_1

    .line 78
    return-void

    .line 81
    :cond_1
    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 82
    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mCallback:Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;

    sget v1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-interface {v0, v1, v4}, Lcom/android/server/cover/CoverTestModeUtils$OnCoverTestModeChanged;->onCoverTestModeChanged(IZ)V

    .line 85
    :cond_2
    sput p1, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    .line 87
    iget-object v0, p0, Lcom/android/server/cover/CoverTestModeUtils;->mTestModeChangeHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 69
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, " Current CoverTestModeUtils state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    const-string v0, "  SHIPPED="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/cover/CoverTestModeUtils;->SHIPPED:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 116
    const-string v0, "  sCurrentTestMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget v0, Lcom/android/server/cover/CoverTestModeUtils;->sCurrentTestMode:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 117
    const-string v0, "  "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    return-void
.end method
