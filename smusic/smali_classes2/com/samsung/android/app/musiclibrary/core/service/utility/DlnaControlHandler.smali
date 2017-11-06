.class public final Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
.super Landroid/os/Handler;
.source "DlnaControlHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    }
.end annotation


# static fields
.field private static final BIND_SERVICE:I = 0x0

.field private static final REFRESH_DEVICE:I = 0x2

.field private static final SELECT_DEVICE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SV-Dlna"


# instance fields
.field private final MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

.field private final MEDIA_RENDERER_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

.field private final MEDIA_SERVER_URI:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;

.field private mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

.field private mIsBind:Z

.field private mIsBindRequested:Z

.field private mIsReleased:Z

.field private final mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

.field private mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "server"    # Landroid/net/Uri;
    .param p3, "serverContent"    # Landroid/net/Uri;
    .param p4, "renderer"    # Landroid/net/Uri;
    .param p5, "deleteAll"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 39
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    .line 41
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsReleased:Z

    .line 43
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    .line 141
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    .line 47
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_URI:Landroid/net/Uri;

    .line 49
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    .line 50
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    .line 51
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    return p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;
    .param p1, "x1"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    return-object p1
.end method

.method private ensureDlnaManager()V
    .locals 5

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_SERVER_CONTENTS_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_RENDERER_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->MEDIA_DELETE_ALL_URI:Landroid/net/Uri;

    .line 57
    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->createInstance(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public bindService()V
    .locals 2

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    if-eqz v0, :cond_1

    .line 92
    const-string v0, "SV-Dlna"

    const-string v1, "bindService() - already requested to bind."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public bindServiceImmediate(Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    .line 78
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    if-eqz v0, :cond_1

    .line 79
    const-string v0, "SV-Dlna"

    const-string v1, "bindServiceImmediate() - already requested to bind."

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->ensureDlnaManager()V

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBindRequested:Z

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->setOnBindServiceCallback(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;)V

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService()V

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 120
    const-string v0, "SV-Dlna"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDlnaHandler what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsReleased:Z

    if-eqz v0, :cond_0

    .line 139
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->ensureDlnaManager()V

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnBindServiceCallback:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->setOnBindServiceCallback(Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager$OnBindServiceCallback;)V

    .line 128
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->bindDlnaService()V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->searchAudioContents(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->refresh()V

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isBindService()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    return v0
.end method

.method public refresh()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 63
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsBind:Z

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->bindService()V

    .line 68
    :cond_0
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->removeMessages(I)V

    .line 69
    const-wide/16 v0, 0x3c

    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mIsReleased:Z

    .line 109
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    if-eqz v0, :cond_0

    .line 111
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mOnDlnaControlListener:Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler$OnDlnaControlListener;

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->mDlnaManager:Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/library/dlna/DlnaManager;->release()V

    .line 116
    :cond_1
    return-void
.end method

.method public selectDlnaDms(Ljava/lang/String;)V
    .locals 1
    .param p1, "dmsId"    # Ljava/lang/String;

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/utility/DlnaControlHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method
