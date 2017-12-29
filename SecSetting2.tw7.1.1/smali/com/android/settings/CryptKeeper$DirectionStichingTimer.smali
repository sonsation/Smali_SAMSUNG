.class Lcom/android/settings/CryptKeeper$DirectionStichingTimer;
.super Ljava/lang/Thread;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStichingTimer"
.end annotation


# instance fields
.field Msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method private constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 927
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->Msg:Landroid/os/Message;

    .line 926
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$DirectionStichingTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;-><init>(Lcom/android/settings/CryptKeeper;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 930
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Stitching Timer Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;Z)Z

    .line 935
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 936
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;Z)Z

    .line 939
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get4(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_0

    .line 940
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Checking direction lock password"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get4(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    .line 942
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1}, Lcom/android/settings/CryptKeeper;->-get9(Lcom/android/settings/CryptKeeper;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 929
    :cond_0
    :goto_0
    return-void

    .line 944
    :catch_0
    move-exception v0

    .line 946
    .local v0, "E":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/settings/CryptKeeper$DirectionStichingTimer;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v1, v4}, Lcom/android/settings/CryptKeeper;->-set2(Lcom/android/settings/CryptKeeper;Z)Z

    .line 947
    const-string/jumbo v1, "CryptKeeper"

    const-string/jumbo v2, "Interrupted before waking up naturally"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
