.class Lcom/android/server/enterprise/application/ApplicationPolicy$12;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;->registerECContainerAddedListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;

    .prologue
    .line 6690
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$12;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6692
    const-string/jumbo v0, "ApplicationPolicy"

    const-string/jumbo v1, "registerECContainerAddedListener"

    invoke-static {v0, v1}, Lcom/android/server/enterprise/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 6694
    new-instance v0, Lcom/android/server/enterprise/application/ApplicationPolicy$12$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$12$1;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy$12;)V

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationPolicy$12$1;->start()V

    .line 6691
    return-void
.end method
