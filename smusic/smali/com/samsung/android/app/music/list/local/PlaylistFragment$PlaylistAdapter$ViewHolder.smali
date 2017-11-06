.class public Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
.source "PlaylistFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;IZ)V
    .locals 4
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .param p4, "isSmallScreenUiEnabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter",
            "<*>;",
            "Landroid/view/View;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 1138
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;I)V

    .line 1139
    if-eqz p4, :cond_1

    .line 1140
    const/4 v0, -0x3

    if-eq p3, v0, :cond_0

    int-to-long v0, p3

    const-wide/16 v2, -0xd

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    int-to-long v0, p3

    const-wide/16 v2, -0xe

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    int-to-long v0, p3

    const-wide/16 v2, -0xc

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    int-to-long v0, p3

    const-wide/16 v2, -0xb

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1145
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->initOnClickListener(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/view/View;)V

    .line 1148
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1149
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1151
    :cond_2
    return-void
.end method
