.class public Lcom/mapps/android/share/Track;
.super Ljava/lang/Object;
.source "Track.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/share/Track$TrackAdInfo;,
        Lcom/mapps/android/share/Track$TrackCompleteListener;
    }
.end annotation


# static fields
.field public static final AB_INTERVAL:Ljava/lang/String; = "ab_interval"

.field public static final DEFAULTINTERVAL:Ljava/lang/String; = "0"

.field public static final DEFAULTISINTERVAL:Ljava/lang/String; = "1"

.field public static final Detarget:Ljava/lang/String; = "0"

.field public static FAIL:Ljava/lang/String; = null

.field public static final INTERVAL_USE_NO:Ljava/lang/String; = "0"

.field public static final INTERVAL_USE_YES:Ljava/lang/String; = "1"

.field public static final NETWORK_3G:I = 0x2

.field public static final NETWORK_NONE:I = 0x4

.field public static final NETWORK_WIFI:I = 0x1

.field public static final NETWORK_WIMAX:I = 0x3

.field public static final SHAREDFILE:Ljava/lang/String; = "mezzo"

.field public static SUCCESS:Ljava/lang/String; = null

.field public static final Target:Ljava/lang/String; = "1"

.field public static advertise_ID:Ljava/lang/String;

.field private static instance:Lcom/mapps/android/share/Track;

.field public static isStart:Z

.field public static ispkgSend:Z

.field public static mdeviceModel:Ljava/lang/String;

.field public static mdeviceVersion:Ljava/lang/String;

.field public static pctx:Landroid/content/Context;


# instance fields
.field private nt:Lcom/mezzo/common/network/Nt;

.field private ntOnProgressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/mapps/android/share/Track;->advertise_ID:Ljava/lang/String;

    .line 44
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/mapps/android/share/Track;->mdeviceVersion:Ljava/lang/String;

    .line 45
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/mapps/android/share/Track;->mdeviceModel:Ljava/lang/String;

    .line 46
    sput-object v1, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    .line 47
    const-string v0, "1"

    sput-object v0, Lcom/mapps/android/share/Track;->SUCCESS:Ljava/lang/String;

    .line 48
    const-string v0, "0"

    sput-object v0, Lcom/mapps/android/share/Track;->FAIL:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mapps/android/share/Track;->isStart:Z

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mapps/android/share/Track;->ispkgSend:Z

    .line 68
    sput-object v1, Lcom/mapps/android/share/Track;->instance:Lcom/mapps/android/share/Track;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Lcom/mapps/android/share/Track$1;

    invoke-direct {v0, p0}, Lcom/mapps/android/share/Track$1;-><init>(Lcom/mapps/android/share/Track;)V

    iput-object v0, p0, Lcom/mapps/android/share/Track;->ntOnProgressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    .line 79
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/Track;Lcom/mezzo/common/network/Nt;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mezzo/common/network/Nt;

    return-void
.end method

.method static synthetic access$1(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mapps/android/share/Track;->nt:Lcom/mezzo/common/network/Nt;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mapps/android/share/Track;)Lcom/mezzo/common/network/Nt$OnProgressbarListener;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mapps/android/share/Track;->ntOnProgressbarListener:Lcom/mezzo/common/network/Nt$OnProgressbarListener;

    return-object v0
.end method

.method public static getInstance()Lcom/mapps/android/share/Track;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/mapps/android/share/Track;->instance:Lcom/mapps/android/share/Track;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/mapps/android/share/Track;

    invoke-direct {v0}, Lcom/mapps/android/share/Track;-><init>()V

    sput-object v0, Lcom/mapps/android/share/Track;->instance:Lcom/mapps/android/share/Track;

    .line 74
    :cond_0
    sget-object v0, Lcom/mapps/android/share/Track;->instance:Lcom/mapps/android/share/Track;

    return-object v0
.end method

