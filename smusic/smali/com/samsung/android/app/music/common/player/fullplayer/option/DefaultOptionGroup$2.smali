.class Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Lcom/samsung/android/app/music/common/player/FavoriteController$FavoriteMaximumReachedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/music/common/player/PlayerControllable;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Lcom/samsung/android/app/musiclibrary/ui/SimpleFragmentLifeCycleAdapter;Lcom/samsung/android/app/musiclibrary/ui/player/logger/IPlayerLogger;Lcom/samsung/android/app/music/common/player/volume/IVolumeControl$OnPanelVisibilityChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public maximumReached()V
    .locals 3

    .prologue
    .line 75
    const-string v0, "1"

    const/16 v1, 0x3e8

    const/4 v2, 0x0

    .line 76
    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->getInstance(Ljava/lang/String;IZ)Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$2;->val$activity:Landroid/app/Activity;

    .line 78
    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "FileDeleteErrorDialog"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/dialog/FavoriteMaximumReachedDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return-void
.end method
