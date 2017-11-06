.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListItemViewEnabler"
.end annotation


# instance fields
.field private final mItemView:Landroid/view/View;

.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1176
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;->mItemView:Landroid/view/View;

    .line 1177
    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->access$1600(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;->setViewEnabled(Z)V

    .line 1178
    return-void

    .line 1177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;->mItemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 1183
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ListItemViewEnabler;->mItemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1184
    return-void
.end method
