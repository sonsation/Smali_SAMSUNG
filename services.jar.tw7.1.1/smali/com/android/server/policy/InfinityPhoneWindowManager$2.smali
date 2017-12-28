.class Lcom/android/server/policy/InfinityPhoneWindowManager$2;
.super Ljava/lang/Object;
.source "InfinityPhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/InfinityPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/InfinityPhoneWindowManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$3(Lcom/android/server/policy/InfinityPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$4(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$2(Lcom/android/server/policy/InfinityPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    iget v0, v0, Lcom/android/server/policy/PhoneWindowManager;->sp_bixby_action:I

    const/16 v1, 0x14

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$2(Lcom/android/server/policy/InfinityPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->handleBixbyShortPress()V

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0, v2}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$5(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$2;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$5(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V

    goto :goto_0
.end method
