.class public Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;
.super Ljava/lang/Object;
.source "ParallaxHolderImpl.java"

# interfaces
.implements Lcom/samsung/android/app/music/list/parallax/ParallaxHolder;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mLinearLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

.field private final mParallaxHolderView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Landroid/view/View;)V
    .locals 1
    .param p1, "recyclerView"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "parallaxHolderView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p2, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mParallaxHolderView:Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLayoutManager()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mLinearLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    .line 21
    return-void
.end method


# virtual methods
.method public getPositionY()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mParallaxHolderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mLinearLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scrollTo(I)V
    .locals 3
    .param p1, "positionY"    # I

    .prologue
    .line 25
    sget-object v0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scrollTo() | posY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mLinearLayoutManager:Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 27
    return-void
.end method

.method public setHeight(I)V
    .locals 2
    .param p1, "height"    # I

    .prologue
    .line 41
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mParallaxHolderView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 42
    .local v0, "Params":Landroid/view/ViewGroup$LayoutParams;
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 43
    iget-object v1, p0, Lcom/samsung/android/app/music/list/parallax/ParallaxHolderImpl;->mParallaxHolderView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
.end method
