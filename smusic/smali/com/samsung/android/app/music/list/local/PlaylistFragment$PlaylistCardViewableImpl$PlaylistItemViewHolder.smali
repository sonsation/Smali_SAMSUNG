.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistItemViewHolder"
.end annotation


# instance fields
.field public noItemMainText:Landroid/widget/TextView;

.field public noItemViewStubId:I

.field final synthetic this$1:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;)V
    .locals 0

    .prologue
    .line 1223
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->this$1:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/cardview/ItemViewHolder;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;
    .param p2, "x1"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$1;

    .prologue
    .line 1223
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl;)V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 1231
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->thumbnailClickArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1232
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->playIcon:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1233
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 1236
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1237
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewableImpl$PlaylistItemViewHolder;->noItemThumbnailClickArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1239
    :cond_1
    return-void
.end method
