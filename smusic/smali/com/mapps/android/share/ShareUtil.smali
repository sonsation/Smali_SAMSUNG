.class public Lcom/mapps/android/share/ShareUtil;
.super Ljava/lang/Object;
.source "ShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;,
        Lcom/mapps/android/share/ShareUtil$AdViewType;,
        Lcom/mapps/android/share/ShareUtil$CODETYPE;,
        Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;,
        Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;
    }
.end annotation


# static fields
.field private static mShareInstance:Lcom/mapps/android/share/ShareUtil;


# instance fields
.field public DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

.field public advertise_ID:Ljava/lang/String;

.field currentTime:J

.field currentTimeSumPeriod:J

.field isTrack:Z

.field public mConfhandler:Landroid/os/Handler;

.field public m_media:Ljava/lang/String;

.field public m_publisher:Ljava/lang/String;

.field public m_section:Ljava/lang/String;

.field public preference:Lcom/mapps/android/util/AdPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->mConfhandler:Landroid/os/Handler;

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mapps/android/share/ShareUtil;->isTrack:Z

    .line 182
    iput-wide v2, p0, Lcom/mapps/android/share/ShareUtil;->currentTime:J

    .line 183
    iput-wide v2, p0, Lcom/mapps/android/share/ShareUtil;->currentTimeSumPeriod:J

    .line 28
    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    .prologue
    .line 466
    invoke-direct {p0, p1, p2, p3}, Lcom/mapps/android/share/ShareUtil;->checkInterval(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private checkInterval(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 27
    .param p1, "con"    # Landroid/content/Context;
    .param p2, "media_type"    # I
    .param p3, "codeType"    # Ljava/lang/String;

    .prologue
    .line 469
    :try_start_0
    new-instance v22, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd a hh:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 470
    .local v22, "sf":Ljava/text/SimpleDateFormat;
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 471
    .local v11, "date":Ljava/util/Date;
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v26

    .line 472
    .local v26, "strDate":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad_time"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 473
    .local v9, "ad_code":Ljava/lang/String;
    const-string v2, ""

    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v9}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 474
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v9}, Lcom/mapps/android/share/Track;->getPreferences(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 475
    .local v17, "pref_time":Ljava/lang/String;
    if-eqz v17, :cond_3

    const-string v2, ""

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "0"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 476
    new-instance v2, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/text/ParsePosition;-><init>(I)V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v23

    .line 477
    .local v23, "startday":Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    .line 479
    .local v24, "startTime":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 480
    .local v10, "cal":Ljava/util/Calendar;
    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    .line 481
    .local v13, "endDate":Ljava/util/Date;
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    .line 482
    .local v14, "endTime":J
    sub-long v18, v14, v24

    .line 483
    .local v18, "mills":J
    const-wide/16 v2, 0x3e8

    div-long v20, v18, v2

    .line 485
    .local v20, "sec":J
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interval_sec : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 486
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    move-object/from16 v3, p1

    move/from16 v7, p2

    move-object/from16 v8, p3

    invoke-virtual/range {v2 .. v8}, Lcom/mapps/android/share/Track;->getInterval(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 487
    .local v16, "interval_sec":I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "interval_sec : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->d(Ljava/lang/String;)V

    .line 488
    if-lez v16, :cond_2

    .line 489
    move/from16 v0, v16

    int-to-long v2, v0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_1

    .line 490
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sectime : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v20

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 503
    .end local v10    # "cal":Ljava/util/Calendar;
    .end local v13    # "endDate":Ljava/util/Date;
    .end local v14    # "endTime":J
    .end local v16    # "interval_sec":I
    .end local v17    # "pref_time":Ljava/lang/String;
    .end local v18    # "mills":J
    .end local v20    # "sec":J
    .end local v23    # "startday":Ljava/util/Date;
    .end local v24    # "startTime":J
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v9, v1}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    .end local v9    # "ad_code":Ljava/lang/String;
    .end local v11    # "date":Ljava/util/Date;
    .end local v22    # "sf":Ljava/text/SimpleDateFormat;
    .end local v26    # "strDate":Ljava/lang/String;
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 492
    .restart local v9    # "ad_code":Ljava/lang/String;
    .restart local v10    # "cal":Ljava/util/Calendar;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v13    # "endDate":Ljava/util/Date;
    .restart local v14    # "endTime":J
    .restart local v16    # "interval_sec":I
    .restart local v17    # "pref_time":Ljava/lang/String;
    .restart local v18    # "mills":J
    .restart local v20    # "sec":J
    .restart local v22    # "sf":Ljava/text/SimpleDateFormat;
    .restart local v23    # "startday":Ljava/util/Date;
    .restart local v24    # "startTime":J
    .restart local v26    # "strDate":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "It need interval Time ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, v16

    int-to-long v4, v0

    sub-long v4, v4, v20

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")sec"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 493
    const/4 v2, 0x0

    goto :goto_2

    .line 496
    :cond_2
    const-string v2, "interval pass"

    invoke-static {v2}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 504
    .end local v9    # "ad_code":Ljava/lang/String;
    .end local v10    # "cal":Ljava/util/Calendar;
    .end local v11    # "date":Ljava/util/Date;
    .end local v13    # "endDate":Ljava/util/Date;
    .end local v14    # "endTime":J
    .end local v16    # "interval_sec":I
    .end local v17    # "pref_time":Ljava/lang/String;
    .end local v18    # "mills":J
    .end local v20    # "sec":J
    .end local v22    # "sf":Ljava/text/SimpleDateFormat;
    .end local v23    # "startday":Ljava/util/Date;
    .end local v24    # "startTime":J
    .end local v26    # "strDate":Ljava/lang/String;
    :catch_0
    move-exception v12

    .line 506
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 499
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v9    # "ad_code":Ljava/lang/String;
    .restart local v11    # "date":Ljava/util/Date;
    .restart local v17    # "pref_time":Ljava/lang/String;
    .restart local v22    # "sf":Ljava/text/SimpleDateFormat;
    .restart local v26    # "strDate":Ljava/lang/String;
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v2

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v2, v0, v9, v1}, Lcom/mapps/android/share/Track;->savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 500
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public static getInstance()Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/mapps/android/share/ShareUtil;

    invoke-direct {v0}, Lcom/mapps/android/share/ShareUtil;-><init>()V

    sput-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    .line 56
    :cond_0
    sget-object v0, Lcom/mapps/android/share/ShareUtil;->mShareInstance:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public getAccount(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 369
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 328
    const-string v0, "&d_adid="

    .line 329
    .local v0, "param":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/mapps/android/share/ShareUtil;->getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    return-object v0
.end method

.method public getAdvertisingId(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 83
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/share/ShareUtil$1;

    invoke-direct {v2, p0, p1}, Lcom/mapps/android/share/ShareUtil$1;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 94
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 96
    new-instance v0, Lcom/mapps/android/share/GetAdvertisingIdTask;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$2;

    invoke-direct {v1, p0}, Lcom/mapps/android/share/ShareUtil$2;-><init>(Lcom/mapps/android/share/ShareUtil;)V

    invoke-direct {v0, p1, v1}, Lcom/mapps/android/share/GetAdvertisingIdTask;-><init>(Landroid/content/Context;Lcom/mapps/android/listner/AdvertisingIdListener;)V

    .line 114
    .local v0, "task":Lcom/mapps/android/share/GetAdvertisingIdTask;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/mapps/android/share/GetAdvertisingIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 115
    return-void
.end method

.method public getAdvertisingIdForResult(Landroid/os/Handler;Landroid/content/Context;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V
    .locals 7
    .param p1, "mainHandler"    # Landroid/os/Handler;
    .param p2, "ctx"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;

    .prologue
    .line 123
    new-instance v5, Lcom/mapps/android/share/GetAdvertisingIdTask;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$3;

    invoke-direct {v0, p0, p1, p3}, Lcom/mapps/android/share/ShareUtil$3;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;)V

    invoke-direct {v5, p2, v0}, Lcom/mapps/android/share/GetAdvertisingIdTask;-><init>(Landroid/content/Context;Lcom/mapps/android/listner/AdvertisingIdListener;)V

    .line 148
    .local v5, "task":Lcom/mapps/android/share/GetAdvertisingIdTask;
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/mapps/android/share/ShareUtil$4;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/mapps/android/share/ShareUtil$4;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;Lcom/mapps/android/share/ShareUtil$OnAdvertisingIdListener;Lcom/mapps/android/share/GetAdvertisingIdTask;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 174
    return-void
.end method

.method public getDeviceHeader()Ljava/lang/String;
    .locals 2

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mapps/android/share/ShareUtil;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Android MezzoSDKVer=2.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sdkType"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/mapps/android/bean/DeviceInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-virtual {v0, p1, p2}, Lcom/mapps/android/bean/DeviceInfoBean;->getDeviceParam(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHHtoSec(Ljava/lang/String;)J
    .locals 8
    .param p1, "dt"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, -0x1

    .line 373
    const-string v6, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 386
    :goto_0
    return-wide v4

    .line 375
    :cond_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v6, "HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-direct {v1, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 376
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const/4 v3, 0x0

    .line 377
    .local v3, "reference":Ljava/util/Date;
    const/4 v0, 0x0

    .line 379
    .local v0, "date":Ljava/util/Date;
    :try_start_0
    const-string v6, "00:00:00"

    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 380
    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    goto :goto_0

    .line 381
    :catch_0
    move-exception v2

    .line 383
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0
.end method

.method public getIsGPS(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 390
    const-string v1, "Loaction"

    const-string v2, "Loaction"

    invoke-virtual {p0, p1, v1, v2}, Lcom/mapps/android/share/ShareUtil;->getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "locFlag":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    const-string v1, "1"

    .line 394
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "0"

    goto :goto_0
.end method

.method public getMemory()V
    .locals 14

    .prologue
    .line 408
    sget-boolean v6, Lcom/mezzo/common/MzLog;->ISLOG:Z

    if-eqz v6, :cond_0

    .line 409
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    .line 410
    .local v0, "free":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    .line 411
    .local v4, "total":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    .line 412
    .local v2, "max":J
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Meba_S-plus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Total  Memory : %6.2f MB%n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-double v10, v4

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 413
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Meba_S-plus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Free  Memory : %6.2f MB%n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-double v10, v0

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 414
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Meba_S-plus "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "Max  Memory : %6.2f MB%n"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-double v10, v2

    const-wide/high16 v12, 0x4130000000000000L    # 1048576.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 416
    .end local v0    # "free":J
    .end local v2    # "max":J
    .end local v4    # "total":J
    :cond_0
    return-void
.end method

.method public getModel()Ljava/lang/String;
    .locals 3

    .prologue
    .line 398
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 399
    .local v0, "strModel":Ljava/lang/String;
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 400
    return-object v0
.end method

.method public getPreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 339
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    .local v0, "pref":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getRandParam()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 335
    .local v0, "rd":Ljava/util/Random;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&na="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResponseFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-direct {v0}, Lcom/mapps/android/bean/DeviceInfoBean;-><init>()V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->DeviceBean:Lcom/mapps/android/bean/DeviceInfoBean;

    invoke-virtual {v0}, Lcom/mapps/android/bean/DeviceInfoBean;->getResponseFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getgoogleAdvertiseID(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 66
    new-instance v0, Lcom/mapps/android/util/AdPreferences;

    invoke-direct {v0, p1}, Lcom/mapps/android/util/AdPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    .line 67
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/mapps/android/util/AdPreferences;->exist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->preference:Lcom/mapps/android/util/AdPreferences;

    const-string v1, "ad_id"

    invoke-virtual {v0, v1}, Lcom/mapps/android/util/AdPreferences;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil;->advertise_ID:Ljava/lang/String;

    return-object v0
.end method

.method public removeAllPreferences(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 363
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 364
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 365
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 366
    return-void
.end method

.method public removePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 354
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 355
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 356
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 358
    return-void
.end method

.method public requestConf(Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "media_type"    # I
    .param p4, "codeType"    # Ljava/lang/String;
    .param p5, "confCompleteListener"    # Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    .prologue
    .line 187
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapps/android/share/ShareUtil;->currentTime:J

    .line 188
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mapps/android/share/ShareUtil;->currentTimeSumPeriod:J

    .line 190
    :try_start_0
    new-instance v8, Lcom/mapps/android/share/ShareUtil$5;

    invoke-direct {v8, p0, p5}, Lcom/mapps/android/share/ShareUtil$5;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 198
    .local v8, "onReqeustConfCompleteHandler":Landroid/os/Handler;
    new-instance v7, Lcom/mapps/android/share/ShareUtil$6;

    invoke-direct {v7, p0, p1, p4, p5}, Lcom/mapps/android/share/ShareUtil$6;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 212
    .local v7, "SendTagetRequestHandler":Landroid/os/Handler;
    new-instance v0, Lcom/mapps/android/share/ShareUtil$7;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/mapps/android/share/ShareUtil$7;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 288
    .local v0, "requestConfHandler":Landroid/os/Handler;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mapps/android/share/ShareUtil$8;

    invoke-direct {v2, p0, p1, v0}, Lcom/mapps/android/share/ShareUtil$8;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 311
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v0    # "requestConfHandler":Landroid/os/Handler;
    .end local v7    # "SendTagetRequestHandler":Landroid/os/Handler;
    .end local v8    # "onReqeustConfCompleteHandler":Landroid/os/Handler;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v9

    .line 314
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 315
    const-string v1, "Exception :\ud328\ud0a4\uc9c0 \ud0c0\uac9f \ub9ac\uc2a4\ud2b8 \uc694\uccad"

    invoke-static {v1}, Lcom/mezzo/common/MzLog;->i(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v1

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    new-instance v6, Lcom/mapps/android/share/ShareUtil$9;

    invoke-direct {v6, p0, p5}, Lcom/mapps/android/share/ShareUtil$9;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    move-object v2, p1

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    goto :goto_0
.end method

.method public savePreferences(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 346
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 348
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p3, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public setAdViewCode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "publisher"    # Ljava/lang/String;
    .param p3, "media"    # Ljava/lang/String;
    .param p4, "section"    # Ljava/lang/String;
    .param p5, "type"    # I
    .param p6, "media_type"    # I
    .param p7, "codeType"    # Ljava/lang/String;
    .param p8, "listener"    # Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;

    .prologue
    .line 432
    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    .line 433
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    .line 434
    move-object/from16 v0, p4

    iput-object v0, p0, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    .line 436
    new-instance v6, Lcom/mapps/android/share/ShareUtil$10;

    move-object/from16 v0, p8

    invoke-direct {v6, p0, v0}, Lcom/mapps/android/share/ShareUtil$10;-><init>(Lcom/mapps/android/share/ShareUtil;Lcom/mapps/android/share/ShareUtil$AdViewCodeCompleteListener;)V

    .line 446
    .local v6, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/mapps/android/share/ShareUtil$11;

    move-object v2, p0

    move-object v3, p1

    move/from16 v4, p6

    move-object/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lcom/mapps/android/share/ShareUtil$11;-><init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    move-object v12, v1

    invoke-virtual/range {v7 .. v12}, Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    .line 464
    return-void
.end method

.method public stringCheck(Ljava/lang/String;)Z
    .locals 1
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 512
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
