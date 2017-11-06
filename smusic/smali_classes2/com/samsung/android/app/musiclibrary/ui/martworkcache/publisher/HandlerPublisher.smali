.class public Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;
.super Ljava/lang/Object;
.source "HandlerPublisher.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/Publisher;


# static fields
.field public static final ARTWORK_URI_KEY:Ljava/lang/String; = "Uri"

.field public static final ARTWORK_USER_KEY:Ljava/lang/String; = "User"

.field private static final DEBUG:Z

.field public static final DECODE_COMPLETE:I = 0xc8

.field public static final DECODE_FAILED:I = 0xc9

.field public static final DECODE_ON_BACKGROUND_REQUEST:I = 0xca

.field public static final LAST_MSG:I = 0xca

.field private static final LOG_TAG:Ljava/lang/String; = "ArtWork"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mHandlerThreadId:J

.field private final mUser:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/MArtworkCache;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;-><init>(Landroid/os/Handler;Landroid/os/Parcelable;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "user"    # Landroid/os/Parcelable;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 64
    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    .line 66
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandlerThreadId:J

    .line 70
    .end local v1    # "thread":Ljava/lang/Thread;
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    .line 71
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mUser:Landroid/os/Parcelable;

    .line 72
    return-void

    .line 68
    :cond_0
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandlerThreadId:J

    goto :goto_0
.end method

.method private fillMsg(Landroid/net/Uri;Landroid/os/Message;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 117
    .local v0, "data":Landroid/os/Bundle;
    const-string v1, "Uri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 118
    const-string v1, "User"

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mUser:Landroid/os/Parcelable;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 119
    return-void
.end method

.method public static getLoadedUri(Landroid/os/Message;)Landroid/net/Uri;
    .locals 3
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "Uri"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 127
    .local v0, "parcelable":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 128
    check-cast v0, Landroid/net/Uri;

    .line 130
    .end local v0    # "parcelable":Landroid/os/Parcelable;
    :goto_0
    return-object v0

    .restart local v0    # "parcelable":Landroid/os/Parcelable;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHandlerThread()Z
    .locals 4

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandlerThreadId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onPublishArtwork(Landroid/net/Uri;Landroid/graphics/Bitmap;J)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "elapsedTime"    # J

    .prologue
    .line 88
    if-eqz p2, :cond_1

    .line 89
    const/16 v1, 0xc8

    .line 93
    .local v1, "what":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 94
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->fillMsg(Landroid/net/Uri;Landroid/os/Message;)V

    .line 96
    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->isHandlerThread()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 98
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "direct publish to handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 108
    :goto_1
    return-void

    .line 91
    .end local v0    # "msg":Landroid/os/Message;
    .end local v1    # "what":I
    :cond_1
    const/16 v1, 0xc9

    .restart local v1    # "what":I
    goto :goto_0

    .line 102
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    sget-boolean v2, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 103
    const-string v2, "ArtWork"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "send message publish to handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmap: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1
.end method

.method public onStartBackgroundRequest(Landroid/net/Uri;)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 77
    .local v0, "msg":Landroid/os/Message;
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->fillMsg(Landroid/net/Uri;Landroid/os/Message;)V

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->isHandlerThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/publisher/HandlerPublisher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onStillUsedArtwork(Landroid/net/Uri;J)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "elapsedTime"    # J

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
