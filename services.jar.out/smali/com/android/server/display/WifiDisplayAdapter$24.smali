.class Lcom/android/server/display/WifiDisplayAdapter$24;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestEnableLocked(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$deviceType:I

.field final synthetic val$ipAddr:Ljava/lang/String;

.field final synthetic val$isPendingRequest:Z

.field final synthetic val$options:Ljava/lang/String;

.field final synthetic val$port:Ljava/lang/String;

.field final synthetic val$remoteP2pMacAddr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayAdapter;
    .param p2, "val$deviceType"    # I
    .param p3, "val$ipAddr"    # Ljava/lang/String;
    .param p4, "val$port"    # Ljava/lang/String;
    .param p5, "val$options"    # Ljava/lang/String;
    .param p6, "val$deviceName"    # Ljava/lang/String;
    .param p7, "val$remoteP2pMacAddr"    # Ljava/lang/String;
    .param p8, "val$isPendingRequest"    # Z

    .prologue
    .line 1941
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$deviceType:I

    iput-object p3, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$ipAddr:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$port:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$options:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$deviceName:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$remoteP2pMacAddr:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$isPendingRequest:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get12(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1947
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$deviceType:I

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayAdapter;->-wrap1(Lcom/android/server/display/WifiDisplayAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1948
    const-string/jumbo v0, "WifiDisplayAdapter"

    const-string/jumbo v1, "requestEnableLocked SEM_CONNECT_STATE_SCREEN_SHARING_AP call requestStopScan."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get9(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/WifiDisplayController;->requestStopScan()V

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-get12(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/IpRemoteDisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$ipAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$port:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$deviceType:I

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$options:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$deviceName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$remoteP2pMacAddr:Ljava/lang/String;

    iget-boolean v7, p0, Lcom/android/server/display/WifiDisplayAdapter$24;->val$isPendingRequest:Z

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/display/IpRemoteDisplayController;->requestEnableWifiDisplay(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1943
    :cond_1
    return-void
.end method
