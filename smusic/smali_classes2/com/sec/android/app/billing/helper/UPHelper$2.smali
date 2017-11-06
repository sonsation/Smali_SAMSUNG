.class Lcom/sec/android/app/billing/helper/UPHelper$2;
.super Ljava/lang/Object;
.source "UPHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/billing/helper/UPHelper;->startSetupRetry(Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/billing/helper/UPHelper;

.field private final synthetic val$action:Ljava/lang/String;

.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$handler:Landroid/os/Handler;

.field private final synthetic val$jsonData:Ljava/lang/String;

.field private final synthetic val$requestCode:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    iput-object p2, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$activity:Landroid/app/Activity;

    iput p3, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$requestCode:I

    iput-object p4, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$action:Ljava/lang/String;

    iput-object p5, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$jsonData:Ljava/lang/String;

    iput-object p6, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$handler:Landroid/os/Handler;

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 343
    const-string v0, "UPHelper"

    const-string v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-static {p2}, Lcom/sec/android/app/billing/service/IBillingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/android/app/billing/service/IBillingService;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    .line 345
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    .line 346
    iget-object v0, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->this$0:Lcom/sec/android/app/billing/helper/UPHelper;

    iget-object v1, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$requestCode:I

    iget-object v3, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$action:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$jsonData:Ljava/lang/String;

    iget-object v5, p0, Lcom/sec/android/app/billing/helper/UPHelper$2;->val$handler:Landroid/os/Handler;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/billing/helper/UPHelper;->access$3(Lcom/sec/android/app/billing/helper/UPHelper;Landroid/app/Activity;ILjava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 347
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 337
    const-string v0, "UPHelper"

    const-string v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$0(Lcom/sec/android/app/billing/service/IBillingService;)V

    .line 339
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sec/android/app/billing/helper/UPHelper;->access$1(Z)V

    .line 340
    return-void
.end method
