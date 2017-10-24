.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_MAX_ADJ:I = 0x38a

.field static final CACHED_APP_MIN_ADJ:I = 0x384

.field static final EMPTY_APP_PERCENT:I

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field static final HOME_APP_ADJ:I = 0x258

.field static final INVALID_ADJ:I = -0x2710

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x3e8

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field static final PERSISTENT_PROC_ADJ:I = -0x320

.field static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_ABNORMAL:I = -0x3

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_CACHED:I = -0x2

.field static final SCHED_GROUP_DEFAULT:I = 0x1

.field static final SCHED_GROUP_FOREGROUND_BOOST:I = 0x5

.field static final SCHED_GROUP_MAX:I = 0x5

.field static final SCHED_GROUP_MIN:I = -0x3

.field static final SERVICE_ADJ:I = 0x1f4

.field static final SERVICE_B_ADJ:I = 0x320

.field static final SYSTEM_ADJ:I = -0x384

.field private static final TAG:Ljava/lang/String;

.field static TRIM_CACHED_APPS:I = 0x0

.field static final TRIM_CACHE_PERCENT:I

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static final TRIM_EMPTY_PERCENT:I

.field static final TRIM_ENABLE_MEMORY:J

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x3e9

.field static final USE_TRIM_SETTINGS:Z

.field static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field mDisplayHeight:I

.field mDisplayWidth:I

.field private mHaveDisplaySize:Z

