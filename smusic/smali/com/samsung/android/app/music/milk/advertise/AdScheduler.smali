.class public Lcom/samsung/android/app/music/milk/advertise/AdScheduler;
.super Ljava/lang/Object;
.source "AdScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/advertise/AdScheduler$AdVideoCp;
    }
.end annotation


# static fields
.field private static final DEFAULT_PATTERN:Ljava/lang/String; = "6-AD-6-AI&2-AI"

.field public static final DORMANCY:I = 0x1

.field public static final NORMAL:I = 0x0

.field private static final PAUSE_PATTERN:Ljava/lang/String; = "6-AD-6-AI&0"

.field private static final POLICY_SIZE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "Advert.AdScheduler"

.field private static final TEST_PATTEN:Ljava/lang/String; = "1-AD-1-AD-1-AD-1-AD&0"

.field private static volatile mInst:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final ONE_HOUR_MIN:Ljava/lang/String;

.field private bClickedToggleButton:Z

.field private bDormancyMode:Z

.field private bVideoAdOn:Z

.field private currentPlayType:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

.field private mContext:Landroid/content/Context;

.field private policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

.field private policyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/milk/advertise/AdPolicy;",
            ">;"
        }
    .end annotation
.end field

.field public videoAdIntervalTime:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->videoAdIntervalTime:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    .line 48
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->currentPlayType:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    .line 50
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    .line 52
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    .line 54
    iput-boolean v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    .line 63
    const-string v0, "60"

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->ONE_HOUR_MIN:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->reset()V

    .line 68
    return-void
.end method

.method private getVideoAdIntervalTime()J
    .locals 6

    .prologue
    .line 222
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_INTERVAL"

    const-string v4, "60"

    .line 223
    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 226
    .local v0, "retValue":J
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x3e8

    mul-long v0, v2, v4

    .line 232
    return-wide v0
.end method

.method public static inst(Landroid/content/Context;)Lcom/samsung/android/app/music/milk/advertise/AdScheduler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    if-nez v0, :cond_1

    .line 72
    const-class v1, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    monitor-enter v1

    .line 73
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    .line 76
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mInst:Lcom/samsung/android/app/music/milk/advertise/AdScheduler;

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getNextPlayType(ZZZ)Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    .locals 6
    .param p1, "audioAdYn"    # Z
    .param p2, "imageAdYn"    # Z
    .param p3, "isAdjustmented"    # Z

    .prologue
    .line 161
    const-string v3, "Advert.AdScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPlayType : policy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " audioAdYn :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " imageAdYn :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    if-nez p3, :cond_0

    .line 164
    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    .line 178
    :goto_0
    return-object v1

    .line 166
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    invoke-virtual {v3}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->getNextType()Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    move-result-object v1

    .line 167
    .local v1, "nextPlay":Lcom/samsung/android/app/music/milk/advertise/AdPlayType;
    iget-boolean v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    if-nez v3, :cond_1

    .line 168
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    .line 169
    .local v0, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    const/4 v2, 0x0

    .line 170
    .local v2, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v2}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 172
    sget-object v1, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->SONG:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    .line 176
    .end local v0    # "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    .end local v2    # "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    :cond_1
    const-string v3, "Advert.AdScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNextPlayType : returned AdPlayType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/advertise/AdPlayType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iput-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->currentPlayType:Lcom/samsung/android/app/music/milk/advertise/AdPlayType;

    goto :goto_0
.end method

