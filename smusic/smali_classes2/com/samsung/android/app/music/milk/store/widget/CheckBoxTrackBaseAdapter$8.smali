.class Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;
.super Ljava/lang/Object;
.source "CheckBoxTrackBaseAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->initHeaderViewHolder(Lcom/samsung/android/app/music/milk/store/topchart/TrackListHeaderViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    .prologue
    .line 380
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;"
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 383
    .local p0, "this":Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;, "Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;"
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter$8;->this$0:Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/CheckBoxTrackBaseAdapter;->dispatchPlayAllClicked()V

    .line 384
    return-void
.end method