.field private mIsDisplayChanged:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeHigh32BitForDHA:[I

.field private final mOomMinFreeHigh64BitForDHA:[I

.field private final mOomMinFreeLow:[I

.field private final mOomMinFreeLow32BitForDHA:[I

.field private final mOomMinFreeLow64BitForDHA:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v2, 0x64

    const/16 v4, 0x11

    .line 45
    const-string/jumbo v0, "ActivityManager"

    sput-object v0, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    .line 169
    const-string/jumbo v0, "ro.sys.fw.bg_apps_limit"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 172
    const-string/jumbo v0, "ro.sys.fw.use_trim_settings"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 171
    sput-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    .line 173
    const-string/jumbo v0, "ro.sys.fw.empty_app_percent"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    .line 175
    const-string/jumbo v0, "ro.sys.fw.trim_empty_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 174
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    .line 177
    const-string/jumbo v0, "ro.sys.fw.trim_cache_percent"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 176
    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    .line 179
    const-string/jumbo v0, "ro.sys.fw.trim_enable_memory"

    const-wide/32 v2, 0x40000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 178
    sput-wide v0, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    .line 186
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 199
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimEmptyApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 213
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeTrimCachedApps()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 219
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 225
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 670
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 690
    new-array v0, v4, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 710
    new-array v0, v4, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 730
    new-array v0, v4, [J

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 750
    new-array v0, v4, [J

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    .line 44
    return-void

    .line 670
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 690
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 710
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 730
    :array_3
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x4e20
        0x4e20
        0x4e20
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 750
    :array_4
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x6

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 247
    new-array v1, v2, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32BitForDHA:[I

    .line 252
    new-array v1, v2, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32BitForDHA:[I

    .line 257
    new-array v1, v2, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow64BitForDHA:[I

    .line 262
    new-array v1, v2, [I

    fill-array-data v1, :array_4

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh64BitForDHA:[I

    .line 269
    new-array v1, v2, [I

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 275
    new-array v1, v2, [I

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 280
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 285
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 287
    iput v6, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 300
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 301
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 302
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 303
    invoke-direct {p0, v6, v6, v6}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 299
    return-void

    .line 241
    nop

    :array_0
    .array-data 4
        0x0
        0x64
        0xc8
        0x12c
        0x384
        0x38a
    .end array-data

    .line 247
    :array_1
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 252
    :array_2
    .array-data 4
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data

    .line 257
    :array_3
    .array-data 4
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 262
    :array_4
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x36ee8
        0x4f588
    .end array-data

    .line 269
    :array_5
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 275
    :array_6
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static allowTrim()Z
    .locals 4

    .prologue
    .line 180
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/ProcessList;->TRIM_ENABLE_MEMORY:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 608
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 609
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 610
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 608
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 613
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 607
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 502
    if-ne p2, p3, :cond_1

    .line 503
    if-nez p1, :cond_0

    return-object p0

    .line 504
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 506
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static computeEmptyProcessLimit(I)I
    .locals 1
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 494
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    sget v0, Lcom/android/server/am/ProcessList;->EMPTY_APP_PERCENT:I

    mul-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 497
    :cond_0
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method public static computeNextPssTime(IZZZJ)J
    .locals 4
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 780
    if-eqz p2, :cond_1

    .line 781
    if-eqz p1, :cond_0

    .line 782
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 787
    .local v0, "table":[J
    :goto_0
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    .line 783
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_0

    .line 784
    :cond_1
    if-eqz p1, :cond_2

    .line 785
    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    .line 786
    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static computeTrimCachedApps()I
    .locals 2

    .prologue
    .line 205
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->TRIM_CACHE_PERCENT:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 208
    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static computeTrimEmptyApps()I
    .locals 2

    .prologue
    .line 191
    sget-boolean v0, Lcom/android/server/am/ProcessList;->USE_TRIM_SETTINGS:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ProcessList;->allowTrim()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_PERCENT:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    return v0

    .line 194
    :cond_0
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0x2bc

    const/16 v4, -0x320

    const/16 v3, -0x384

    const/16 v1, -0x3e8

    const/4 v2, 0x0

    .line 510
    const/16 v0, 0x384

    if-lt p0, v0, :cond_0

    .line 511
    const-string/jumbo v0, "cch"

    const-string/jumbo v1, "  "

    const/16 v2, 0x384

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 512
    :cond_0
    const/16 v0, 0x320

    if-lt p0, v0, :cond_1

    .line 513
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x320

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 514
    :cond_1
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_2

    .line 515
    const-string/jumbo v0, "prev "

    const/16 v1, 0x2bc

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 516
    :cond_2
    const/16 v0, 0x258

    if-lt p0, v0, :cond_3

    .line 517
    const-string/jumbo v0, "home "

    const/16 v1, 0x258

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 518
    :cond_3
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_4

    .line 519
    const-string/jumbo v0, "svc  "

    const/16 v1, 0x1f4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 520
    :cond_4
    const/16 v0, 0x190

    if-lt p0, v0, :cond_5

    .line 521
    const-string/jumbo v0, "hvy  "

    const/16 v1, 0x190

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 522
    :cond_5
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_6

    .line 523
    const-string/jumbo v0, "bkup "

    const/16 v1, 0x12c

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_6
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_7

    .line 525
    const-string/jumbo v0, "prcp "

    const/16 v1, 0xc8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 526
    :cond_7
    const/16 v0, 0x64

    if-lt p0, v0, :cond_8

    .line 527
    const-string/jumbo v0, "vis  "

    const/16 v1, 0x64

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 528
    :cond_8
    if-ltz p0, :cond_9

    .line 529
    const-string/jumbo v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 530
    :cond_9
    if-lt p0, v5, :cond_a

    .line 531
    const-string/jumbo v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 532
    :cond_a
    if-lt p0, v4, :cond_b

    .line 533
    const-string/jumbo v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 534
    :cond_b
    if-lt p0, v3, :cond_c

    .line 535
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 536
    :cond_c
    if-lt p0, v1, :cond_d

    .line 537
    const-string/jumbo v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 539
    :cond_d
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 545
    packed-switch p0, :pswitch_data_0

    .line 601
    const-string/jumbo v0, "??"

    .line 604
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 547
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "N "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 550
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "P "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 553
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "PU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 556
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "T "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "SB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 562
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v0, "SF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 565
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v0, "TS"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 568
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string/jumbo v0, "IF"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 571
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string/jumbo v0, "IB"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 574
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v0, "BU"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 577
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v0, "HW"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 580
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v0, "S "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 583
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string/jumbo v0, "R "

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 586
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string/jumbo v0, "HO"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 589
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string/jumbo v0, "LA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 592
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string/jumbo v0, "CA"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 595
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_10
    const-string/jumbo v0, "Ca"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 598
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_11
    const-string/jumbo v0, "CE"

    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .locals 2
    .param p0, "test"    # Z

    .prologue
    .line 775
    if-eqz p0, :cond_0

    const/16 v0, 0x2710

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :cond_0
    const/16 v0, 0x3a98

    goto :goto_0
.end method

.method private static openLmkdSocket()Z
    .locals 5

    .prologue
    .line 846
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 847
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 848
    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string/jumbo v3, "lmkd"

    .line 849
    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    .line 848
    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 847
    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 850
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 857
    const/4 v1, 0x1

    return v1

    .line 851
    :catch_0
    move-exception v0

    .line 852
    .local v0, "ex":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 854
    const/4 v1, 0x0

    return v1
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 771
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final remove(I)V
    .locals 2
    .param p0, "pid"    # I

    .prologue
    .line 838
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 839
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 840
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 841
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 837
    return-void
.end method

.method public static final setOomAdj(III)V
    .locals 10
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    .line 817
    const/16 v1, 0x3e9

    if-ne p2, v1, :cond_0

    .line 818
    return-void

    .line 820
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 821
    .local v4, "start":J
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 822
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 823
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 824
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 825
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 826
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 827
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 828
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_1

    .line 829
    const-string/jumbo v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 830
    const-string/jumbo v7, " = "

    .line 829
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :cond_1
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .locals 26
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 338
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x15e

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x43af0000    # 350.0f

    div-float v20, v21, v22

    .line 341
    .local v20, "scaleMem":F
    const v11, 0x5dc00

    .line 342
    .local v11, "minSize":I
    const v10, 0xfa000

    .line 345
    .local v10, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v21

    if-nez v21, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x600

    cmp-long v21, v22, v24

    if-gez v21, :cond_1

    mul-int v21, p1, p2

    const v22, 0xfa000

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_1

    .line 347
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v22, v0

    const-wide/16 v24, 0x12c

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x44b54000    # 1450.0f

    div-float v20, v21, v22

    .line 349
    const v11, 0x25800

    .line 350
    const v10, 0x1fa400

    .line 354
    :cond_1
    mul-int v21, p1, p2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    int-to-float v0, v11

    move/from16 v22, v0

    sub-float v21, v21, v22

    sub-int v22, v10, v11

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v19, v21, v22

    .line 361
    .local v19, "scaleDisp":F
    cmpl-float v21, v20, v19

    if-lez v21, :cond_6

    move/from16 v18, v20

    .line 362
    .local v18, "scale":F
    :goto_0
    const/16 v21, 0x0

    cmpg-float v21, v18, v21

    if-gez v21, :cond_7

    const/16 v18, 0x0

    .line 364
    :cond_2
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    .line 365
    const v22, 0x10e0009

    .line 364
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    .line 366
    .local v13, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    .line 367
    const v22, 0x10e0008

    .line 366
    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 373
    .local v12, "minfree_abs":I
    sget-boolean v21, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-nez v21, :cond_3

    sget v21, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    const/high16 v22, -0x40800000    # -1.0f

    cmpl-float v21, v21, v22

    if-eqz v21, :cond_3

    .line 374
    sget v18, Lcom/android/server/am/DynamicHiddenApp;->mLMKScale:F

    .line 376
    :cond_3
    sget-boolean v21, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-eqz v21, :cond_4

    .line 377
    const/16 v21, 0x1

    sput-boolean v21, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    .line 383
    :cond_4
    sget-object v21, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    if-lez v21, :cond_8

    sget-boolean v7, Lcom/android/server/am/DynamicHiddenApp;->mb64bitLMKEnable:Z

    .line 386
    :goto_2
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_c

    .line 399
    const/4 v8, 0x0

    .line 400
    .local v8, "low":I
    const/4 v5, 0x0

    .line 402
    .local v5, "high":I
    sget-boolean v21, Lcom/android/server/am/DynamicHiddenApp;->FHA_ENABLE:Z

    if-eqz v21, :cond_a

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v21, v0

    aget v8, v21, v6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v21, v0

    aget v5, v21, v6

    .line 405
    if-eqz v7, :cond_5

    .line 407
    const/16 v21, 0x4

    move/from16 v0, v21

    if-ne v6, v0, :cond_9

    mul-int/lit8 v21, v5, 0x3

    div-int/lit8 v5, v21, 0x2

    .line 421
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    int-to-float v0, v8

    move/from16 v22, v0

    sub-int v23, v5, v8

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v18

    add-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v21, v6

    .line 386
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v8    # "low":I
    .end local v12    # "minfree_abs":I
    .end local v13    # "minfree_adj":I
    .end local v18    # "scale":F
    :cond_6
    move/from16 v18, v19

    .line 361
    goto/16 :goto_0

    .line 363
    .restart local v18    # "scale":F
    :cond_7
    const/high16 v21, 0x3f800000    # 1.0f

    cmpl-float v21, v18, v21

    if-lez v21, :cond_2

    const/high16 v18, 0x3f800000    # 1.0f

    goto/16 :goto_1

    .line 383
    .restart local v12    # "minfree_abs":I
    .restart local v13    # "minfree_adj":I
    :cond_8
    const/4 v7, 0x0

    .local v7, "is64bit":Z
    goto :goto_2

    .line 408
    .end local v7    # "is64bit":Z
    .restart local v5    # "high":I
    .restart local v6    # "i":I
    .restart local v8    # "low":I
    :cond_9
    const/16 v21, 0x5

    move/from16 v0, v21

    if-ne v6, v0, :cond_5

    mul-int/lit8 v21, v5, 0x7

    div-int/lit8 v5, v21, 0x4

    goto :goto_4

    .line 411
    :cond_a
    if-eqz v7, :cond_b

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow64BitForDHA:[I

    move-object/from16 v21, v0

    aget v8, v21, v6

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh64BitForDHA:[I

    move-object/from16 v21, v0

    aget v5, v21, v6

    goto :goto_4

    .line 415
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow32BitForDHA:[I

    move-object/from16 v21, v0

    aget v8, v21, v6

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh32BitForDHA:[I

    move-object/from16 v21, v0

    aget v5, v21, v6

    goto :goto_4

    .line 424
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_c
    if-ltz v12, :cond_d

    .line 425
    const/4 v6, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_d

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v23, v0

    aget v23, v23, v6

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v22, v22, v23

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    add-int/lit8 v24, v24, -0x1

    aget v23, v23, v24

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    .line 426
    div-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    aput v22, v21, v6

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 431
    :cond_d
    if-eqz v13, :cond_f

    .line 432
    const/4 v6, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_f

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v22, v21, v6

    int-to-float v0, v13

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v24, v0

    aget v24, v24, v6

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v23, v23, v24

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    add-int/lit8 v25, v25, -0x1

    aget v24, v24, v25

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    .line 433
    div-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    aput v22, v21, v6

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    if-gez v21, :cond_e

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput v22, v21, v6

    .line 432
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 444
    :cond_f
    const/16 v21, 0x38a

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v22

    const-wide/16 v24, 0x400

    div-long v22, v22, v24

    const-wide/16 v24, 0x3

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 448
    mul-int v21, p1, p2

    mul-int/lit8 v21, v21, 0x4

    mul-int/lit8 v21, v21, 0x3

    move/from16 v0, v21

    div-int/lit16 v15, v0, 0x400

    .line 449
    .local v15, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10e000b

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 450
    .local v17, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x10e000a

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 452
    .local v16, "reserve_abs":I
    if-ltz v16, :cond_10

    .line 453
    move/from16 v15, v16

    .line 456
    :cond_10
    if-eqz v17, :cond_11

    .line 457
    add-int v15, v15, v17

    .line 458
    if-gez v15, :cond_11

    .line 459
    const/4 v15, 0x0

    .line 464
    :cond_11
    const-string/jumbo v21, "none"

    sget-object v22, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_12

    .line 465
    sget-object v21, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    const-string/jumbo v22, ","

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 466
    .local v9, "mMinFreeProperty":[Ljava/lang/String;
    sget-object v21, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateOomLevels using LMKArray "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/server/am/DynamicHiddenApp;->mLMKArray:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/4 v6, 0x0

    :goto_7
    :try_start_0
    array-length v0, v9

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_12

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget-object v22, v9, v6

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    mul-int/lit8 v22, v22, 0x4

    aput v22, v21, v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 472
    :catch_0
    move-exception v14

    .line 473
    .local v14, "nfe":Ljava/lang/NumberFormatException;
    sget-object v21, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v22, "updateOomLevels, LMKArray NumberFormatException "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    .end local v9    # "mMinFreeProperty":[Ljava/lang/String;
    .end local v14    # "nfe":Ljava/lang/NumberFormatException;
    :cond_12
    if-eqz p3, :cond_14

    .line 479
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    mul-int/lit8 v21, v21, 0x2

    add-int/lit8 v21, v21, 0x1

    mul-int/lit8 v21, v21, 0x4

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 480
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 481
    const/4 v6, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_13

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    mul-int/lit16 v0, v0, 0x400

    move/from16 v21, v0

    move/from16 v0, v21

    div-int/lit16 v0, v0, 0x1000

    move/from16 v21, v0

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 481
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 486
    :cond_13
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 487
    const-string/jumbo v21, "sys.sysctl.extra_free_kbytes"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_14
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v8, 0x0

    .line 862
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v2, v4, :cond_1

    .line 863
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v4, :cond_0

    .line 864
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v4

    if-nez v4, :cond_0

    .line 866
    const-wide/16 v4, 0x3e8

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 867
    :catch_0
    move-exception v3

    .local v3, "ie":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 874
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 875
    return-void

    .line 876
    :catch_1
    move-exception v0

    .line 877
    .local v0, "ex":Ljava/io/IOException;
    sget-object v4, Lcom/android/server/am/ProcessList;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Error writing to lowmemorykiller socket"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    :try_start_2
    sget-object v4, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 884
    :goto_2
    sput-object v8, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_1

    .line 860
    .end local v0    # "ex":Ljava/io/IOException;
    :cond_1
    return-void

    .line 881
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .local v1, "ex2":Ljava/io/IOException;
    goto :goto_2
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 5
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 307
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    if-eqz v1, :cond_1

    .line 308
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 309
    .local v0, "p":Landroid/graphics/Point;
    invoke-virtual {p1, v3, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 310
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1

    .line 312
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    .line 313
    iget v1, v0, Landroid/graphics/Point;->y:I

    iput v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    .line 315
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v4}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 316
    iput-boolean v4, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 317
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 306
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 804
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 4
    .param p1, "adjustment"    # I

    .prologue
    .line 791
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 792
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2

    .line 791
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    return-wide v2
.end method

.method public getmIsDisplayChanged()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    return v0
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 895
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 894
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 899
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 898
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 891
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 890
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 903
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 902
    return-void
.end method

.method public setmIsDisplayChanged(Z)V
    .locals 1
    .param p1, "isChanged"    # Z

    .prologue
    .line 324
    if-eqz p1, :cond_0

    .line 326
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mIsDisplayChanged:Z

    .line 322
    :cond_0
    return-void
.end method

.method public updateLMKThreshold()V
    .locals 3

    .prologue
    .line 909
    iget v0, p0, Lcom/android/server/am/ProcessList;->mDisplayWidth:I

    iget v1, p0, Lcom/android/server/am/ProcessList;->mDisplayHeight:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 908
    return-void
.end method
