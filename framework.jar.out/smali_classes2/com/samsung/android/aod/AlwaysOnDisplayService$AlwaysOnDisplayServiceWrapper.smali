.class final Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;
.super Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;
.source "AlwaysOnDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/aod/AlwaysOnDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlwaysOnDisplayServiceWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/aod/AlwaysOnDisplayService;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-direct {p0}, Lcom/samsung/android/aod/IAlwaysOnDisplayService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/aod/AlwaysOnDisplayService;

    .prologue
    invoke-direct {p0, p1}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService;)V

    return-void
.end method


# virtual methods
.method public requestHide()V
    .locals 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->-get0(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$3;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method

.method public startAOD()V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->-get0(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$1;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
.end method

.method public stopAOD()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->-get0(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$2;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 63
    return-void
.end method

.method public updateNotificationKeys(ILjava/util/List;)V
    .locals 2
    .param p1, "notiCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p2, "keys":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;->this$0:Lcom/samsung/android/aod/AlwaysOnDisplayService;

    invoke-static {v0}, Lcom/samsung/android/aod/AlwaysOnDisplayService;->-get0(Lcom/samsung/android/aod/AlwaysOnDisplayService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper$4;-><init>(Lcom/samsung/android/aod/AlwaysOnDisplayService$AlwaysOnDisplayServiceWrapper;ILjava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 81
    return-void
.end method
