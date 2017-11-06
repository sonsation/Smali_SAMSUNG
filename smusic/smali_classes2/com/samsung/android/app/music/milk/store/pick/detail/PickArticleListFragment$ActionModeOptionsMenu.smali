.class Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.source "PickArticleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    return-object v0
.end method

.method public getSelectedTracks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/music/common/model/SimpleTrack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;->access$100(Lcom/samsung/android/app/music/milk/store/pick/detail/PickArticleListFragment;)Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/pick/detail/PickDetailArticleAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendSAAddEvent()V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public sendSADownloadEvent()V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public sendSAPlayEvent()V
    .locals 0

    .prologue
    .line 191
    return-void
.end method
