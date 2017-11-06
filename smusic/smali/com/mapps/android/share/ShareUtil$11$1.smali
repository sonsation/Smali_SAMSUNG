.class Lcom/mapps/android/share/ShareUtil$11$1;
.super Ljava/lang/Object;
.source "ShareUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapps/android/share/ShareUtil$11;->onReqeustConfComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mapps/android/share/ShareUtil$11;

.field private final synthetic val$codeType:Ljava/lang/String;

.field private final synthetic val$ctx:Landroid/content/Context;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$media_type:I


# direct methods
.method constructor <init>(Lcom/mapps/android/share/ShareUtil$11;Landroid/content/Context;ILjava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mapps/android/share/ShareUtil$11$1;->this$1:Lcom/mapps/android/share/ShareUtil$11;

    iput-object p2, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$ctx:Landroid/content/Context;

    iput p3, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$media_type:I

    iput-object p4, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$codeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$handler:Landroid/os/Handler;

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 454
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 455
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$11$1;->this$1:Lcom/mapps/android/share/ShareUtil$11;

    invoke-static {v1}, Lcom/mapps/android/share/ShareUtil$11;->access$0(Lcom/mapps/android/share/ShareUtil$11;)Lcom/mapps/android/share/ShareUtil;

    move-result-object v1

    iget-object v2, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$ctx:Landroid/content/Context;

    iget v3, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$media_type:I

    iget-object v4, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$codeType:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/mapps/android/share/ShareUtil;->access$0(Lcom/mapps/android/share/ShareUtil;Landroid/content/Context;ILjava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 456
    iget-object v1, p0, Lcom/mapps/android/share/ShareUtil$11$1;->val$handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    return-void
.end method
