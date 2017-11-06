.class Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;
.super Landroid/os/Handler;
.source "FavoriteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/common/player/FavoriteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkerThreadHandler"
.end annotation


# static fields
.field private static final TOGGLE_FAVORITE_BUTTON:I = 0x1

.field private static final UPDATE_FAVORITE_STATUS:I


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/FavoriteController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 262
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    .line 277
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 279
    :pswitch_0
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$100(Lcom/samsung/android/app/music/common/player/FavoriteController;)Z

    move-result v6

    .line 280
    .local v6, "isFavorite":Z
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$200(Lcom/samsung/android/app/music/common/player/FavoriteController;)J

    move-result-wide v4

    .line 281
    .local v4, "audioId":J
    if-nez v6, :cond_3

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->isFavoriteMaximumReached(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 282
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$400(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$400(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;->maximumReached()V

    .line 308
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$900(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$900(Lcom/samsung/android/app/music/common/player/FavoriteController;)Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;

    move-result-object v1

    invoke-interface {v1, v6}, Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerQueueLogger;->favorite(Z)V

    .line 311
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$200(Lcom/samsung/android/app/music/common/player/FavoriteController;)J

    move-result-wide v2

    cmp-long v1, v4, v2

    if-nez v1, :cond_0

    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1, v6}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$102(Lcom/samsung/android/app/music/common/player/FavoriteController;Z)Z

    goto :goto_0

    .line 286
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$500(Lcom/samsung/android/app/music/common/player/FavoriteController;)I

    move-result v1

    const v2, 0x80002

    if-ne v1, v2, :cond_4

    .line 287
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 288
    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$600(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$600(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$700(Lcom/samsung/android/app/music/common/player/FavoriteController;Landroid/content/Context;Landroid/app/FragmentManager;JZ)Z

    move-result v6

    .line 297
    :goto_2
    if-eqz v6, :cond_5

    .line 298
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "ATFA"

    const-string v3, "Add Favorite(icon)"

    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const v0, 0x7f0a00f2

    .line 304
    .local v0, "accessibilityString":I
    :goto_3
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$800(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$800(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    .line 305
    invoke-virtual {v2, v3, v0, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 304
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 291
    .end local v0    # "accessibilityString":I
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    .line 292
    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4, v5, v6, v7}, Lcom/samsung/android/app/music/common/util/task/SmartFavoriteTask;->toggleFavorites(Landroid/content/Context;JZZ)Z

    move-result v6

    goto :goto_2

    .line 302
    :cond_5
    const v0, 0x7f0a0100

    .restart local v0    # "accessibilityString":I
    goto :goto_3

    .line 317
    .end local v0    # "accessibilityString":I
    .end local v4    # "audioId":J
    .end local v6    # "isFavorite":Z
    :pswitch_1
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    iget-object v2, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v2}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$300(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v3}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$200(Lcom/samsung/android/app/music/common/player/FavoriteController;)J

    move-result-wide v8

    invoke-static {v2, v8, v9}, Lcom/samsung/android/app/music/common/util/FavoriteTracksUtils;->isFavorite(Landroid/content/Context;J)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$102(Lcom/samsung/android/app/music/common/player/FavoriteController;Z)Z

    .line 318
    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->this$0:Lcom/samsung/android/app/music/common/player/FavoriteController;

    invoke-static {v1}, Lcom/samsung/android/app/music/common/player/FavoriteController;->access$800(Lcom/samsung/android/app/music/common/player/FavoriteController;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 319
    invoke-virtual {p0, v7, v2}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 318
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method toggleFavoriteButton()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 266
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->removeMessages(I)V

    .line 267
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->sendEmptyMessage(I)Z

    .line 268
    return-void
.end method

.method updateFavoriteStatus(Z)V
    .locals 2
    .param p1, "animation"    # Z

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->removeMessages(I)V

    .line 272
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/common/player/FavoriteController$WorkerThreadHandler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    return-void
.end method
