.class Lcom/android/server/display/WifiDisplayAdapter$11;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestConnectLocked(ILjava/lang/String;ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$address:Ljava/lang/String;

.field final synthetic val$connectingMode:I

.field final synthetic val$isPendingRequest:Z

.field final synthetic val$isPersistentMode:Z

.field final synthetic val$isPinConnect:Z


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ZILjava/lang/String;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p2, "val$isPinConnect"    # Z
    .param p3, "val$connectingMode"    # I
    .param p4, "val$address"    # Ljava/lang/String;
    .param p5, "val$isPendingRequest"    # Z
    .param p6, "val$isPersistentMode"    # Z

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput-boolean p2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPinConnect:Z

    iput p3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$connectingMode:I

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$address:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPendingRequest:Z

    iput-boolean p6, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPersistentMode:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 543
    iget-boolean v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPinConnect:Z

    if-nez v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$connectingMode:I

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$address:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPendingRequest:Z

    iget-boolean v4, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isPersistentMode:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/display/WifiDisplayController;->requestConnect(ILjava/lang/String;ZZ)V

    .line 539
    :cond_0
    :goto_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/display/WifiDisplayController;->requestConnectWithPin(Ljava/lang/String;)V

    goto :goto_0
.end method
