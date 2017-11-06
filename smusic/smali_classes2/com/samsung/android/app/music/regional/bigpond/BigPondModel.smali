.class public final Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;
.super Ljava/lang/Object;
.source "BigPondModel.java"

# interfaces
.implements Lcom/samsung/android/app/music/regional/bigpond/IBigPondModel;


# static fields
.field private static final DEBUG:Z = true

.field private static final RSS_URL:Ljava/lang/String; = "https://feeds.rss.bigpond.com/xmlfeed?aid=21&feedId=327680&useragent"

.field private static final TAG:Ljava/lang/String; = "BigPondModel"

.field private static sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;


# instance fields
.field private mBigPondNetworkStatus:I

.field private mBigPondParser:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

.field private final mDatalistSwapLock:Ljava/lang/Object;

.field private mDatalists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDatalists_clone:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableThread:Z

.field private mResponseHandler:Landroid/os/Handler;

.field private mRestart:Z

.field private mUseThread:Z

.field private mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    .line 40
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalistSwapLock:Ljava/lang/Object;

    .line 44
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondParser:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

    .line 46
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    .line 48
    iput v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    .line 50
    iput-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    .line 52
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mRestart:Z

    .line 54
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mUseThread:Z

    .line 56
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDisableThread:Z

    .line 151
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$3;-><init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    .line 209
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondParser:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondParser:Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenParser;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mUseThread:Z

    return v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mUseThread:Z

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mRestart:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->doRestart()V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->swap()V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->printData()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->downloadBigPondImage(Z)V

    return-void
.end method

.method private connectBigPond()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDisableThread:Z

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 77
    iput-boolean v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mUseThread:Z

    .line 78
    iput v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    .line 79
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$1;-><init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;)V

    .line 91
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$1;->start()V

    goto :goto_0
.end method

.method private doRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 125
    const-string v0, "BigPondModel"

    const-string v1, "doRestart()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mRestart:Z

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 132
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 133
    iput v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    .line 134
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDisableThread:Z

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->start()V

    .line 137
    return-void
.end method

.method private downloadBigPondImage(Z)V
    .locals 1
    .param p1, "first"    # Z

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDisableThread:Z

    if-eqz v0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mUseThread:Z

    .line 100
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    .line 101
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;-><init>(Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;Z)V

    .line 112
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel$2;->start()V

    goto :goto_0
.end method

.method public static getInst()Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;
    .locals 2

    .prologue
    .line 140
    sget-object v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    if-nez v0, :cond_1

    .line 141
    const-class v1, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    monitor-enter v1

    .line 142
    :try_start_0
    sget-object v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    invoke-direct {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    .line 145
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->sInst:Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;

    return-object v0

    .line 145
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private printData()V
    .locals 5

    .prologue
    .line 116
    const-string v1, "BigPondModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 119
    .local v0, "info":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    const-string v2, "BigPondModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Title:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const-string v2, "BigPondModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Artist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->getArtist()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    .end local v0    # "info":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :cond_0
    return-void
.end method

.method private swap()V
    .locals 5

    .prologue
    .line 59
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 60
    iget-object v3, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalistSwapLock:Ljava/lang/Object;

    monitor-enter v3

    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists_clone:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    .line 64
    .local v0, "info":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    invoke-virtual {v0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;->makeClone()Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;

    move-result-object v1

    .line 65
    .local v1, "info_new":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    iget-object v4, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    .end local v0    # "info":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    .end local v1    # "info_new":Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    return-void
.end method


# virtual methods
.method public getData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/regional/bigpond/BigPondTopTenInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDatalists:Ljava/util/List;

    return-object v0
.end method

.method public registerView(Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;)V
    .locals 0
    .param p1, "view"    # Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    .prologue
    .line 219
    iput-object p1, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    .line 220
    return-void
.end method

.method public restart()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    const/4 v2, 0x1

    .line 256
    const-string v0, "BigPondModel"

    const-string/jumbo v1, "restart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 258
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mRestart:Z

    .line 259
    iput-boolean v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mDisableThread:Z

    .line 260
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mResponseHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 261
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    const-string v0, "BigPondModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start() mBigPondNetworkStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    packed-switch v0, :pswitch_data_0

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->connectBigPond()V

    goto :goto_0

    .line 232
    :pswitch_1
    const/4 v0, 0x4

    iput v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mBigPondNetworkStatus:I

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    goto :goto_0

    .line 240
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->mView:Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/music/regional/bigpond/IBigPondView;->onUpdate(I)V

    goto :goto_0

    .line 247
    :pswitch_3
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/bigpond/BigPondModel;->connectBigPond()V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
