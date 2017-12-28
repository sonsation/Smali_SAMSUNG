.class Lcom/android/server/policy/InfinityPhoneWindowManager$1;
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

    iput-object p1, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$1;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$1;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$0(Lcom/android/server/policy/InfinityPhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$1;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$1(Lcom/android/server/policy/InfinityPhoneWindowManager;Z)V

    iget-object v0, p0, Lcom/android/server/policy/InfinityPhoneWindowManager$1;->this$0:Lcom/android/server/policy/InfinityPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/InfinityPhoneWindowManager;->access$2(Lcom/android/server/policy/InfinityPhoneWindowManager;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey()V

    :cond_0
    return-void
.end method
