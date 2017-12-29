.class Lcom/android/server/policy/SamsungPhoneWindowManager$1;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/SamsungPhoneWindowManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/SamsungPhoneWindowManager;

    .prologue
    .line 715
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 718
    const-string v0, "SamsungPhoneWindowManager"

    const-string v1, "runnable start for activekey wakeup"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set1(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    .line 720
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iput-boolean v2, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsDoublePressedUserKey:Z

    .line 721
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get1(Lcom/android/server/policy/SamsungPhoneWindowManager;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mAllowTheaterModeWakeFromKey:Z

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/policy/PhoneWindowManager;->wakeUp(JZI)Z

    .line 722
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsTorchSetForUserKey:Z

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap0(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    .line 717
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-boolean v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mIsPackageEnabledForUserKey:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->isSupportBCM()Z

    move-result v0

    if-nez v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$1;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/SamsungPhoneWindowManager;->mPWM:Lcom/android/server/policy/PhoneWindowManager;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->dismissKeyguardLw(I)V

    goto :goto_0
.end method
