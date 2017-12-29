.class Lcom/android/server/policy/MultitapKeyManager$2;
.super Ljava/lang/Object;
.source "MultitapKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/MultitapKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/MultitapKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/MultitapKeyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/MultitapKeyManager;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/MultitapKeyManager;->-get2(Lcom/android/server/policy/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/MultitapKeyManager;->-set2(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    .line 283
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/MultitapKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isDoubleTapLaunchEnabled(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/policy/MultitapKeyManager;->handleDoubleTapLaunch(I)V

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0}, Lcom/android/server/policy/MultitapKeyManager;->-get1(Lcom/android/server/policy/MultitapKeyManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/android/server/policy/MultitapKeyManager$2;->this$0:Lcom/android/server/policy/MultitapKeyManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/MultitapKeyManager;->-set1(Lcom/android/server/policy/MultitapKeyManager;Z)Z

    .line 280
    :cond_1
    return-void
.end method
