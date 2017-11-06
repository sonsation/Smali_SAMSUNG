.class Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;
.super Ljava/lang/Object;
.source "PermissionCheckActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 4
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->getPermissionManager()Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->isAllGranted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->finish()V

    .line 87
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->access$000(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 94
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->access$200(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.samsung.android.app.music.ACTION_WRITE_STORAGE_PERMISSION_GRANTED"

    const/4 v3, 0x1

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->access$200(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->startActivity(Landroid/content/Intent;)V

    .line 106
    :goto_0
    return-void

    .line 89
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->access$100(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->access$200(Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "Permission"

    const-string v2, "onRequestRequiredPermissionGranted() - Activity Not found!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/permission/PermissionCheckActivity;->finish()V

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
