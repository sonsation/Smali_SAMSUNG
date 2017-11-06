.class Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;
.super Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;
.source "TopChartFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionModeOptionsMenu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)V
    .locals 0

    .prologue
    .line 481
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment$AbsActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/AbsMilkActionModeSupportFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$1;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)V

    return-void
.end method


# virtual methods
.method public getBottomBarResId()I
    .locals 1

    .prologue
    .line 485
    const/4 v0, 0x0

    return v0
.end method

.method public getFragment()Landroid/app/Fragment;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

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
    .line 490
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment$ActionModeOptionsMenu;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;->access$100(Lcom/samsung/android/app/music/milk/store/topchart/TopChartFragment;)Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TopChartTrackAdapter;->getSelectedTracks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sendSAAddEvent()V
    .locals 0

    .prologue
    .line 501
    return-void
.end method

.method public sendSADownloadEvent()V
    .locals 0

    .prologue
    .line 506
    return-void
.end method

.method public sendSAPlayEvent()V
    .locals 0

    .prologue
    .line 496
    return-void
.end method
