.class Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;
.super Landroid/content/BroadcastReceiver;
.source "CoverQueueFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final EXTRA_COMMAND_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_REMOTE_VIEW:Ljava/lang/String; = "remote"

.field private static final EXTRA_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final SVIEW_TYPE_VOLUME:Ljava/lang/String; = "volume"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    const/4 v8, 0x0

    .line 309
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewCover-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVolumeAlertReceiver() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string v5, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 312
    const-string/jumbo v5, "type"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "type":Ljava/lang/String;
    const-string/jumbo v5, "volume"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 316
    const-string/jumbo v5, "visibility"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 317
    .local v4, "visibility":Z
    const-string/jumbo v5, "remote"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/widget/RemoteViews;

    .line 318
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    const/4 v3, 0x0

    .line 319
    .local v3, "v":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 320
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$500(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v6}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$600(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 322
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$600(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 323
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$700(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueue;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 324
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$700(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueue;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/samsung/android/app/music/cover/CoverQueue;->setEnabled(Z)V

    .line 326
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$800(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 327
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$800(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    :cond_2
    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 330
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$600(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/widget/FrameLayout;

    move-result-object v5

    invoke-virtual {v5, v3, v9, v9}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 332
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$700(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueue;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 333
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$700(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Lcom/samsung/android/app/music/cover/CoverQueue;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/samsung/android/app/music/cover/CoverQueue;->setEnabled(Z)V

    .line 335
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$800(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 336
    iget-object v5, p0, Lcom/samsung/android/app/music/cover/CoverQueueFragment$3;->this$0:Lcom/samsung/android/app/music/cover/CoverQueueFragment;

    invoke-static {v5}, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->access$800(Lcom/samsung/android/app/music/cover/CoverQueueFragment;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 339
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ViewCover-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/app/music/cover/CoverQueueFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mVolumeAlertReceiver() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - visibility: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rv: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "v":Landroid/view/View;
    .end local v4    # "visibility":Z
    :cond_5
    return-void
.end method
