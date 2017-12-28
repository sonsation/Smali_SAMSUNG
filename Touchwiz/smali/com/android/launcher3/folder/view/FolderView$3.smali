.class Lcom/android/launcher3/folder/view/FolderView$3;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/launcher3/folder/view/FolderView;

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 338
    if-eqz p2, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$100(Lcom/android/launcher3/folder/view/FolderView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$102(Lcom/android/launcher3/folder/view/FolderView;Z)Z

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 342
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 343
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setSelection(I)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->startEditingFolderName()V

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 347
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$000(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->isEditingName()Z

    move-result v0

    if-nez v0, :cond_2

    .line 348
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v1}, Lcom/android/launcher3/folder/view/FolderView;->access$300(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/folder/view/FolderView;->setSuppressFolderNameFocus(J)V

    .line 349
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderNameEditText;->clearFocus()V

    goto :goto_0

    .line 352
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$400(Lcom/android/launcher3/folder/view/FolderView;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 353
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 354
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$3;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$200(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderNameEditText;

    move-result-object v0

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/view/FolderNameEditText;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method
