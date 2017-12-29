.class Lcom/samsung/android/server/virtualspace/VSManager$1;
.super Landroid/os/Handler;
.source "VSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/virtualspace/VSManager;->makeHandler(Ljava/lang/String;)Landroid/os/Handler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/virtualspace/VSManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/virtualspace/VSManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSManager$1;->this$0:Lcom/samsung/android/server/virtualspace/VSManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0, p1}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "VSManager"

    const-string v2, "Uncaught exception in asynchronous task: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
