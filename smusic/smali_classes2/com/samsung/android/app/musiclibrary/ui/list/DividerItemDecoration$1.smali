.class Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;
.super Ljava/lang/Object;
.source "DividerItemDecoration.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$OnGetCheckBoxOffsetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->onListActionModeStarted(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    .prologue
    .line 284
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(I)V
    .locals 1
    .param p1, "checkBoxOffset"    # I

    .prologue
    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->access$602(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;I)I

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$1;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;->access$700(Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->invalidateItemDecorations()V

    .line 289
    return-void
.end method
