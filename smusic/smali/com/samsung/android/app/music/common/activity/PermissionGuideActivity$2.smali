.class Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;
.super Ljava/lang/Object;
.source "PermissionGuideActivity.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/PermissionManager$OnPermissionResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionResult([Ljava/lang/String;[I)V
    .locals 3
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "extra_permissions"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    const-string v1, "extra_grant_result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 95
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->finish()V

    .line 97
    return-void
.end method
