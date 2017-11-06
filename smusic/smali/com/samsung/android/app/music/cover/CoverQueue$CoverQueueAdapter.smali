.class final Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "CoverQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/cover/CoverQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CoverQueueAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMMON_VIEW_TYPE:I = 0x1


# instance fields
.field private final mLayoutResId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private mPlayingPosition:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;

    .prologue
    .line 199
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 200
    invoke-static {p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;->access$200(Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->mLayoutResId:I

    .line 201
    return-void
.end method


# virtual methods
.method protected onBindViewHolderNowPlayingView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Landroid/database/Cursor;)V
    .locals 2
    .param p1, "holder"    # Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .param p2, "c"    # Landroid/database/Cursor;

    .prologue
    .line 216
    invoke-interface {p2}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    .line 217
    .local v0, "position":I
    iget v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->mPlayingPosition:I

    if-ne v1, v0, :cond_0

    .line 218
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 219
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->updatePlayingTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    .line 224
    :goto_0
    return-void

    .line 221
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->updateEqualizerView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;Z)V

    .line 222
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->updateNormalTextView(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 209
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;

    iget-object v1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->mContext:Landroid/content/Context;

    .line 210
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->mLayoutResId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method setNowPlayingPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 204
    iput p1, p0, Lcom/samsung/android/app/music/cover/CoverQueue$CoverQueueAdapter;->mPlayingPosition:I

    .line 205
    return-void
.end method
