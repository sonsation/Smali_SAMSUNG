.class Lcom/sec/android/app/billing/helper/UPHelper$1;
.super Ljava/lang/Object;
.source "UPHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/billing/helper/UPHelper;->startSetup(Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/billing/helper/UPHelper;

.field private final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    iput-object p2, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->val$handler:Landroid/os/Handler;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 166
    const-string v0, "UPHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p2}, Lcom/sec/android/app/billing/service/IBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/billing/service/IBillingService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    .line 168
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    .line 169
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/billing/helper/UPHelper$1;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    const/16 v2, 0xa

    const-string v3, "Samsung Billing connected"

    invoke-static {v1, v2, v3}, Lcom/sec/android/app/billing/helper/UPHelper;->access$2(Lcom/sec/android/app/billing/helper/UPHelper;ILjava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 170
    const-string v0, "UPHelper"

    const-string v1, "UP_CLIENT_OK / Samsung Billing connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 160
    const-string v0, "UPHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    .line 162
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    .line 163
    return-void
.end method
