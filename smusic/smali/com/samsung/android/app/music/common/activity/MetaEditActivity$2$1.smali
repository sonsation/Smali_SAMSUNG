.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->onCompletedEditing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a009f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$800(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$900(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;->this$1:Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;

    iget-object v0, v0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$1000(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->play()V

    .line 144
    :cond_0
    return-void
.end method
