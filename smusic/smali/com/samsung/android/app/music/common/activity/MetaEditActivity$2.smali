.class Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;
.super Ljava/lang/Object;
.source "MetaEditActivity.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/metaedit/MediaMetaWriter$OnCompletedEditingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MetaEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletedEditing()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->access$700(Lcom/samsung/android/app/music/common/activity/MetaEditActivity;)V

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->finish()V

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;->this$0:Lcom/samsung/android/app/music/common/activity/MetaEditActivity;

    new-instance v1, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2$1;-><init>(Lcom/samsung/android/app/music/common/activity/MetaEditActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/common/activity/MetaEditActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void
.end method
