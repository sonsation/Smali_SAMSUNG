.class Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;
.super Ljava/lang/Thread;
.source "KeyguardDirectionLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardDirectionLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectionStichingTimer"
.end annotation


# instance fields
.field Msg:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/keyguard/KeyguardDirectionLockView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->Msg:Landroid/os/Message;

    .line 330
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardDirectionLockView;Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardDirectionLockView;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 334
    const-string/jumbo v1, "KeyguardDirectionLockView"

    const-string/jumbo v2, "Stitching Timer Thread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set5(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 342
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 343
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set5(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 344
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 347
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardDirectionLockView;->-wrap2(Lcom/android/keyguard/KeyguardDirectionLockView;)V

    .line 349
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set3(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 333
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 352
    .local v0, "E":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/android/keyguard/KeyguardDirectionLockView$DirectionStichingTimer;->this$0:Lcom/android/keyguard/KeyguardDirectionLockView;

    invoke-static {v1, v4}, Lcom/android/keyguard/KeyguardDirectionLockView;->-set5(Lcom/android/keyguard/KeyguardDirectionLockView;Z)Z

    .line 353
    const-string/jumbo v1, "KeyguardDirectionLockView"

    const-string/jumbo v2, "Interrupted before waking up naturally"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
