.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->initOptionView(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 343
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "THIC"

    const-string v3, "LockScreen"

    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$5;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .line 345
    invoke-static {v0}, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;->access$200(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;)Lcom/samsung/android/app/music/common/player/FavoriteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/common/player/FavoriteController;->isFavorite()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
