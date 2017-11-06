.class Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;
.super Ljava/lang/Object;
.source "NowPlayingFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonBackgroundShowableImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V
    .locals 0

    .prologue
    .line 446
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/NowPlayingFragment$1;

    .prologue
    .line 446
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;-><init>(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)V

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 449
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1300(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 450
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    .line 451
    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1300(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f120005

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 452
    .local v0, "addTrackShowButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 453
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/NowPlayingFragment$ButtonBackgroundShowableImpl;->this$0:Lcom/samsung/android/app/music/list/local/NowPlayingFragment;

    invoke-static {v2}, Lcom/samsung/android/app/music/list/local/NowPlayingFragment;->access$1300(Lcom/samsung/android/app/music/list/local/NowPlayingFragment;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f12052a

    .line 454
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 456
    :cond_0
    if-eqz p1, :cond_2

    const/4 v1, 0x0

    .line 457
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 459
    .end local v0    # "addTrackShowButton":Landroid/view/View;
    .end local v1    # "visibility":I
    :cond_1
    return-void

    .line 456
    .restart local v0    # "addTrackShowButton":Landroid/view/View;
    :cond_2
    const/16 v1, 0x8

    goto :goto_0
.end method
