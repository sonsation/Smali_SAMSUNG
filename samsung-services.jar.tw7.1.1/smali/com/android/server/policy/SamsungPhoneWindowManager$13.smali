.class Lcom/android/server/policy/SamsungPhoneWindowManager$13;
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
    .line 5198
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 5200
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "torchlight_timeout"

    const/16 v3, 0x7530

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 5201
    .local v0, "torchTimeOut":I
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/SamsungPhoneWindowManager;->mTorchlightWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 5202
    iget-object v1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$13;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v1, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-wrap3(Lcom/android/server/policy/SamsungPhoneWindowManager;I)V

    .line 5199
    return-void
.end method
