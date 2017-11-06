.class public Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "AlbumDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field private final mDiscNum:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;Landroid/view/View;I)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I

    .prologue
    .line 317
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 318
    const/16 v0, -0x3e8

    if-ne p3, v0, :cond_1

    .line 319
    const v0, 0x7f120247

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->mDiscNum:Landroid/widget/TextView;

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->mDiscNum:Landroid/widget/TextView;

    .line 323
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->textView2:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;->access$100(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static synthetic access$200(Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;

    .prologue
    .line 312
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/AlbumDetailFragment$AlbumDetailAdapter$ViewHolder;->mDiscNum:Landroid/widget/TextView;

    return-object v0
.end method
