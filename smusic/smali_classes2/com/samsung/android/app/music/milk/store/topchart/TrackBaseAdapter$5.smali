.class Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;
.super Ljava/lang/Object;
.source "TrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->initHeaderViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    .prologue
    .line 262
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 265
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;, "Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter$5;->this$0:Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/topchart/TrackBaseAdapter;->dispatchPlayAllClicked()V

    .line 266
    return-void
.end method
