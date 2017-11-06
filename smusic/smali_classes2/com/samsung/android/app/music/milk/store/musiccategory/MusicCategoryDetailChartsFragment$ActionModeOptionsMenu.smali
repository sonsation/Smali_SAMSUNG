.class Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.source "MusicCategoryDetailChartsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)V
    .locals 0

    .prologue
    .line 410
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$1;

    .prologue
    .line 410
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 414
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

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
    .line 419
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;->access$300(Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsFragment;)Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/musiccategory/MusicCategoryDetailChartsAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendSAAddEvent()V
    .locals 0

    .prologue
    .line 430
    return-void
.end method

.method public sendSADownloadEvent()V
    .locals 0

    .prologue
    .line 435
    return-void
.end method

.method public sendSAPlayEvent()V
    .locals 0

    .prologue
    .line 425
    return-void
.end method
