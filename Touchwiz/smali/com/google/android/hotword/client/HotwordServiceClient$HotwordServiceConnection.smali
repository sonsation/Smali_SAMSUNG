.class Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;
.super Ljava/lang/Object;
.source "HotwordServiceClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/hotword/client/HotwordServiceClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotwordServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/hotword/client/HotwordServiceClient;


# direct methods
.method private constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/client/HotwordServiceClient$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/android/hotword/client/HotwordServiceClient;
    .param p2, "x1"    # Lcom/google/android/hotword/client/HotwordServiceClient$1;

    .prologue
    .line 159
    invoke-direct {p0, p1}, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;-><init>(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-static {p2}, Lcom/google/android/hotword/service/IHotwordService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/hotword/service/IHotwordService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$502(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/service/IHotwordService;)Lcom/google/android/hotword/service/IHotwordService;

    .line 171
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    invoke-static {v0}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$300(Lcom/google/android/hotword/client/HotwordServiceClient;)V

    .line 172
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "cn"    # Landroid/content/ComponentName;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$402(Lcom/google/android/hotword/client/HotwordServiceClient;Z)Z

    .line 164
    iget-object v0, p0, Lcom/google/android/hotword/client/HotwordServiceClient$HotwordServiceConnection;->this$0:Lcom/google/android/hotword/client/HotwordServiceClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/hotword/client/HotwordServiceClient;->access$502(Lcom/google/android/hotword/client/HotwordServiceClient;Lcom/google/android/hotword/service/IHotwordService;)Lcom/google/android/hotword/service/IHotwordService;

    .line 165
    return-void
.end method
