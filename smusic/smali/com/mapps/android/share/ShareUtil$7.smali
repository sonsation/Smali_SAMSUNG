.class Lcom/mapps/android/share/ShareUtil$7;
.super Landroid/os/Handler;
.source "ShareUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil;->requestConf(Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/share/ShareUtil;

.field private final synthetic val$SendTagetRequestHandler:Landroid/os/Handler;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$media_type:I

.field private final synthetic val$onReqeustConfCompleteHandler:Landroid/os/Handler;

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;IILjava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$7;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/mapps/android/share/ShareUtil$7;->val$type:I

    iput p4, p0, Lcom/mapps/android/share/ShareUtil$7;->val$media_type:I

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$7;->val$codeType:Ljava/lang/String;

    iput-object p6, p0, Lcom/mapps/android/share/ShareUtil$7;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    iput-object p7, p0, Lcom/mapps/android/share/ShareUtil$7;->val$SendTagetRequestHandler:Landroid/os/Handler;

    iput-object p8, p0, Lcom/mapps/android/share/ShareUtil$7;->val$onReqeustConfCompleteHandler:Landroid/os/Handler;

    .line 212
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/mapps/android/share/ShareUtil$7;)Lcom/mapps/android/share/ShareUtil;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    return-object v0
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 215
    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v1, v1, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-wide v0, v0, Lcom/mapps/android/share/ShareUtil;->currentTime:J

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-wide v2, v2, Lcom/mapps/android/share/ShareUtil;->currentTimeSumPeriod:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 217
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$7;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v2, v2, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v3, v3, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$7;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v4, v4, Lcom/mapps/android/share/ShareUtil;->m_section:Ljava/lang/String;

    iget v5, p0, Lcom/mapps/android/share/ShareUtil$7;->val$type:I

    iget v6, p0, Lcom/mapps/android/share/ShareUtil$7;->val$media_type:I

    iget-object v7, p0, Lcom/mapps/android/share/ShareUtil$7;->val$codeType:Ljava/lang/String;

    new-instance v8, Lcom/mapps/android/share/ShareUtil$7$1;

    iget-object v9, p0, Lcom/mapps/android/share/ShareUtil$7;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    invoke-direct {v8, p0, v9}, Lcom/mapps/android/share/ShareUtil$7$1;-><init>(Lcom/mapps/android/share/ShareUtil$7;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    invoke-virtual/range {v0 .. v8}, Lcom/mapps/android/share/Track;->requestConf(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 285
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mapps/android/share/ShareUtil$7$2;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$7;->val$ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$7;->val$SendTagetRequestHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$7;->val$onReqeustConfCompleteHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/mapps/android/share/ShareUtil$7$2;-><init>(Lcom/mapps/android/share/ShareUtil$7;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 282
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 284
    :cond_1
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
