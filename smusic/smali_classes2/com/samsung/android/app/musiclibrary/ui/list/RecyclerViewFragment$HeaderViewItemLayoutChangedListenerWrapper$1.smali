.class Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;
.super Ljava/lang/Object;
.source "RecyclerViewFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->onLayoutChange(Landroid/view/View;IIIIIIIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;

    .prologue
    .line 1311
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;"
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 1316
    .local p0, "this":Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;, "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;"
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->mRecyclerView:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1317
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper$1;->this$1:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$HeaderViewItemLayoutChangedListenerWrapper;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->access$2500(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/IndexViewV2;->updateIndexView()V

    .line 1319
    return-void
.end method
