.class Lcom/android/server/policy/CombinationKeyManager$3;
.super Ljava/lang/Object;
.source "CombinationKeyManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/CombinationKeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/CombinationKeyManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/CombinationKeyManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/CombinationKeyManager;

    .prologue
    .line 779
    iput-object p1, p0, Lcom/android/server/policy/CombinationKeyManager$3;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/server/policy/CombinationKeyManager$3;->this$0:Lcom/android/server/policy/CombinationKeyManager;

    iget-object v0, v0, Lcom/android/server/policy/CombinationKeyManager;->mSPWM:Lcom/android/server/policy/SamsungPhoneWindowManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->takeScreenshot(I)V

    return-void
.end method