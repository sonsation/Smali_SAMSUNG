.class public Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;
.super Landroid/os/Handler;
.source "DaoNotifyHandler.java"


# static fields
.field private static final DAO_URI_MATCHER:Landroid/content/UriMatcher;

.field private static final DELAY_NOTIFY:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "DaoNotifyHandler"

.field private static final mDataMonitor:Ljava/lang/Object;

.field private static sUriCount:I


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 20
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->DAO_URI_MATCHER:Landroid/content/UriMatcher;

    .line 27
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->mDataMonitor:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    iput-object p1, p0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 42
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Landroid/net/Uri;

    if-eqz v1, :cond_0

    .line 43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 44
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->internalNotifyUri(Landroid/net/Uri;)V

    .line 46
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method

.method public internalNotifyUri(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 77
    const-string v0, "DaoNotifyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalNotifyUri : uri - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public notifyUri(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 64
    sget-object v2, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->DAO_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 65
    .local v0, "code":I
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    const-string v2, "DaoNotifyHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUri : remove duplicated message. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->removeMessages(I)V

    .line 69
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 70
    .local v1, "message":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->what:I

    .line 71
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 73
    return-void
.end method

.method public declared-synchronized registerUri(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->mDataMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    sget v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    .line 57
    sget-object v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->DAO_URI_MATCHER:Landroid/content/UriMatcher;

    sget v2, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    invoke-virtual {v0, p1, p2, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    const-string v0, "DaoNotifyHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerUri : added uri - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/samsung/android/app/music/provider/dao/DaoNotifyHandler;->sUriCount:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 60
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
