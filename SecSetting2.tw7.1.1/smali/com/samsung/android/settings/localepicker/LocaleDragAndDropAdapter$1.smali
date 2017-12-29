.class Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;
.super Ljava/lang/Object;
.source "LocaleDragAndDropAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

.field final synthetic val$dragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;Lcom/samsung/android/settings/localepicker/LocaleDragCell;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;
    .param p2, "val$dragCell"    # Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iput-object p2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "compoundButton"    # Landroid/widget/CompoundButton;
    .param p2, "checked"    # Z

    .prologue
    .line 158
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    iget-object v2, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->val$dragCell:Lcom/samsung/android/settings/localepicker/LocaleDragCell;

    invoke-virtual {v2}, Lcom/samsung/android/settings/localepicker/LocaleDragCell;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->getIndexByTitle(Ljava/lang/String;)I

    move-result v0

    .line 159
    .local v0, "index":I
    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get0(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-virtual {v1, v0, p2}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->setChecked(IZ)V

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$1;->this$0:Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;

    invoke-static {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;->-get1(Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter;)Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/settings/localepicker/LocaleDragAndDropAdapter$OnCheckChangeListener;->onCheckedChange()V

    .line 157
    :cond_1
    return-void
.end method
