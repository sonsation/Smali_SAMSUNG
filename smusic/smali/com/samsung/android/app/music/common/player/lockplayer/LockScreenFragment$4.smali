.class Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;
.super Ljava/lang/Object;
.source "LockScreenFragment.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;


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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    .prologue
    .line 328
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;->this$0:Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maximumReached()V
    .locals 3

    .prologue
    .line 331
    const-string v0, "1"

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 332
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/lockplayer/LockScreenFragment$4;->val$activity:Landroid/app/Activity;

    .line 334
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FileDeleteErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 336
    return-void
.end method
