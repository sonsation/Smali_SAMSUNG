.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$OnItemLayoutChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewItemLayoutChangedListenerWrapper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V
    .locals 0

    .prologue
    .line 1302
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.HeaderViewItemLayoutChangedListenerWrapper;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$1;

    .prologue
    .line 1302
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.HeaderViewItemLayoutChangedListenerWrapper;"
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIIII)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "oldLeft"    # I
    .param p8, "oldTop"    # I
    .param p9, "oldRight"    # I
    .param p10, "oldBottom"    # I

    .prologue
    .line 1308
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<TT;>.HeaderViewItemLayoutChangedListenerWrapper;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$2500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq p10, p6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mAdapter:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    .line 1309
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getHeaderViewCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1310
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;)V

    .line 1311
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1322
    :cond_0
    return-void
.end method
