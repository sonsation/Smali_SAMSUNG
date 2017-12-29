.class Lcom/android/server/policy/SamsungPhoneWindowManager$33;
.super Ljava/lang/Object;
.source "SamsungPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/SamsungPhoneWindowManager;->notifyCoverSwitchStateChanged(JZ)V
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
    .line 4857
    iput-object p1, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4860
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 4861
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 4863
    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    iget-object v3, v3, Lcom/android/server/policy/SamsungPhoneWindowManager;->mContext:Landroid/content/Context;

    const v4, 0x103012b

    invoke-direct {v0, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 4864
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408db

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 4865
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10408dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 4866
    .local v1, "emMsg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-set11(Lcom/android/server/policy/SamsungPhoneWindowManager;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 4867
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    const/16 v4, 0x11

    invoke-virtual {v3, v4, v5, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 4868
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->setShowForAllUsers()V

    .line 4869
    iget-object v3, p0, Lcom/android/server/policy/SamsungPhoneWindowManager$33;->this$0:Lcom/android/server/policy/SamsungPhoneWindowManager;

    invoke-static {v3}, Lcom/android/server/policy/SamsungPhoneWindowManager;->-get10(Lcom/android/server/policy/SamsungPhoneWindowManager;)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 4859
    return-void
.end method
