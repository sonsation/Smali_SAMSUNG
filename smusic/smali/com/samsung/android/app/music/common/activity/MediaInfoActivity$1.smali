.class Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;
.super Landroid/database/ContentObserver;
.source "MediaInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    .line 124
    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->access$000(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/details/MediaInfoUtils;->getMetaData(Landroid/content/Context;Landroid/net/Uri;)Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;

    move-result-object v0

    .line 125
    .local v0, "data":Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;
    if-nez v0, :cond_0

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SMUSIC-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Meta info changed and original file does not exist!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->finishActivity(I)V

    .line 128
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->finish()V

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 131
    iget-object v1, p0, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$1;->this$0:Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;->access$200(Lcom/samsung/android/app/music/common/activity/MediaInfoActivity;)Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/app/music/common/activity/MediaInfoActivity$MetaUiUpdatable;->updateMetaUi(Lcom/samsung/android/app/music/common/details/MediaInfoUtils$MetaData;)V

    .line 133
    :cond_1
    return-void
.end method
