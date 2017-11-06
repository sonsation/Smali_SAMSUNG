.class Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;
.super Ljava/lang/Object;
.source "DefaultOptionGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$playerControllable:Lcom/samsung/android/app/music/common/player/PlayerControllable;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;Lcom/samsung/android/app/music/common/player/PlayerControllable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;->this$0:Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;->val$playerControllable:Lcom/samsung/android/app/music/common/player/PlayerControllable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/common/player/fullplayer/option/DefaultOptionGroup$1;->val$playerControllable:Lcom/samsung/android/app/music/common/player/PlayerControllable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/common/player/PlayerControllable;->toggleQueue()V

    .line 64
    const/16 v0, 0x80

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    .line 66
    return-void
.end method