.method public getVideoCp()I
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 241
    const-string v2, "Advert.AdScheduler"

    const-string v3, "getVideoCp"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_CP"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 244
    .local v0, "cp":I
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_LAST_PLAY_CP"

    invoke-static {v2, v3, v5}, Lcom/samsung/android/app/music/common/preferences/Pref;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, "lastPlayedCp":I
    const-string v2, "Advert.AdScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoCp - cp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    if-nez v0, :cond_1

    .line 249
    if-ne v1, v5, :cond_0

    .line 250
    const-string v2, "Advert.AdScheduler"

    const-string v3, "getVideoCp - lastPlayedCp = MEZZO"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const/4 v1, 0x2

    .line 259
    :goto_0
    const-string v2, "Advert.AdScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVideoCp - mLastPlayedVideoCp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.radio.KEY_AD_VIDEO_LAST_PLAY_CP"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/app/music/common/preferences/Pref;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 262
    return v1

    .line 253
    :cond_0
    const-string v2, "Advert.AdScheduler"

    const-string v3, "getVideoCp - lastPlayedCp = INCROSS"

    invoke-static {v2, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const/4 v1, 0x1

    goto :goto_0

    .line 257
    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method public isClickedToggleButton()Z
    .locals 2

    .prologue
    .line 307
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isClickedToggleButton - bClickedToggleButton is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    return v0

    .line 310
    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isClickedToggleButton - bClickedToggleButton is false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isDormancyMode()Z
    .locals 2

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    if-eqz v0, :cond_0

    .line 152
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isDormancyMode : true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    return v0

    .line 154
    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isDormancyMode : false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isVideoAdOn()Z
    .locals 2

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    if-eqz v0, :cond_0

    .line 290
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isVideoAdOn - bVideoAdOn is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    return v0

    .line 292
    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string v1, "isVideoAdOn - bVideoAdOn is false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public loadPattern()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 99
    const-string v0, "Advert.AdScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPattern : policy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " policList size :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport$Proxy;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/music/service/milk/net/transport/RadioTransport;->storeData(ILjava/util/Map;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler$1;-><init>(Lcom/samsung/android/app/music/milk/advertise/AdScheduler;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Observer;)Lrx/Subscription;

    .line 117
    return-void
.end method

.method public declared-synchronized parsePattern(Ljava/lang/String;)V
    .locals 6
    .param p1, "adIntervalPatten"    # Ljava/lang/String;

    .prologue
    .line 270
    monitor-enter p0

    :try_start_0
    const-string v2, "&"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "pattens":[Ljava/lang/String;
    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 273
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 274
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    new-instance v3, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    const/4 v4, 0x1

    aget-object v4, v0, v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;-><init>(Ljava/lang/String;I)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    iget-boolean v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    if-eqz v2, :cond_0

    .line 277
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    .line 282
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    .line 283
    .local v1, "policy":Lcom/samsung/android/app/music/milk/advertise/AdPolicy;
    const-string v3, "Advert.AdScheduler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parsePatten : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 270
    .end local v0    # "pattens":[Ljava/lang/String;
    .end local v1    # "policy":Lcom/samsung/android/app/music/milk/advertise/AdPolicy;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 279
    .restart local v0    # "pattens":[Ljava/lang/String;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    iput-object v2, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 286
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 83
    iput-object v4, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    .line 84
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    .line 85
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    .line 86
    iput-boolean v3, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    .line 88
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.radio.KEY_AD_AUDIO_PATTERN"

    invoke-static {v1, v2, v4}, Lcom/samsung/android/app/music/common/preferences/Pref;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "audioAdPattern":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 90
    const-string v0, "6-AD-6-AI&2-AI"

    .line 92
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->parsePattern(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    iput-object v1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    .line 95
    return-void
.end method

.method public setClickedToggleButton(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 316
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    .line 317
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bClickedToggleButton:Z

    if-eqz v0, :cond_0

    .line 318
    const-string v0, "Advert.AdScheduler"

    const-string/jumbo v1, "setClickedToggleButton - bClickedToggleButton is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string/jumbo v1, "setClickedToggleButton - bClickedToggleButton is false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDormancyMode(Z)Z
    .locals 5
    .param p1, "bMode"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bDormancyMode:Z

    .line 133
    const-string v0, "Advert.AdScheduler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setDormancyMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    if-eqz p1, :cond_0

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->resetIndex()V

    .line 138
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;->isPlayerSleep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    const-string v0, "Advert.AdScheduler"

    const-string/jumbo v2, "setDormancyMode : player sleep mode"

    invoke-static {v0, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 147
    :goto_0
    return v0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policyList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->policy:Lcom/samsung/android/app/music/milk/advertise/AdPolicy;

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0
.end method

.method public setVideoAdOn(Z)V
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 298
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    .line 299
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->bVideoAdOn:Z

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "Advert.AdScheduler"

    const-string/jumbo v1, "setVideoAdOn - bVideoAdOn is true"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :goto_0
    return-void

    .line 302
    :cond_0
    const-string v0, "Advert.AdScheduler"

    const-string/jumbo v1, "setVideoAdOn - bVideoAdOn is false"

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setVideoAdPlayTime(J)V
    .locals 3
    .param p1, "videoAdPlayTime"    # J

    .prologue
    .line 236
    const-string v0, "Advert.AdScheduler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVideoAdPlayTime = videoAdPlayTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.radio.KEY_AD_VIDEO_PRE_PLAY_TIME"

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/app/music/common/preferences/Pref;->putLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 238
    return-void
.end method

.method public shouldPlayVideoAd()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 192
    const-string v4, "Advert.AdScheduler"

    const-string/jumbo v5, "shouldPlayVideoAd"

    invoke-static {v4, v5}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/LoginManager;

    move-result-object v0

    .line 195
    .local v0, "loginMgr":Lcom/samsung/android/app/music/service/milk/LoginManager;
    const/4 v1, 0x0

    .line 196
    .local v1, "userInfo":Lcom/samsung/android/app/music/common/model/UserInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/music/service/milk/LoginManager;->getUserInfo()Lcom/samsung/android/app/music/common/model/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    .line 198
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/model/UserInfo;->getUserStatus()I

    move-result v4

    if-ne v4, v3, :cond_1

    .line 199
    :cond_0
    const-string v3, "Advert.AdScheduler"

    const-string/jumbo v4, "shouldPlayVideoAd : Streaming User or Not checked signed yet"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return v2

    .line 204
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->mContext:Landroid/content/Context;

    const-string v7, "com.samsung.radio.KEY_AD_VIDEO_PRE_PLAY_TIME"

    const-wide/16 v8, 0x0

    .line 205
    invoke-static {v6, v7, v8, v9}, Lcom/samsung/android/app/music/common/preferences/Pref;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 206
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/advertise/AdScheduler;->getVideoAdIntervalTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_2

    .line 207
    const-string v3, "Advert.AdScheduler"

    const-string/jumbo v4, "shouldPlayVideoAd : It\'s not video ad show time"

    invoke-static {v3, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    :cond_2
    const-string v2, "Advert.AdScheduler"

    const-string/jumbo v4, "shouldPlayVideoAd : true"

    invoke-static {v2, v4}, Lcom/samsung/android/app/music/milk/util/MLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 218
    goto :goto_0
.end method
