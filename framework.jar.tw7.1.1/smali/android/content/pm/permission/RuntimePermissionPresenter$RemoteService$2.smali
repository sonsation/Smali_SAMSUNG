.class Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;
.super Ljava/lang/Object;
.source "RuntimePermissionPresenter.java"

# interfaces
.implements Landroid/os/RemoteCallback$OnResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

.field final synthetic val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$system:Z


# direct methods
.method constructor <init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;Landroid/os/Handler;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;Z)V
    .locals 0

    iput-object p1, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->this$1:Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService;

    iput-object p2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iput-boolean p4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Landroid/os/Bundle;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "android.content.pm.permission.RuntimePermissionPresenter.key.result"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_1
    move-object v1, v0

    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$handler:Landroid/os/Handler;

    new-instance v3, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;

    iget-object v4, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iget-boolean v5, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    invoke-direct {v3, p0, v4, v5, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2$1;-><init>(Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;ZLjava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$callback:Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;

    iget-boolean v3, p0, Landroid/content/pm/permission/RuntimePermissionPresenter$RemoteService$2;->val$system:Z

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;->getAppsUsingPermissions(ZLjava/util/List;)V

    goto :goto_0
.end method
