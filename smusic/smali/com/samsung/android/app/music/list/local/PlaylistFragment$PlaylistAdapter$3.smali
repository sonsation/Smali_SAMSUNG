.class Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


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

.field final synthetic val$createPlaylistTextView:Landroid/view/View;

.field final synthetic val$itemView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .prologue
    .line 1079
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->this$0:Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->val$itemView:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->val$createPlaylistTextView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setViewEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->val$itemView:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/common/util/UiUtils;->setViewEnabled(Landroid/view/View;Z)V

    .line 1083
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->val$itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1084
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$3;->val$createPlaylistTextView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1085
    return-void
.end method
