.class Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3$1;
.super Ljava/lang/Object;
.source "PlayerDetailsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;->onTransitionEnd(Landroid/transition/Transition;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3$1;->this$1:Lcom/samsung/android/app/music/common/details/PlayerDetailsFragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/app/music/common/view/PlayerTransitionController;->setTransitioning(Z)V

    .line 264
    return-void
.end method