.method private requestServerPkgConf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mezzo/common/network/request/OnConnectionListener;)V
    .locals 7
    .param p1, "pub_no"    # Ljava/lang/String;
    .param p2, "media_no"    # Ljava/lang/String;
    .param p3, "section_no"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "listener"    # Lcom/mezzo/common/network/request/OnConnectionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v0, Lcom/mapps/android/share/Track$2;

    move-object v1, p0

    move v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/mapps/android/share/Track$2;-><init>(Lcom/mapps/android/share/Track;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 190
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/share/Track$3;

    invoke-direct {v2, p0, v0}, Lcom/mapps/android/share/Track$3;-><init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 203
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 204
    return-void
.end method

.method private requestServerPkgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 7
    .param p1, "pub_no"    # Ljava/lang/String;
    .param p2, "media_no"    # Ljava/lang/String;
    .param p3, "codeType"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/mezzo/common/network/request/OnConnectionListener;
    .param p5, "completeListener"    # Lcom/mapps/android/share/Track$TrackCompleteListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 386
    new-instance v2, Lcom/mapps/android/share/Track$9;

    invoke-direct {v2, p0, p5}, Lcom/mapps/android/share/Track$9;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 394
    .local v2, "TrackCompleteHandler":Landroid/os/Handler;
    new-instance v5, Lcom/mapps/android/share/Track$10;

    invoke-direct {v5, p0, p1, p2, p4}, Lcom/mapps/android/share/Track$10;-><init>(Lcom/mapps/android/share/Track;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;)V

    .line 411
    .local v5, "requestHandler":Landroid/os/Handler;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/Track$11;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/Track$11;-><init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 460
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 461
    return-void
.end method


# virtual methods
.method public declared-synchronized SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pub_no"    # Ljava/lang/String;
    .param p3, "media_no"    # Ljava/lang/String;
    .param p4, "codeType"    # Ljava/lang/String;
    .param p5, "completeListener"    # Lcom/mapps/android/share/Track$TrackCompleteListener;

    .prologue
    .line 301
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    .line 303
    new-instance v2, Lcom/mapps/android/share/Track$7;

    invoke-direct {v2, p0, p5}, Lcom/mapps/android/share/Track$7;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    .local v2, "handler":Landroid/os/Handler;
    :try_start_1
    new-instance v0, Lcom/mapps/android/share/Track$8;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/Track$8;-><init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v0

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/mapps/android/share/Track;->requestServerPkgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mezzo/common/network/request/OnConnectionListener;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 382
    :goto_0
    monitor-exit p0

    return-void

    .line 378
    :catch_0
    move-exception v9

    .line 379
    .local v9, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 380
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 301
    .end local v2    # "handler":Landroid/os/Handler;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pub_no"    # Ljava/lang/String;
    .param p3, "media_no"    # Ljava/lang/String;

    .prologue
    .line 496
    new-instance v13, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyy-MM-dd a hh:mm:ss"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 497
    .local v13, "sf":Ljava/text/SimpleDateFormat;
    const-wide/16 v10, -0x1

    .line 498
    .local v10, "min":J
    const-string/jumbo v17, "package_start"

    new-instance v18, Ljava/lang/StringBuilder;

    const-string/jumbo v19, "package_start"

    invoke-direct/range {v18 .. v19}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 499
    new-instance v17, Ljava/lang/StringBuilder;

    const-string/jumbo v18, "pkgtime"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, "pref_time":Ljava/lang/String;
    if-eqz v12, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 501
    new-instance v17, Ljava/text/ParsePosition;

    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, v17

    invoke-virtual {v13, v12, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v16

    .line 502
    .local v16, "startday":Ljava/util/Date;
    invoke-virtual/range {v16 .. v16}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 504
    .local v14, "startTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 505
    .local v4, "cal":Ljava/util/Calendar;
    invoke-virtual {v4}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    .line 506
    .local v5, "endDate":Ljava/util/Date;
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 507
    .local v6, "endTime":J
    sub-long v8, v6, v14

    .line 508
    .local v8, "mills":J
    const-wide/32 v18, 0xea60

    div-long v10, v8, v18

    .line 511
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "endDate":Ljava/util/Date;
    .end local v6    # "endTime":J
    .end local v8    # "mills":J
    .end local v12    # "pref_time":Ljava/lang/String;
    .end local v14    # "startTime":J
    .end local v16    # "startday":Ljava/util/Date;
    :cond_0
    return-wide v10
.end method

.method public getActivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 464
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 466
    .local v0, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    .line 467
    .local v1, "info":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getAdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 82
    const-string v0, "&m_id="

    .line 83
    .local v0, "param":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    return-object v0
.end method

.method public getAdidv2(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 89
    const-string v0, "&d_adid="

    .line 90
    .local v0, "param":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public getAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 551
    const/4 v0, 0x0

    .line 552
    .local v0, "pref":Landroid/content/SharedPreferences;
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 554
    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getAppTest(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 487
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v3}, Lcom/mapps/android/share/Track;->getApplicationList(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "&m_package="

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, "test":Ljava/lang/String;
    const-string v3, "\\^"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "arr":[Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(I)V

    .line 490
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 493
    return-void

    .line 491
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getApparrList(Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "codeType"    # Ljava/lang/String;
    .param p3, "completeListener"    # Lcom/mapps/android/share/Track$TrackCompleteListener;

    .prologue
    .line 146
    :try_start_0
    const-string v0, ""

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v2, v0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-static {}, Lcom/mapps/android/share/ShareUtil;->getInstance()Lcom/mapps/android/share/ShareUtil;

    move-result-object v0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v6

    .line 150
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    const-string v0, "getApparrList error"

    invoke-static {v0}, Lcom/mezzo/common/MzLog;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getApplicationList(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "flag"    # Z

    .prologue
    .line 104
    const-string v0, "&m_package="

    .line 106
    .local v0, "appList":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 107
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 109
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 111
    .local v2, "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 125
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 111
    .restart local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v3    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 113
    .local v1, "packageInfo":Landroid/content/pm/ApplicationInfo;
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 114
    iget v5, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_0

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    goto :goto_0

    .line 118
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 122
    .end local v1    # "packageInfo":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "packages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v3    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "strPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 130
    const/4 v1, 0x0

    .line 132
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 138
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 139
    const/4 v2, 0x1

    .line 141
    :cond_1
    return v2

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-boolean v3, Lcom/mezzo/common/MzLog;->ISLOG:Z

    if-eqz v3, :cond_0

    .line 135
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "p"    # Ljava/lang/String;
    .param p3, "m"    # Ljava/lang/String;
    .param p4, "s"    # Ljava/lang/String;
    .param p5, "media_type"    # I
    .param p6, "codeType"    # Ljava/lang/String;

    .prologue
    .line 558
    const-string v3, "mezzo"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 559
    .local v2, "pref":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ab_interval"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, "key":Ljava/lang/String;
    const-string v3, "0"

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 561
    .local v0, "interval":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 562
    const-string v0, "0"

    .line 564
    :cond_0
    return-object v0
.end method

.method public getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 515
    const-string v1, "mezzo"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 516
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getpkgSend()Z
    .locals 1

    .prologue
    .line 96
    sget-boolean v0, Lcom/mapps/android/share/Track;->ispkgSend:Z

    return v0
.end method

.method public removeAllPreferences(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 535
    const-string v2, "mezzo"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 536
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 537
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 538
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 539
    return-void
.end method

.method public removePreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 528
    const-string v2, "mezzo"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 529
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 530
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 531
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 532
    return-void
.end method

.method public declared-synchronized requestConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "pub_no"    # Ljava/lang/String;
    .param p3, "media_no"    # Ljava/lang/String;
    .param p4, "section_no"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "media_type"    # I
    .param p7, "codeType"    # Ljava/lang/String;
    .param p8, "completeListener"    # Lcom/mapps/android/share/Track$TrackCompleteListener;

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    sput-object p1, Lcom/mapps/android/share/Track;->pctx:Landroid/content/Context;

    .line 209
    new-instance v10, Lcom/mapps/android/share/Track$4;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/mapps/android/share/Track$4;-><init>(Lcom/mapps/android/share/Track;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 217
    .local v10, "apparrListHandler":Landroid/os/Handler;
    new-instance v6, Lcom/mapps/android/share/Track$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    invoke-direct {v6, v0, v1}, Lcom/mapps/android/share/Track$5;-><init>(Lcom/mapps/android/share/Track;Lcom/mapps/android/share/Track$TrackCompleteListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .local v6, "handler":Landroid/os/Handler;
    :try_start_1
    new-instance v4, Lcom/mapps/android/share/Track$6;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v4 .. v10}, Lcom/mapps/android/share/Track$6;-><init>(Lcom/mapps/android/share/Track;Landroid/os/Handler;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move/from16 v15, p6

    move-object/from16 v16, v4

    invoke-direct/range {v11 .. v16}, Lcom/mapps/android/share/Track;->requestServerPkgConf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/mezzo/common/network/request/OnConnectionListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 284
    :goto_0
    monitor-exit p0

    return-void

    .line 280
    :catch_0
    move-exception v17

    .line 281
    .local v17, "e":Ljava/lang/Exception;
    const/4 v4, 0x0

    :try_start_2
    invoke-virtual {v6, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 282
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 207
    .end local v6    # "handler":Landroid/os/Handler;
    .end local v10    # "apparrListHandler":Landroid/os/Handler;
    .end local v17    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    .line 521
    const-string v2, "mezzo"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 522
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 523
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 524
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 525
    return-void
.end method

.method public selectPTaget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 471
    const-string v3, "\\^"

    invoke-virtual {p3, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "arrpkg":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 483
    const/4 v2, 0x1

    :cond_0
    :goto_1
    return v2

    .line 473
    :cond_1
    const-string v3, "1"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 474
    aget-object v3, v0, v1

    invoke-virtual {p0, p1, v3}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 472
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 478
    :cond_3
    aget-object v3, v0, v1

    invoke-virtual {p0, p1, v3}, Lcom/mapps/android/share/Track;->getIeVersion(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1
.end method

.method public sendPackage(Z)V
    .locals 0
    .param p1, "ispkgSend"    # Z

    .prologue
    .line 100
    sput-boolean p1, Lcom/mapps/android/share/Track;->ispkgSend:Z

    .line 101
    return-void
.end method

.method public setAppPreferencesBoolean(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .prologue
    .line 542
    const/4 v0, 0x0

    .line 543
    .local v0, "pref":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 544
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 545
    .local v1, "prefEditor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 547
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 548
    return-void
.end method

.method public setInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/lang/String;
    .param p4, "m"    # Ljava/lang/String;
    .param p5, "s"    # Ljava/lang/String;
    .param p6, "media_type"    # I
    .param p7, "codeType"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string v3, "mezzo"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 570
    .local v2, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 571
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ab_interval"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 572
    .local v1, "key":Ljava/lang/String;
    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 573
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 574
    return-void
.end method

.method public timec()V
    .locals 6

    .prologue
    .line 287
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 290
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 292
    .local v2, "now":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v1

    .line 293
    .local v1, "str":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "timec : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 294
    return-void
.end method
