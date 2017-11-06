.class Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;
.super Ljava/lang/Object;
.source "PermissionGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 69
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->access$000(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->access$002(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;Z)Z

    .line 74
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;->access$100(Lcom/samsung/android/app/music/common/activity/PermissionGuideActivity;)Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/PermissionManager;->requestPermissions()V

    .line 76
    :cond_0
    return-void
.end method
