.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ButtonBackgroundShowable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->initViewCreatePlaylist(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 1089
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;->val$itemView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showButtonBackground(Z)V
    .locals 4
    .param p1, "show"    # Z

    .prologue
    .line 1092
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;->val$itemView:Landroid/view/View;

    const v3, 0x7f12013d

    .line 1093
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1094
    .local v0, "createPlaylistShowButton":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1095
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$4;->val$itemView:Landroid/view/View;

    const v3, 0x7f12013c

    .line 1096
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1098
    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1099
    .local v1, "visibility":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    return-void

    .line 1098
    .end local v1    # "visibility":I
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method
