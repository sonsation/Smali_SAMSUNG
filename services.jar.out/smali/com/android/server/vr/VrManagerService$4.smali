.class Lcom/android/server/vr/VrManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "VrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/VrManagerService;->setEnabledStatusOfVrComponents()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/VrManagerService;

.field final synthetic val$vrComponentPackageNames:Landroid/util/ArraySet;

.field final synthetic val$vrComponents:Landroid/util/ArraySet;


# direct methods
.method constructor <init>(Lcom/android/server/vr/VrManagerService;Landroid/util/ArraySet;Landroid/util/ArraySet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/vr/VrManagerService;

    .prologue
    .line 457
    .local p2, "val$vrComponentPackageNames":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .local p3, "val$vrComponents":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    iput-object p1, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    iput-object p2, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponentPackageNames:Landroid/util/ArraySet;

    iput-object p3, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponents:Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 460
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 461
    .local v3, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 462
    .local v2, "packageName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 465
    const/16 v4, 0x4000

    .line 464
    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 466
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v4, p0, Lcom/android/server/vr/VrManagerService$4;->this$0:Lcom/android/server/vr/VrManagerService;

    .line 467
    iget-object v5, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponentPackageNames:Landroid/util/ArraySet;

    iget-object v6, p0, Lcom/android/server/vr/VrManagerService$4;->val$vrComponents:Landroid/util/ArraySet;

    .line 466
    invoke-static {v4, v3, v1, v5, v6}, Lcom/android/server/vr/VrManagerService;->-wrap0(Lcom/android/server/vr/VrManagerService;Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;Landroid/util/ArraySet;Landroid/util/ArraySet;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
