.class Lcom/mapps/android/share/ShareUtil$6;
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

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

.field private final synthetic val$ctx:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;Ljava/lang/String;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$6;->this$0:Lcom/mapps/android/share/ShareUtil;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$6;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/mapps/android/share/ShareUtil$6;->val$codeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$6;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    .line 198
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 201
    invoke-static {}, Lcom/mapps/android/share/Track;->getInstance()Lcom/mapps/android/share/Track;

    move-result-object v0

    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$6;->val$ctx:Landroid/content/Context;

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$6;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v2, v2, Lcom/mapps/android/share/ShareUtil;->m_publisher:Ljava/lang/String;

    iget-object v3, p0, Lcom/mapps/android/share/ShareUtil$6;->this$0:Lcom/mapps/android/share/ShareUtil;

    iget-object v3, v3, Lcom/mapps/android/share/ShareUtil;->m_media:Ljava/lang/String;

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$6;->val$codeType:Ljava/lang/String;

    new-instance v5, Lcom/mapps/android/share/ShareUtil$6$1;

    iget-object v6, p0, Lcom/mapps/android/share/ShareUtil$6;->val$confCompleteListener:Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;

    invoke-direct {v5, p0, v6}, Lcom/mapps/android/share/ShareUtil$6$1;-><init>(Lcom/mapps/android/share/ShareUtil$6;Lcom/mapps/android/share/ShareUtil$RequestConfCompleteListener;)V

    invoke-virtual/range {v0 .. v5}, Lcom/mapps/android/share/Track;->SendTagetRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/mapps/android/share/Track$TrackCompleteListener;)V

    .line 208
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 209
    return-void
.end method
