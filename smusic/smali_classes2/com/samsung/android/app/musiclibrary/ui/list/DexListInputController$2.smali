.class Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;
.super Ljava/lang/Object;
.source "DexListInputController.java"

# interfaces
.implements Landroid/view/View$OnGenericMotionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenericMotion(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 129
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getUserVisibleHint()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    .line 130
    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getListType()I

    move-result v5

    const v6, 0x100012

    if-ne v5, v6, :cond_1

    :cond_0
    move v3, v4

    .line 162
    :goto_0
    return v3

    .line 134
    :cond_1
    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_3

    :cond_2
    move v3, v4

    .line 136
    goto :goto_0

    .line 139
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    .line 140
    .local v2, "recyclerView":Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChoiceMode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_4
    move v3, v4

    .line 162
    goto :goto_0

    .line 144
    :pswitch_0
    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v5}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$300(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 145
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getLastCheckedItemPosition()I

    move-result v0

    .line 146
    .local v0, "checkedItemPosition":I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_5

    .line 147
    const/4 v0, 0x0

    .line 149
    :cond_5
    invoke-virtual {v2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 150
    .local v1, "position":I
    if-ge v0, v1, :cond_6

    .line 151
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v4

    .line 152
    invoke-virtual {v4, v0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemChecked(IIZ)V

    goto :goto_0

    .line 154
    :cond_6
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController$2;->this$0:Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;->access$100(Lcom/samsung/android/app/musiclibrary/ui/list/DexListInputController;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    .line 155
    invoke-virtual {v4, v5, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->setItemChecked(IIZ)V

    goto :goto_0

    .line 140
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
