.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 893
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 897
    iget-object v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$1;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .line 898
    invoke-static {v7}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$800(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    .line 899
    .local v6, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    const v7, 0x7f1201b1

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 900
    .local v4, "noItemLayout":Landroid/view/View;
    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getHeight()I

    move-result v7

    .line 901
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->computeVerticalScrollOffset()I

    move-result v9

    add-int/2addr v8, v9

    sub-int v0, v7, v8

    .line 902
    .local v0, "height":I
    sget-boolean v7, Lcom/samsung/android/app/music/common/info/features/AppFeatures;->SUPPORT_MILK:Z

    if-eqz v7, :cond_0

    .line 903
    const v7, 0x7f1201b3

    .line 904
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 905
    .local v1, "informationText":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 906
    .local v2, "informationTextHeight":I
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v7

    add-int v3, v7, v2

    .line 907
    .local v3, "minHeight":I
    if-le v3, v0, :cond_2

    .line 908
    const/4 v0, -0x2

    .line 913
    .end local v1    # "informationText":Landroid/view/View;
    .end local v2    # "informationTextHeight":I
    .end local v3    # "minHeight":I
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 914
    .local v5, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v7, :cond_1

    .line 915
    iput v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 916
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 918
    :cond_1
    return-void

    .line 910
    .end local v5    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v1    # "informationText":Landroid/view/View;
    .restart local v2    # "informationTextHeight":I
    .restart local v3    # "minHeight":I
    :cond_2
    sub-int/2addr v0, v2

    goto :goto_0
.end method
