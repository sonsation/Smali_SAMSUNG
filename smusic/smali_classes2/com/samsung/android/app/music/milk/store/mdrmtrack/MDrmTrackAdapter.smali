.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;
.source "MDrmTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;,
        Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
        "<",
        "Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MDrmTrackAdapter"


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 18
    .local p1, "builder":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder<*>;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;)V

    .line 19
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;I)V
    .locals 0
    .param p1, "holder"    # Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 34
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V

    .line 35
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->onBindViewHolder(Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I
    .param p3, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    if-nez p3, :cond_0

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    const/4 v2, 0x0

    .line 27
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 29
    :cond_0
    new-instance v0, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    invoke-direct {v0, p0, p3, p2}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    return-object v0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;ILandroid/view/View;)Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;

    move-result-object v0

    return-object v0
.end method
