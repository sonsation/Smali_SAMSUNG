.class public Lcom/samsung/android/sdk/ppmt/content/Card;
.super Ljava/lang/Object;
.source "Card.java"

# interfaces
.implements Lcom/samsung/android/sdk/ppmt/display/DisplayMeta;


# static fields
.field private static final CANCEL_DELAY_TIME_DIVIDER:[I

.field private static final CANCEL_RETRY_DELAY_TIME_MAX:J = 0x36ee80L

.field private static final CANCEL_RETRY_DELAY_TIME_MIN:J = 0x493e0L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppIconId:I

.field private mCardDisplayTimeFrom:I

.field private mCardDisplayTimeTo:I

.field private mCctime:I

.field private mContentsUrl:Ljava/lang/String;

.field private mDisplayId:I

.field private mExpectedDisplayTime:J

.field private mFreqCapping_Day:I

.field private mFreqCapping_DayLimit:I

.field private mFreqCapping_Hour:I

.field private mFreqCapping_HourLimit:I

.field private mIsResourceParsed:Z

.field private mMarketingType:Ljava/lang/String;

.field private mMid:Ljava/lang/String;

.field private mMsgType:Ljava/lang/String;

.field private mOptInCheckEnabled:Z

.field private mRandomRange:I

.field private mStyle:Ljava/lang/String;

.field private mTargetid:Ljava/lang/String;

.field private mTtlFrom:J

.field private mTtlTo:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/samsung/android/sdk/ppmt/content/Card;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->CANCEL_DELAY_TIME_DIVIDER:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x6
        0x3
        0x2
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "msgType"    # Ljava/lang/String;
    .param p3, "marketingType"    # Ljava/lang/String;
    .param p4, "displayId"    # I
    .param p5, "targetid"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMarketingType:Ljava/lang/String;

    .line 77
    iput p4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mDisplayId:I

    .line 78
    iput-object p5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    .line 79
    return-void
.end method

.method private applyRandomTimeForDisplay(Ljava/util/Calendar;IJI)V
    .locals 17
    .param p1, "displayCalendar"    # Ljava/util/Calendar;
    .param p2, "displayToHour"    # I
    .param p3, "ttlTo"    # J
    .param p5, "randomRange"    # I

    .prologue
    .line 190
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    sub-long v8, p3, v10

    .line 191
    .local v8, "remainedTimeTilTtlTo":J
    const-wide/32 v10, 0x1b7740

    cmp-long v10, v8, v10

    if-lez v10, :cond_3

    .line 192
    const/16 v10, 0xb

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    sub-int v10, p2, v10

    int-to-long v10, v10

    const-wide/32 v12, 0x36ee80

    mul-long/2addr v10, v12

    const/16 v12, 0xc

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    const-wide/32 v14, 0xea60

    mul-long/2addr v12, v14

    sub-long/2addr v10, v12

    const/16 v12, 0xd

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    int-to-long v12, v12

    sub-long v6, v10, v12

    .line 194
    .local v6, "remainedTimeTilDisplayToHour":J
    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-gez v10, :cond_0

    .line 195
    const-wide/32 v10, 0x5265c00

    add-long/2addr v6, v10

    .line 198
    :cond_0
    move/from16 v0, p5

    int-to-long v10, v0

    const-wide/32 v12, 0xea60

    mul-long v2, v10, v12

    .line 199
    .local v2, "randRangeMillis":J
    cmp-long v10, v2, v6

    if-lez v10, :cond_1

    .line 200
    move-wide v2, v6

    .line 202
    :cond_1
    const-wide/32 v10, 0x1b7740

    sub-long v10, v8, v10

    cmp-long v10, v2, v10

    if-lez v10, :cond_2

    .line 203
    const-wide/32 v10, 0x1b7740

    sub-long v2, v8, v10

    .line 206
    :cond_2
    const-wide/16 v10, 0x0

    invoke-static {v10, v11, v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getRandomMillis(JJ)J

    move-result-wide v4

    .line 207
    .local v4, "randomMillis":J
    invoke-virtual/range {p1 .. p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    add-long/2addr v10, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 208
    sget-object v10, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] random display(s):"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-wide/16 v12, 0x3e8

    div-long v12, v4, v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .end local v2    # "randRangeMillis":J
    .end local v4    # "randomMillis":J
    .end local v6    # "remainedTimeTilDisplayToHour":J
    :goto_0
    return-void

    .line 210
    :cond_3
    sget-object v10, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] do not random display. less than 30 min left until ttlTo"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static canChangedCardStateToFail(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    .locals 1
    .param p0, "state"    # Lcom/samsung/android/sdk/ppmt/content/CardState;

    .prologue
    .line 729
    if-eqz p0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkMarketingOptIn(Landroid/content/Context;)Z
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v2, "marketing"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "event"

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMsgType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isOptInCheckEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 516
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 517
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_1

    .line 518
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to check optin. dbhandler null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v3, "dberror"

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 520
    const/4 v1, 0x0

    .line 530
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :goto_0
    return v1

    .line 522
    .restart local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getMarketingAgree()Z

    move-result v1

    .line 523
    .local v1, "isOptIn":Z
    if-nez v1, :cond_2

    .line 524
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to display. currently opt out."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DISAGREE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 527
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 530
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v1    # "isOptIn":Z
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private filterCardBeforeCancelApi(Landroid/content/Context;)Z
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->checkMarketingOptIn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static getApplicationIcon(Landroid/content/Context;)I
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 882
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    return v1
.end method

.method private getCancelRetryDelayTime(I)J
    .locals 6
    .param p1, "retryCount"    # I

    .prologue
    .line 366
    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCctime:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long v0, v2, v4

    .line 368
    .local v0, "delayMillis":J
    packed-switch p1, :pswitch_data_0

    .line 376
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->CANCEL_DELAY_TIME_DIVIDER:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 379
    :goto_0
    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 380
    const-wide/32 v0, 0x493e0

    .line 382
    :cond_0
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 383
    const-wide/32 v0, 0x36ee80

    .line 386
    :cond_1
    return-wide v0

    .line 370
    :pswitch_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->CANCEL_DELAY_TIME_DIVIDER:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 371
    goto :goto_0

    .line 373
    :pswitch_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->CANCEL_DELAY_TIME_DIVIDER:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 374
    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getCard(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 12
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;,
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 83
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 84
    :cond_0
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to get card. invalid params"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v7, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v7

    .line 88
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 89
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v1, :cond_2

    .line 90
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to get card. db open fail"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v7, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw v7

    .line 95
    :cond_2
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardMsgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "msgType":Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardUserdata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "userdata":Ljava/lang/String;
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardDisplayId(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "displayId":I
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardTargetId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 100
    .local v5, "targetid":Ljava/lang/String;
    invoke-static {p1, v4, v6, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseAppData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;

    move-result-object v0

    .line 102
    .local v0, "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getApplicationIcon(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAppIconId(I)V

    .line 103
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardExpectedDisplayTime(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/samsung/android/sdk/ppmt/content/Card;->setExpectedDisplayTime(J)V

    .line 104
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getExpectedDisplayTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gtz v7, :cond_3

    .line 105
    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->updateExpectedDisplayTime(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    return-object v0

    .line 108
    .end local v0    # "card":Lcom/samsung/android/sdk/ppmt/content/Card;
    .end local v2    # "displayId":I
    .end local v4    # "msgType":Ljava/lang/String;
    .end local v5    # "targetid":Ljava/lang/String;
    .end local v6    # "userdata":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 109
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_1
    sget-object v7, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "] fail to get application icon"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v7, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;

    invoke-direct {v7}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;-><init>()V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 112
    .end local v3    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catchall_0
    move-exception v7

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v7
.end method

.method public static getCardByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/Card;
    .locals 6
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "msgType"    # Ljava/lang/String;
    .param p2, "marketingType"    # Ljava/lang/String;
    .param p3, "displayId"    # I
    .param p4, "targetid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
        }
    .end annotation

    .prologue
    .line 119
    const-string v0, "1"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/content/NotificationCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 122
    :goto_0
    return-object v0

    .line 121
    :cond_0
    const-string v0, "2"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    new-instance v0, Lcom/samsung/android/sdk/ppmt/content/PopupCard;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/content/PopupCard;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] invalid marketingtype"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;-><init>()V

    throw v0
.end method

.method private handleCancelApiFail(Landroid/content/Context;I)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "resultCode"    # I

    .prologue
    .line 325
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v6

    .line 326
    .local v6, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v6, :cond_0

    .line 327
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] handleCancelApiFail. dbHandler null"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    return-void

    .line 331
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardRetryCount(Ljava/lang/String;)I

    move-result v8

    .line 332
    .local v8, "retryCount":I
    packed-switch p2, :pswitch_data_0

    .line 336
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v0, v8}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 339
    :pswitch_0
    const/4 v0, 0x3

    if-le v8, v0, :cond_1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 341
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 342
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->OVERCANCELRETRY:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v9, 0x0

    invoke-static {p1, v0, v1, v4, v9}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 344
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 345
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const-string/jumbo v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 348
    const-string v0, "extra_action"

    const-string v1, "download_resource"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_1
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 352
    :cond_1
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 353
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCancelRetryDelayTime(I)J

    move-result-wide v10

    add-long v2, v0, v10

    .line 357
    .local v2, "retryTime":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, "req_cancel_status"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 361
    .end local v2    # "retryTime":J
    .end local v5    # "bundle":Landroid/os/Bundle;
    .end local v8    # "retryCount":I
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v0

    .line 332
    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_0
    .end packed-switch
.end method

.method private handleCancelApiSuccess(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "response"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/16 v8, 0x3f7

    .line 280
    if-nez p2, :cond_1

    .line 281
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleCancelApiFail(Landroid/content/Context;I)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 288
    .local v3, "jo_response":Lorg/json/JSONObject;
    const-string/jumbo v5, "status"

    const/16 v6, 0xc8

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 295
    .local v4, "statusCode":I
    sparse-switch v4, :sswitch_data_0

    .line 320
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleCancelApiFail(Landroid/content/Context;I)V

    goto :goto_0

    .line 289
    .end local v3    # "jo_response":Lorg/json/JSONObject;
    .end local v4    # "statusCode":I
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to get cancel status. "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    invoke-direct {p0, p1, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleCancelApiFail(Landroid/content/Context;I)V

    goto :goto_0

    .line 297
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v3    # "jo_response":Lorg/json/JSONObject;
    .restart local v4    # "statusCode":I
    :sswitch_0
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 298
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_0

    .line 299
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 300
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 301
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 303
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v2, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 304
    .local v2, "intent":Landroid/content/Intent;
    const-string v5, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 305
    const-string v5, "mid"

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string/jumbo v5, "targetid"

    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v5, "extra_action"

    const-string v6, "download_resource"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 312
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v2    # "intent":Landroid/content/Intent;
    :sswitch_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 313
    .restart local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_0

    .line 314
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/CardState;->CANCELED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v5, v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 315
    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v5, v7}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 316
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto/16 :goto_0

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x190 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleResourceDownloadFail(Landroid/content/Context;I)V
    .locals 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "resultCode"    # I

    .prologue
    .line 456
    const/16 v0, 0x190

    if-gt v0, p2, :cond_0

    const/16 v0, 0x1f4

    if-ge p2, v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 461
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 473
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v6

    .line 474
    .local v6, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v6, :cond_1

    .line 475
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] resource download fail. dbHandler null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    .end local v6    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "C"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    .restart local v6    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardRetryCount(Ljava/lang/String;)I

    move-result v7

    .line 480
    .local v7, "retryCount":I
    const/4 v0, 0x5

    if-lt v7, v0, :cond_2

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "C1009_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 483
    .local v8, "userFeedback":Ljava/lang/String;
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOAD_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-static {p1, v0, v1, v2, v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 486
    .end local v8    # "userFeedback":Ljava/lang/String;
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    add-int/lit8 v1, v7, 0x1

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 492
    .end local v6    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v7    # "retryCount":I
    :sswitch_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 493
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    const-string/jumbo v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v10, 0x36ee80

    add-long/2addr v2, v10

    const-string v4, "download_resource"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 488
    .end local v5    # "extras":Landroid/os/Bundle;
    .restart local v6    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v0

    .line 461
    nop

    :sswitch_data_0
    .sparse-switch
        0x3ea -> :sswitch_1
        0x3ec -> :sswitch_0
        0x3f0 -> :sswitch_0
        0x3f3 -> :sswitch_0
    .end sparse-switch
.end method

.method private handleResourceDownloadSuccess(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 439
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 440
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_1

    .line 441
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] onResourceDownloadSuccess. dbHandler null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_DISPLAY:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 445
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardRetryCount(Ljava/lang/String;I)Z

    .line 446
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 447
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->DOWNLOADED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v4, 0x0

    invoke-static {p1, v1, v2, v3, v4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 449
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->parseResource(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setAlarmForDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private isCardOverTtl()Z
    .locals 4

    .prologue
    .line 137
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFreqCappingLimitOver(Landroid/content/Context;)Z
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isFreqCappingOff()Z

    move-result v6

    if-nez v6, :cond_2

    .line 535
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v2

    .line 536
    .local v2, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v2, :cond_2

    .line 539
    :try_start_0
    iget v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Day:I

    int-to-long v6, v6

    const-wide/32 v8, 0x5265c00

    mul-long v0, v6, v8

    .line 540
    .local v0, "dayRule":J
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->countCardsDisplayedIn(J)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_DayLimit:I

    if-lt v6, v7, :cond_0

    .line 541
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] over frequency capping rule(day)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 555
    .end local v0    # "dayRule":J
    .end local v2    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :goto_0
    return v3

    .line 545
    .restart local v0    # "dayRule":J
    .restart local v2    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_0
    :try_start_1
    iget v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Hour:I

    int-to-long v6, v6

    const-wide/32 v8, 0x36ee80

    mul-long v4, v6, v8

    .line 546
    .local v4, "hourRule":J
    invoke-virtual {v2, v4, v5}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->countCardsDisplayedIn(J)I

    move-result v6

    iget v7, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_HourLimit:I

    if-lt v6, v7, :cond_1

    .line 547
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] over frequency capping rule(hour)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 551
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 555
    .end local v0    # "dayRule":J
    .end local v2    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v4    # "hourRule":J
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 551
    .restart local v2    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v3
.end method

.method private isFreqCappingOff()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 559
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Day:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_DayLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Hour:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_HourLimit:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTestMsg(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 682
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 697
    :cond_0
    :goto_0
    return v2

    .line 686
    :cond_1
    if-eqz p0, :cond_2

    .line 687
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 688
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_2

    .line 689
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardMsgType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 690
    .local v1, "msgType":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 691
    const-string/jumbo v3, "test"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 697
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v1    # "msgType":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "mid"    # Ljava/lang/String;
    .param p1, "msgType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 675
    const-string/jumbo v1, "test"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 678
    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "test"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needRandomDisplay()Z
    .locals 2

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "event"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseResource(Landroid/content/Context;)Z
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 567
    :try_start_0
    invoke-static {p1, p0}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseResource(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/content/Card;)V

    .line 568
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->setToResourceParsed()V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 593
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to parse resource. locale not matched"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->LOCALE_NOT_MATCHED:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v1, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    .end local v0    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$LocaleNotMatchException;
    :catch_1
    move-exception v0

    .line 573
    .local v0, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to parse resource. not supported card type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->UNSUPPORTED_CARD_TYPE:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 576
    .end local v0    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$NotSupportedTypeException;
    :catch_2
    move-exception v0

    .line 577
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to parse resource. file not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_1

    .line 580
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v0

    .line 581
    .local v0, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to parse resource. invalid card data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONTENTS_FILE_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 584
    .end local v0    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$WrongCardDataException;
    :catch_4
    move-exception v0

    .line 585
    .local v0, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to parse resource"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 588
    .end local v0    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    :catch_5
    move-exception v0

    .line 589
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to parse resource. IOException"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    sget-object v2, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v2, v5}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static setCardStatusAfterGone(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "state"    # Lcom/samsung/android/sdk/ppmt/content/CardState;

    .prologue
    .line 764
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 765
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v1

    .line 766
    .local v1, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v1, :cond_2

    .line 768
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v0

    .line 769
    .local v0, "curState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 770
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Fail to change card to [incomp_api] - Card not gone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 775
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 781
    .end local v0    # "curState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .end local v1    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_0
    :goto_0
    return-void

    .line 773
    .restart local v0    # "curState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    .restart local v1    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_1
    :try_start_1
    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .end local v0    # "curState":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v2

    .line 778
    :cond_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Fail to change card to [incomp_api] - dbHandler is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;
    .param p2, "targetid"    # Ljava/lang/String;
    .param p3, "fbEvent"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p4, "userFeedbackValue"    # Ljava/lang/String;

    .prologue
    .line 705
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    .line 706
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 707
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_1

    .line 708
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] fail to change card to [fail] - db null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_0
    :goto_0
    return-void

    .line 712
    .restart local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_1
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->isCardExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 713
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v1

    .line 714
    .local v1, "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->canChangedCardStateToFail(Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 715
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] Fail to change card to [fail] - current state : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->name()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 715
    :cond_2
    :try_start_1
    const-string v2, ""

    goto :goto_1

    .line 718
    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->FAILED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 719
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->deleteFiles(Ljava/lang/String;)Z

    .line 720
    invoke-static {p0, p1, p2, p3, p4}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 723
    .end local v1    # "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :cond_4
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v2
.end method

.method public static setCardToGone(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mid"    # Ljava/lang/String;

    .prologue
    .line 738
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 739
    invoke-static {p0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 740
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-eqz v0, :cond_3

    .line 742
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v1

    .line 743
    .local v1, "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 744
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] card status is already [gone]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 761
    .end local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .end local v1    # "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :cond_0
    :goto_0
    return-void

    .line 747
    .restart local v0    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    .restart local v1    # "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :cond_1
    :try_start_1
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_API:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v2, v1}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 749
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Fail to change card to [gone] - Card not displayed/incomp_api"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 755
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .line 752
    :cond_2
    :try_start_2
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->GONE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v0, p1, v2}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 753
    invoke-static {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->deleteFiles(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 755
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0

    .end local v1    # "state":Lcom/samsung/android/sdk/ppmt/content/CardState;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    throw v2

    .line 758
    :cond_3
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Fail to change card to [gone] - dbHandler is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissDisplayedCard(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 650
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v0

    .line 651
    .local v0, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v0, :cond_0

    .line 652
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    const-string v3, "fail to dismiss displayed card. dbHandler null"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void

    .line 656
    :cond_0
    sget-object v2, Lcom/samsung/android/sdk/ppmt/content/CardState;->DISPLAYED:Lcom/samsung/android/sdk/ppmt/content/CardState;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->getCardState(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/content/CardState;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/ppmt/content/CardState;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 657
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getMarketingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v1

    .line 658
    .local v1, "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mDisplayId:I

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->clear(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 659
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToGone(Landroid/content/Context;Ljava/lang/String;)V

    .line 660
    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->NONE_REACTION:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v5, 0x0

    invoke-static {p1, v2, v3, v4, v5}, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackManager;->addFeedback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 663
    .end local v1    # "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    goto :goto_0
.end method

.method public displayCard(Landroid/content/Context;Z)V
    .locals 8
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isFirstDisplay"    # Z

    .prologue
    .line 633
    if-eqz p1, :cond_1

    .line 634
    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->filterCardBeforeDisplay(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 635
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMarketingType:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->getDisplayManager(Ljava/lang/String;)Lcom/samsung/android/sdk/ppmt/display/DisplayManager;

    move-result-object v0

    .line 636
    .local v0, "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    if-nez v0, :cond_2

    .line 637
    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] fail to display card. displaymanager null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    sget-object v1, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 647
    .end local v0    # "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    :cond_1
    :goto_0
    return-void

    .line 641
    .restart local v0    # "displayManager":Lcom/samsung/android/sdk/ppmt/display/DisplayManager;
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isResourceParsed()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->parseResource(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 642
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getDisplayMeta()Landroid/os/Bundle;

    move-result-object v7

    new-instance v1, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    iget-wide v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {v0, p1, v7, v1}, Lcom/samsung/android/sdk/ppmt/display/DisplayManager;->display(Landroid/content/Context;Landroid/os/Bundle;Lcom/samsung/android/sdk/ppmt/display/DisplayResultHandler;)V

    goto :goto_0
.end method

.method public filterCardBeforeDisplay(Landroid/content/Context;)Z
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 501
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg()Z

    move-result v0

    if-nez v0, :cond_0

    .line 502
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->isFreqCappingLimitOver(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->FC_LIMIT_OVER:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x0

    .line 508
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->checkMarketingOptIn(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public getAppIconId()I
    .locals 1

    .prologue
    .line 886
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mAppIconId:I

    return v0
.end method

.method public getCancelAlarmTime()J
    .locals 6

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCctime:I

    int-to-long v2, v2

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getCardDisplayTimeFrom()I
    .locals 1

    .prologue
    .line 812
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCardDisplayTimeFrom:I

    return v0
.end method

.method public getCardDisplayTimeTo()I
    .locals 1

    .prologue
    .line 820
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCardDisplayTimeTo:I

    return v0
.end method

.method public getCctime()I
    .locals 1

    .prologue
    .line 852
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCctime:I

    return v0
.end method

.method public getDisplayMeta()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 918
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 919
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "mid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    const-string/jumbo v1, "targetid"

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v1, "displayid"

    iget v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mDisplayId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 922
    return-object v0
.end method

.method public getExpectedDisplayTime()J
    .locals 2

    .prologue
    .line 872
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    return-wide v0
.end method

.method public getMarketingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 800
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMarketingType:Ljava/lang/String;

    return-object v0
.end method

.method public getMid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomRange()I
    .locals 1

    .prologue
    .line 844
    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mRandomRange:I

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 804
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    return-object v0
.end method

.method public getTtlFrom()J
    .locals 2

    .prologue
    .line 828
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlFrom:J

    return-wide v0
.end method

.method public getTtlTo()J
    .locals 2

    .prologue
    .line 836
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    return-wide v0
.end method

.method public isOptInCheckEnabled()Z
    .locals 1

    .prologue
    .line 909
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mOptInCheckEnabled:Z

    return v0
.end method

.method public isResourceParsed()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mIsResourceParsed:Z

    return v0
.end method

.method public isSupportType()Z
    .locals 2

    .prologue
    .line 130
    const-string v0, "passive"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "test"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "marketing"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "event"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTestMsg()Z
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMsgType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needToCallCancelApi()Z
    .locals 2

    .prologue
    .line 788
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isTestMsg()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCctime:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestCancelApi(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 253
    if-eqz p1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isCardOverTtl()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] current:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", until:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v5

    int-to-long v8, v5

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] over display time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/PrefManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/sdk/ppmt/storage/PrefManager;->getAID()Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 264
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] fail to request get cancel status. appid null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    sget-object v3, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v4, "appid_error"

    invoke-virtual {p0, p1, v3, v4}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_2
    new-instance v1, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;

    iget-object v3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-direct {v1, v3, v0}, Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    .local v1, "request":Lcom/samsung/android/sdk/ppmt/network/request/GetCancelStatusRequest;
    const/16 v3, 0x3c

    invoke-static {p1, v1, v3}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->request(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/network/request/NetworkRequest;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v2

    .line 271
    .local v2, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v3, v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v3, :cond_3

    .line 272
    iget-object v3, v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseMsg:Ljava/lang/String;

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleCancelApiSuccess(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 274
    :cond_3
    iget v3, v2, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-direct {p0, p1, v3}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleCancelApiFail(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public requestDownloadResource(Landroid/content/Context;)V
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v12, 0x0

    .line 390
    if-eqz p1, :cond_0

    .line 391
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isCardOverTtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 392
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] current:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", until:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] over display time"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v6, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 436
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mContentsUrl:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardParser;->parseResourceUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 402
    .local v3, "resourceUrl":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 403
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to request resource. contents url not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const-string v7, "contents_url_not_found"

    invoke-virtual {p0, p1, v6, v7}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 410
    .end local v3    # "resourceUrl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 411
    .local v1, "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to request resource"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CLIENT_INTERNAL_ERROR:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v6, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto :goto_0

    .line 407
    .end local v1    # "e":Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException;
    .restart local v3    # "resourceUrl":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "fileName":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-static {p1, v6}, Lcom/samsung/android/sdk/ppmt/content/CardData;->getCardDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$InvalidArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    .line 409
    .local v5, "targetDir":Ljava/lang/String;
    move-object v0, v5

    .line 420
    .local v0, "destDir":Ljava/lang/String;
    const/16 v6, 0x3c

    invoke-static {p1, v3, v2, v5, v6}, Lcom/samsung/android/sdk/ppmt/network/NetworkManager;->downloadResource(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/samsung/android/sdk/ppmt/network/NetworkResult;

    move-result-object v4

    .line 422
    .local v4, "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    iget-boolean v6, v4, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->isSuccess:Z

    if-eqz v6, :cond_5

    .line 423
    invoke-static {v5, v2, v0}, Lcom/samsung/android/sdk/ppmt/common/FileIOUtils;->unzip(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 424
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleResourceDownloadSuccess(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 414
    .end local v0    # "destDir":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "resourceUrl":Ljava/lang/String;
    .end local v4    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .end local v5    # "targetDir":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 415
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    sget-object v6, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] fail to request resource. invalid contents url. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v6, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 426
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "destDir":Ljava/lang/String;
    .restart local v2    # "fileName":Ljava/lang/String;
    .restart local v3    # "resourceUrl":Ljava/lang/String;
    .restart local v4    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .restart local v5    # "targetDir":Ljava/lang/String;
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "zip"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 427
    sget-object v6, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->WRONG_META_DATA:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    invoke-virtual {p0, p1, v6, v12}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_4
    const/16 v6, 0x3ef

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleResourceDownloadFail(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 433
    :cond_5
    iget v6, v4, Lcom/samsung/android/sdk/ppmt/network/NetworkResult;->responseCode:I

    invoke-direct {p0, p1, v6}, Lcom/samsung/android/sdk/ppmt/content/Card;->handleResourceDownloadFail(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 414
    .end local v0    # "destDir":Ljava/lang/String;
    .end local v2    # "fileName":Ljava/lang/String;
    .end local v3    # "resourceUrl":Ljava/lang/String;
    .end local v4    # "result":Lcom/samsung/android/sdk/ppmt/network/NetworkResult;
    .end local v5    # "targetDir":Ljava/lang/String;
    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public setAlarmForDisplay(Landroid/content/Context;)V
    .locals 6
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 597
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isCardOverTtl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] over display time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 608
    :goto_0
    return-void

    .line 603
    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 604
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    const-string v0, "is_first_display"

    const/4 v1, 0x1

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 606
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    const-string v4, "display"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAlarmForGetCancelStatusApi(Landroid/content/Context;)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->isCardOverTtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] over display time"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] current:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", until:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v8, v4

    sub-long/2addr v2, v8

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 250
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/ppmt/content/Card;->filterCardBeforeCancelApi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->needToCallCancelApi()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 230
    .local v5, "extras":Landroid/os/Bundle;
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCancelAlarmTime()J

    move-result-wide v2

    const-string/jumbo v4, "req_cancel_status"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 234
    .end local v5    # "extras":Landroid/os/Bundle;
    :cond_2
    invoke-static {p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v6

    .line 235
    .local v6, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v6, :cond_3

    .line 236
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] dbHandler null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {v0}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw v0

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    sget-object v1, Lcom/samsung/android/sdk/ppmt/content/CardState;->INCOMP_RESOURCE:Lcom/samsung/android/sdk/ppmt/content/CardState;

    invoke-virtual {v6, v0, v1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardState(Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/content/CardState;)Z

    .line 240
    invoke-virtual {v6}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 242
    new-instance v7, Landroid/content/Intent;

    const-class v0, Lcom/samsung/android/sdk/ppmt/PpmtService;

    invoke-direct {v7, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    .local v7, "intent":Landroid/content/Intent;
    const-string v0, "com.samsung.android.sdk.ppmt.SERVICE_EVENTS"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 244
    const-string v0, "extra_action"

    const-string v1, "download_resource"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string/jumbo v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    invoke-virtual {p1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0
.end method

.method public setAlarmForRetryDisplay(Landroid/content/Context;Z)V
    .locals 10
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "isFirstDisplay"    # Z

    .prologue
    .line 611
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v8, 0x1b7740

    add-long v2, v0, v8

    .line 614
    .local v2, "expectedRetryTime":J
    iget-wide v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v4

    int-to-long v8, v4

    sub-long v6, v0, v8

    .line 615
    .local v6, "ttlTo":J
    cmp-long v0, v6, v2

    if-gtz v0, :cond_1

    .line 616
    sget-object v0, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "] over displayTime. expected :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", ttlTo:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6, v7}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    if-eqz p2, :cond_0

    .line 619
    sget-object v0, Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;->CONSUME_FAIL:Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 630
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 625
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v0, "mid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string/jumbo v0, "targetid"

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    const-string v0, "is_first_display"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "card_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "display"

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/sdk/ppmt/common/CommonAlarmManager;->setEvent(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public setAppIconId(I)V
    .locals 0
    .param p1, "appIconId"    # I

    .prologue
    .line 890
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mAppIconId:I

    .line 891
    return-void
.end method

.method public setCardDisplayTimeFrom(I)V
    .locals 0
    .param p1, "cardDisplayTimeFrom"    # I

    .prologue
    .line 816
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCardDisplayTimeFrom:I

    .line 817
    return-void
.end method

.method public setCardDisplayTimeTo(I)V
    .locals 0
    .param p1, "cardDisplayTimeTo"    # I

    .prologue
    .line 824
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCardDisplayTimeTo:I

    .line 825
    return-void
.end method

.method public setCardToFail(Landroid/content/Context;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "fbEvent"    # Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;
    .param p3, "userFeedbackValue"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2, p3}, Lcom/samsung/android/sdk/ppmt/content/Card;->setCardToFail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/sdk/ppmt/feedback/FeedbackEvent;Ljava/lang/String;)V

    .line 702
    return-void
.end method

.method public setCctime(I)V
    .locals 0
    .param p1, "cctime"    # I

    .prologue
    .line 856
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mCctime:I

    .line 857
    return-void
.end method

.method public setContentsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "contentsUrl"    # Ljava/lang/String;

    .prologue
    .line 860
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mContentsUrl:Ljava/lang/String;

    .line 861
    return-void
.end method

.method public setExpectedDisplayTime(J)V
    .locals 1
    .param p1, "expectedDisplayTime"    # J

    .prologue
    .line 876
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    .line 877
    return-void
.end method

.method public setFreqCapping(IIII)V
    .locals 0
    .param p1, "day"    # I
    .param p2, "daylimit"    # I
    .param p3, "hour"    # I
    .param p4, "hourlimit"    # I

    .prologue
    .line 894
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Day:I

    .line 895
    iput p2, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_DayLimit:I

    .line 896
    iput p3, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_Hour:I

    .line 897
    iput p4, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mFreqCapping_HourLimit:I

    .line 898
    return-void
.end method

.method public setOptInCheckEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 913
    iput-boolean p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mOptInCheckEnabled:Z

    .line 914
    return-void
.end method

.method public setRandomRange(I)V
    .locals 0
    .param p1, "randomRange"    # I

    .prologue
    .line 848
    iput p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mRandomRange:I

    .line 849
    return-void
.end method

.method public setStyle(Ljava/lang/String;)V
    .locals 0
    .param p1, "style"    # Ljava/lang/String;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mStyle:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setTargetid(Ljava/lang/String;)V
    .locals 0
    .param p1, "targetid"    # Ljava/lang/String;

    .prologue
    .line 868
    iput-object p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTargetid:Ljava/lang/String;

    .line 869
    return-void
.end method

.method public setToResourceParsed()V
    .locals 1

    .prologue
    .line 905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mIsResourceParsed:Z

    .line 906
    return-void
.end method

.method public setTtlFrom(J)V
    .locals 1
    .param p1, "ttlFrom"    # J

    .prologue
    .line 832
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlFrom:J

    .line 833
    return-void
.end method

.method public setTtlTo(J)V
    .locals 1
    .param p1, "ttlTo"    # J

    .prologue
    .line 840
    iput-wide p1, p0, Lcom/samsung/android/sdk/ppmt/content/Card;->mTtlTo:J

    .line 841
    return-void
.end method

.method public updateExpectedDisplayTime(Landroid/content/Context;)V
    .locals 18
    .param p1, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCardDisplayTimeFrom()I

    move-result v2

    .line 143
    .local v2, "cardDisplayTimeFrom":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getCardDisplayTimeTo()I

    move-result v5

    .line 144
    .local v5, "cardDisplayTimeTo":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getTtlFrom()J

    move-result-wide v12

    .line 145
    .local v12, "ttlFrom":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getTtlTo()J

    move-result-wide v6

    .line 146
    .local v6, "ttlTo":J
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->getRandomRange()I

    move-result v8

    .line 149
    .local v8, "randomRange":I
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v14, v3

    sub-long/2addr v12, v14

    .line 150
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v3

    int-to-long v14, v3

    sub-long/2addr v6, v14

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 153
    .local v4, "displayCalendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    cmp-long v3, v14, v12

    if-gez v3, :cond_0

    .line 154
    invoke-virtual {v4, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 157
    :cond_0
    const/16 v3, 0xb

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 158
    .local v10, "expectedDisplayHour":I
    if-gt v2, v5, :cond_4

    .line 159
    if-ge v10, v2, :cond_3

    .line 160
    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v2, v3, v11}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->setTime(Ljava/util/Calendar;III)V

    .line 171
    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/sdk/ppmt/content/Card;->needRandomDisplay()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v3, p0

    .line 172
    invoke-direct/range {v3 .. v8}, Lcom/samsung/android/sdk/ppmt/content/Card;->applyRandomTimeForDisplay(Ljava/util/Calendar;IJI)V

    .line 175
    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->open(Landroid/content/Context;)Lcom/samsung/android/sdk/ppmt/storage/DBHandler;

    move-result-object v9

    .line 176
    .local v9, "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    if-nez v9, :cond_5

    .line 177
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "] fail to get card. dbhandler null"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;

    invoke-direct {v3}, Lcom/samsung/android/sdk/ppmt/exception/InternalCardException$DBException;-><init>()V

    throw v3

    .line 161
    .end local v9    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_3
    if-gt v5, v10, :cond_1

    .line 162
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    const-wide/32 v16, 0x5265c00

    add-long v14, v14, v16

    invoke-virtual {v4, v14, v15}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 163
    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v2, v3, v11}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->setTime(Ljava/util/Calendar;III)V

    goto :goto_0

    .line 166
    :cond_4
    if-gt v5, v10, :cond_1

    if-ge v10, v2, :cond_1

    .line 167
    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-static {v4, v2, v3, v11}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->setTime(Ljava/util/Calendar;III)V

    goto :goto_0

    .line 181
    .restart local v9    # "dbHandler":Lcom/samsung/android/sdk/ppmt/storage/DBHandler;
    :cond_5
    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    .line 182
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v14

    invoke-virtual {v9, v3, v14, v15}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->updateCardExpectedDisplayTime(Ljava/lang/String;J)Z

    .line 183
    invoke-virtual {v9}, Lcom/samsung/android/sdk/ppmt/storage/DBHandler;->close()V

    .line 185
    sget-object v3, Lcom/samsung/android/sdk/ppmt/content/Card;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mMid:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "] update expected display time:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, "("

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/samsung/android/sdk/ppmt/content/Card;->mExpectedDisplayTime:J

    invoke-static {v14, v15}, Lcom/samsung/android/sdk/ppmt/common/TimeUtils;->getString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ")"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/samsung/android/sdk/ppmt/common/Slog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method
