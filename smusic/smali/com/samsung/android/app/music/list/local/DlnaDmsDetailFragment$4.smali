.class Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;
.super Ljava/lang/Object;
.source "DlnaDmsDetailFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/view/View;IJ)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    const/4 v2, 0x1

    .line 361
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 365
    :goto_0
    return v2

    .line 364
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment$4;->this$0:Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->getAdapter()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/music/list/local/DefaultTrackAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3, p4}, Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;->access$800(Lcom/samsung/android/app/music/list/local/DlnaDmsDetailFragment;Ljava/lang/String;J)V

    goto :goto_0
.end method
