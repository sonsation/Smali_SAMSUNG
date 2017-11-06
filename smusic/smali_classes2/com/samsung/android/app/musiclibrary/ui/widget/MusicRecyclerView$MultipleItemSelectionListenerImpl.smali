.class Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;
.super Ljava/lang/Object;
.source "MusicRecyclerView.java"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$OnMultipleItemSelectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleItemSelectionListenerImpl"
.end annotation


# instance fields
.field private final selectedItemPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1

    .prologue
    .line 784
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 786
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .param p2, "x1"    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$1;

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;IJ)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 790
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_0

    .line 792
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 798
    :cond_0
    :goto_0
    return-void

    .line 795
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onMultipleSelectStart()V
    .locals 2

    .prologue
    .line 802
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onMultipleSelectStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 804
    return-void
.end method

.method public onMultipleSelectStop()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 808
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$600()Ljava/lang/String;

    move-result-object v1

    const-string v4, "onMultipleSelectStop()"

    invoke-static {v1, v4}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 828
    :cond_0
    :goto_0
    return-void

    .line 812
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    .line 813
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 814
    .local v0, "position":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    .line 816
    .end local v0    # "position":I
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 817
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_5

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    .line 818
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$700(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_0

    .line 819
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->selectedItemPositions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 820
    .restart local v0    # "position":I
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isItemChecked(I)Z

    move-result v1

    if-nez v1, :cond_6

    move v1, v2

    :goto_4
    invoke-virtual {v5, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemChecked(IZ)V

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    .line 822
    .end local v0    # "position":I
    :cond_7
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->access$500(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)Landroid/view/ActionMode;

    move-result-object v1

    if-nez v1, :cond_8

    .line 823
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->startActionMode()Landroid/view/ActionMode;

    goto/16 :goto_0

    .line 825
    :cond_8
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView$MultipleItemSelectionListenerImpl;->this$0:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/support/sesl/component/widget/SeslRecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_0
.end method
