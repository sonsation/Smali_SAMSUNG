.class Lcom/android/server/policy/SamsungPhoneWindowManager$22;
.super Landroid/telephony/PhoneStateListener;
.source "SamsungPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->init(Landroid/content/Context;Lcom/android/server/policy/PhoneWindowManager;Landroid/view/IWindowManager;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
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
    .line 1103
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1105
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    if-eq p1, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set10(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    .line 1106
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get8(Lcom/android/server/policy/SamsungPhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/SamsungPhoneWindowManager;->requestTraversalForCoverView()V

    .line 1110
    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$22;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    if-ne p1, v1, :cond_3

    :goto_1
    invoke-static {v0, v1}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set9(Lcom/android/server/policy/SamsungPhoneWindowManager;Z)Z

    .line 1104
    return-void

    :cond_2
    move v0, v2

    .line 1105
    goto :goto_0

    :cond_3
    move v1, v2

    .line 1110
    goto :goto_1
.end method
