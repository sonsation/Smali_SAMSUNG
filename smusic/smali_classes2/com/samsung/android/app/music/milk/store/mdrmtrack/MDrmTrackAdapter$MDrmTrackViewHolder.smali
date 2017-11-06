.class public Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter$MDrmTrackViewHolder;
.super Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;
.source "MDrmTrackAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/mdrmtrack/MDrmTrackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MDrmTrackViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V
    .locals 0
    .param p2, "itemView"    # Landroid/view/View;
    .param p3, "viewType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter",
            "<*>;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, "adapter":Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;, "Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter<*>;"
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$ViewHolder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter;Landroid/view/View;I)V

    .line 58
    return-void
.end method
